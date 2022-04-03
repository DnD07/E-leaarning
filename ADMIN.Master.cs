using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Learn__E
{
    public partial class ADMIN : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.Cookies["role"].Value != null) 
            {
                string role = Request.Cookies["role"].Value;
                if (role != "Admin")
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            //else
            //{
            //    Response.Redirect("~/Home.aspx");

            //}

        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies["pro"].Expires = DateTime.Now.AddDays(-7);
            Request.Cookies["role"].Expires = DateTime.Now.AddDays(-7);
            Request.Cookies["uid"].Expires = DateTime.Now.AddDays(-7);
            Response.Redirect("~/Home.aspx", true);
        }
    }
}