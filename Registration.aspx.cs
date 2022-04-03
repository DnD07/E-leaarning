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
    public partial class registration : System.Web.UI.Page

    {
        private readonly string cn = ConfigurationManager.ConnectionStrings["ConnectionString (Learn- E)"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                clear();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(cn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO registration (Name, Username, Email, Password, role, contact)VALUES(@Name, @Username, @Email, @Password, @role, @contact)", con);
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Username", txtuser.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                cmd.Parameters.AddWithValue("@role", drprole.SelectedValue);
                cmd.Parameters.AddWithValue("@contact", txtcon.Text);
                cmd.ExecuteNonQuery();
                clear();
            }
            //Response.Redirect("~/Home.aspx", true);
            Response.Write("Register successfully.");
            
        }
        void clear()
        {
            txtname.Text = txtuser.Text = txtpass.Text = drprole.Text = txtcon.Text = "";
        }
    }
    }
    
