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
    public partial class WebForm19 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                string userId = Session["ID"].ToString();
                LabelEmail.Text = userId;
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
                //    LabelGender.Text = dr["Doct_Gender"].ToString();
                //    lblConsultFee.Text = dr["Doct_ConsultFee"].ToString();
                //    LabelMobile.Text = dr["Doct_Mobile"].ToString();
                //    LabelQualification.Text = dr["Doct_Qulification"].ToString();
                //    LabelFullName.Text = dr["Doct_Name"].ToString();
                //    LabelExperience.Text = dr["Doct_Exp"].ToString();
                //    LabelEmail.Text = userId;
                //    LabelDepartment.Text = dr["Dept_Name"].ToString();
                //}
                //else
                //{
                //   Response.Write("<script language='javascript'> alert('Record not Found'); </ script > ");
                //}
                //con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'> alert('" + ex.Message + "'); </script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Docter/DocUpdateProfile.aspx");
        }
    }
}