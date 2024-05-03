using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        //UserADO ado = new UserADO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO Department VALUES('" + TextBoxDeptName.Text + "','" + TextBoxDeptDesc.Text + "')";
            //int i = ado.ExecuteNonQueryByQuery(query);
            //if (i > 0)
            //{
            //    Label2.Text = "Department Successfully Added";
            //    TextBoxDeptName.Text = string.Empty;
            //    TextBoxDeptDesc.Text = string.Empty;
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBoxDeptName.Text = string.Empty;
            TextBoxDeptDesc.Text = string.Empty;
        }
    }
}