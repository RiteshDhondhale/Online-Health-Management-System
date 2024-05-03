using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        //UserADO ado = new UserADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["amt"] != null)
            {
                TextBoxDebitAmount.Text = Request.QueryString["amt"].ToString();
                TextBoxCreditAmount.Text = Request.QueryString["amt"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO paymentinfo(cardno,cardname,expirydate,amount,username) VALUES('" + TextBoxDebitCardNo.Text + "','" + TextBoxDebitCardName.Text + "','" + TextBoxDebitCardExpiry.Text + "','" + TextBoxDebitAmount.Text + "','" + Session["patebtId"].ToString() + "')";
            //int i = ado.ExecuteNonQueryByQuery(query);
            //if (i > 0)
            //{
            //    string query1 = Session["AppointmentReg"].ToString();
            //    ado.ExecuteNonQueryByQuery(query1);
            //    Response.Redirect("Home.aspx");
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO paymentinfo(cardno,cardname,expirydate,amount,username) VALUES('" + TextBoxCreditCardNo.Text + "','" + TextBoxCreditCardOnName.Text + "','" + TextBoxCreditCardExpiryDate.Text + "','" + TextBoxCreditAmount.Text + "','" + Session["patebtId"].ToString() + "')";
            //int i = ado.ExecuteNonQueryByQuery(query);
            //if (i > 0)
            //{
            //    string query1 = Session["AppointmentReg"].ToString();
            //    ado.ExecuteNonQueryByQuery(query1);
            //    Response.Redirect("Home.aspx");
            //}
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "1")
            {
                PanelCreditCard.Visible = true;
                PanelDebitCard.Visible = false;
            }
            else
            {
                PanelCreditCard.Visible = false;
                PanelDebitCard.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBoxDebitCardNo.Text = string.Empty;
            TextBoxDebitCardName.Text = string.Empty;
            TextBoxDebitPincode.Text = string.Empty;
            TextBoxDebitCardExpiry.Text = string.Empty;
            Response.Redirect("AppointmentReg.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBoxCreditCardNo.Text = string.Empty;
            TextBoxCreditCardOnName.Text = string.Empty;
            TextBoxCreditCardCvvno.Text = string.Empty;
            TextBoxCreditCardExpiryDate.Text = string.Empty;
            TextBoxSecurityNO.Text = string.Empty;
            Response.Redirect("AppointmentReg.aspx");
        }
    }
}