using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace Learn__E
{
    public partial class CourseMan : System.Web.UI.Page
    {
        private readonly string cn = ConfigurationManager.ConnectionStrings["ConnectionString (Learn- E)"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert INTO course (Course_detail, cost, instructor) values(@Course_detail, @cost, @instructor)", con);
            cmd.Parameters.AddWithValue("@Course_detail", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@cost", Convert.ToInt32(TextBox3.Text.Trim()));
            cmd.Parameters.AddWithValue("@instructor", TextBox4.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
           
            SqlCommand cmd = new SqlCommand("UPDATE course set Course_detail=@Course_detail,cost=@cost,instructor=@instructor where course_id = '" + TextBox1.Text.Trim() + "'", con);

            cmd.Parameters.AddWithValue("@Course_detail", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@cost", Convert.ToInt32(TextBox3.Text.Trim()));
            cmd.Parameters.AddWithValue("@instructor", TextBox4.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

            deleteconfirm.Visible = true;
        }

        protected void btndeleteconfirm_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE from course WHERE course_id='" + TextBox1.Text.Trim() + "'", con);


            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('Course Deleted Successfully');</script>");
            deleteconfirm.Visible = false;
        }

        protected void btnno_Click(object sender, EventArgs e)
        {
            deleteconfirm.Visible=false;
        }
    }
}