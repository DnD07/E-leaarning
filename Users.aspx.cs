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
    public partial class Users : System.Web.UI.Page
    {
        private readonly string cn = ConfigurationManager.ConnectionStrings["ConnectionString (Learn- E)"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnadduser_Click(object sender, EventArgs e)
        {
           
            using (SqlConnection con = new SqlConnection(cn))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO registration (Name, Username, Email, Password, role, contact)VALUES(@Name, @Username, @Email, @Password, @role, @contact)", con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Username",uname.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@Password", pass.Text);
                cmd.Parameters.AddWithValue("@role", drole.SelectedValue);
                cmd.Parameters.AddWithValue("@contact", contact.Text);
                cmd.ExecuteNonQuery();
                
            }
           
        }
    }
}