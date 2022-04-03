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
    public partial class login : System.Web.UI.Page
    {
        private readonly string cn = ConfigurationManager.ConnectionStrings["ConnectionString (Learn- E)"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click2(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cn);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM registration WHERE email = '" + txtuser.Text + "' and password = '" + txtpass.Text + "'", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                string check = ds.Tables[0].Rows[0]["role"].ToString();
                Session["role"] = check;
                HttpCookie cookie = new HttpCookie("pro");
                Response.Cookies["pro"].Value = txtuser.Text;
                HttpCookie cookiex = new HttpCookie("role");
                Response.Cookies["role"].Value = check;
                HttpCookie cuid = new HttpCookie("uid");
                Response.Cookies["uid"].Value = ds.Tables[0].Rows[0]["Id"].ToString();
                if (check == "Admin")
                {
                    Response.Redirect("~/addashboard.aspx", true);
                }
                else if (check == "Student")
                {
                    Response.Redirect("~/Dashboard.aspx", true);
                }
                else
                {
                    Response.Write("Incorrect Password");
                }

            }
            else
            {
                Response.Write("Incorrect Paswword");
            }


        }

    }
}
