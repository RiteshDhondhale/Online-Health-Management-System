using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        //UserADO ado = new UserADO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string query = "INSERT INTO Doctor_Details(Doct_Name, Doct_Dept_Id, Doct_Email, Doct_Gender, Doct_Mobile) VALUES('" + TextBoxFullName.Text + "','" + DropDownListDept.SelectedValue + "','" + TextBoxEmail.Text + "','" + RadioButtonGender.SelectedItem.ToString() + "','" + TextBoxMobile.Text + "')";
            //int i = ado.ExecuteNonQueryByQuery(query);
            //if (i > 0)
            //{
            //    Label2.Text = "Doctor's Detail Successfully Added";
            //    TextBoxFullName.Text = string.Empty;
            //    TextBoxQualification.Text = string.Empty;
            //    TextBoxExperience.Text = string.Empty;
            //    TextBoxEmail.Text = string.Empty;
            //    TextBoxMobile.Text = string.Empty;
            //    TextBoxConsultFee.Text = string.Empty;

            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBoxFullName.Text = string.Empty;
            TextBoxQualification.Text = string.Empty;
            TextBoxExperience.Text = string.Empty;
            TextBoxEmail.Text = string.Empty;
            TextBoxMobile.Text = string.Empty;
            TextBoxConsultFee.Text = string.Empty;
        }

    }
}