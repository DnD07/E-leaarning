using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Learn__E
{
    public partial class Courseread : System.Web.UI.Page
    {
        private readonly string cn = ConfigurationManager.ConnectionStrings["ConnectionString (Learn- E)"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection sqlConn =  new SqlConnection(cn);
                sqlConn.Open();
                SqlCommand cmd = new SqlCommand("Select * from course where course_id = @cid", sqlConn);
                cmd.Parameters.AddWithValue("@cid", Request.QueryString["id"].ToString());
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);           
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if(ds.Tables[0].Rows.Count > 0)
                {
                    cdetail.DataSource = ds;
                    cdetail.DataBind();
                } 

            }
        }

        protected void btnenroll_Click(object sender, EventArgs e)
        {
            ///

            SqlConnection sqlConn = new SqlConnection(cn);
            sqlConn.Open();
            SqlCommand cmd1 = new SqlCommand("Select Id from registration where email=@email", sqlConn);
            cmd1.Parameters.AddWithValue("@email", Request.Cookies["pro"].Value);
            int uid = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            cmd1.Dispose();
            
            SqlCommand cmd = new SqlCommand("Insert into Enrolled(userid, enrolldate, status, course) values (@userid, @enrolldate, @status, @course)", sqlConn);
            cmd.Parameters.AddWithValue("@userid", uid);
            cmd.Parameters.AddWithValue("@enrolldate", DateTime.Now);
            cmd.Parameters.AddWithValue("@status", 0);
            int cid = Convert.ToInt32(Request.QueryString["id"].ToString());
            cmd.Parameters.AddWithValue("@course", cid);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect("~/MyCourse.aspx", true);

        }

       
    }
}