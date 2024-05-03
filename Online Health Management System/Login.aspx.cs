using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(LoginUser.UserName=="admin" && LoginUser.Password == "admin@123")
                {
                    Session["admin"] = LoginUser.UserName;
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    string query = "SELECT * FROM Register WHERE EmailId=" + LoginUser.UserName + " and Id=" + LoginUser.Password + ";";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["ID"] = LoginUser.Password;
                        Response.Redirect("~/Home.aspx");
                    }
                    else
                    {
                        Response.Write("<script language='javasciprt> alert('Wrong UserId or Password'); </script>");
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}