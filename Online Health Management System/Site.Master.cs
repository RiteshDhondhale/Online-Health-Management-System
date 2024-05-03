using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"]!=null)
            {
                //linkButton1.Text = "Logout";
            }
            else
            {
                //linkButton1.Text = "Login";
            }
        }
        protected void linkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
        protected void linkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}