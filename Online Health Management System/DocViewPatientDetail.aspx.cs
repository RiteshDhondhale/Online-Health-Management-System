using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class WebForm22 : System.Web.UI.Page
    {
        string uId = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["P_Id"] != null)
            {
                uId = Request.QueryString["P_Id"].ToString();
            }
        }

        protected void addPrescription_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "Update Register set DocPrescription = ('" + txtAddPris.Text + "') where ID = " + uId + ";";
                //int i = ado.ExecuteNonQueryByQuery(query);
                //if (i > 0)
                //{
                //    lblMessage.ForeColor = System.Drawing.Color.Green;
                //    lblMessage.Text = "Prescription Successfully Added";
                //    txtAddPris.Text = "";
                //}
                //else
                //{
                //    {
                //        lblMessage.ForeColor = System.Drawing.Color.Red;
                //        lblMessage.Text = "Prescription Not Added Successfully";
                //    // txtAddPris.Text = "";
                //    }
                //}
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = ex.Message;
            }
        }

    }
}