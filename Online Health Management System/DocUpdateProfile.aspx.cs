using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                string userId = Session["ID"].ToString();
                TextBoxEmail.Text = userId;
                GetAndSetDetail(userId);
            }
            else
            {
                Session.Abandon();
                //Response.Redirect("../Login.aspx");
            }
        }

        public void GetAndSetDetail(string userId)
        {
            try
            {
                string query = "SELECT * FROM Doctor_Details dd JOIN department d ON dd.Doct_Dept_Id = d.Dept_Id WHERE Doct_Email = '" + userId + "';";
                //SqlCommand cmd = new SqlCommand(query, con);
                //con.Open();
                //SqlDataReader dr = cmd.ExecuteReader();
                //dr.Read();
                //if (dr.HasRows)
                //{
                //    RadioButtonGender.SelectedValue = dr["Doct_Gender"].ToString();
                //    TextBoxConsultFee.Text = dr["Doct_ConsultFee"].ToString();
                //    TextBoxMobile.Text = dr["Doct_Mobile"].ToString();
                //    TextBoxQualification.Text = dr["Doct_Qulification"].ToString();
                //    TextBoxFullName.Text = dr["Doct_Name"].ToString();
                //    TextBoxExperience.Text = dr["Doct_Exp"].ToString();
                //    TextBoxEmail.Text = userId;
                //    DropDownListDept.SelectedValue = dr["Dept_Id"].ToString();
                //}
                //else
                //{
                //    Response.Write("<script language='javascript'> alert('Record not Found'); </ script > ");
                //}
                //con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Docter/DocViewProfile.aspx");
        }
    }
}