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
    public partial class WebForm7 : System.Web.UI.Page
    {
        //UserADO ado = new UserADO();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    string[] day = { "Monday", "Tuesday", "Wednesday", "Thrusday", "Friday", "Saturday" };
            //    for(int i = 0; i < day.Length; i++)
            //    {
            //        DropDownListDays.Items.Add(day[i].ToString());
            //        if (Session["ID"] != null)
            //        {
            //            TextBoxPatientRegNo.Text = Convert.ToString(Session["ID"]);
            //            TextBoxPatientRegNo.ReadOnly = true;
            //        }
            //        else
            //        {
            //            Response.Redirect("Login.aspx");
            //        }
            //    }
            //}
        }
        
        protected void TextBoxPatientRegNo_TextChanged(object sender, EventArgs e)
        {
        //    if (!CheckRegNo())
        //    {
        //        Label1.ForeColor = System.Drawing.Color.Red;
        //        Label1.Text = "Registration Id is not valid for Diagnostic Test. Please register yourself first";
        //    }
        //    else
        //    {
        //        Label1.ForeColor = System.Drawing.Color.Green;
        //        Label1.Text = "You have valid Registration Id for Diagnostic Test.";
        //    }
        }

        //public bool CheckRegNo()
        //{
        //    bool flag = false;
        //    string query = "SELECT * FROM Register WHERE ID= " + TextBoxPatientRegNo.Text + "";
        //    //SqlDataReader dr = AppDomain.GetDataReaderByQuery(query);
        //    //dr.Read();
        //    //if (dr.Read())
        //    //{
        //    //    flag = true;
        //    //}
        //    return flag;
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
        //    if(DropDownListPaymentMode.SelectedValue == "1")
        //    {
        //        //TextBoxPatientFee.Text = "1000";
        //        if(CheckRegNo())
        //        {
        //            string query = "INSERT INTO AppointmentReg VALUES('" + TextBoxPatientRegNo.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + TextBoxDate.Text + "','" + DropDownListTime.SelectedItem.ToString() + "','" + DropDownListDays.SelectedItem.ToString() + "','" + DropDownListPaymentMode.SelectedValue.ToString() + "','" + TextBoxPatientFee.Text + "','Pending','L')";
        //            Session["AppointmentReg"] = query;
        //            Session["patebtId"] = TextBoxPatientRegNo.Text;
        //            Response.Redirect("PaymentGetway.aspx?amt=" + TextBoxPatientFee.Text);
        //        }
        //    }
        //    else
        //    {
        //        string query = "INSERT INTO AppointmentReg values(" + TextBoxPatientRegNo.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + TextBoxDate.Text + "','" + DropDownListTime.SelectedItem.ToString() + "','" + DropDownListDays.SelectedItem.ToString() + "','" + DropDownListPaymentMode.SelectedItem.ToString() + "','" + TextBoxPatientFee.Text + "','Pending')";
        //        //int i = ado.ExecuteNonQueryByQuery(query);
        //        //if(i>0)
        //        //{
        //        //    Response.Redirect("Appointment.aspx");
        //        //}
        //    }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        //    TextBoxPatientRegNo.Text = string.Empty;
        //    TextBoxDate.Text = string.Empty;
        }

        protected void DropDownListPaymentMode_SelectedIndexChanged(object sender, EventArgs e)
        {
        //    if(DropDownListPaymentMode.SelectedValue == "1") 
        //    {
        //        TextBoxPatientFee.Text = "2000";
        //    }
        //    else
        //    {
        //        TextBoxPatientFee.Text = "0";
        //    }
        }
    }
}