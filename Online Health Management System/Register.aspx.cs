using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Health_Management_System
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        //UserADO ado = new UserADO();
        SqlConnection con = new SqlConnection("Data Source=MONSTER\\SQLEXPRESS;Initial Catalog=OHMS_DB;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random r = new Random();
                int regno = r.Next(12451248);
                TextBoxPatientRegNo.Text = regno.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                //If Connection is closed, then it will open the connection
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query = "INSERT INTO [dbo].[Register] ([Fullname], [EmailId], [Gender], [Address}, [MobileNo], [PatientillnessDetails]) VALUES ('@Fullname', '@EmailId', '@Gender', '@Address', '@MobileNo', '@PatientillnessDetails')";

                SqlCommand cmd = new SqlCommand(query, con);

                //Placeholders
                cmd.Parameters.AddWithValue("@Fullname", TextBoxFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailId", TextBoxEmailAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Address", TextBoxAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@MobileNo", TextBoxMobile.Text.Trim());
                cmd.Parameters.AddWithValue("@PatientillnessDetails", TextBoxDetails.Text.Trim());
                //cmd.Parameters.AddWithValue("@RegistrationDate", DateTime.Now);

                //Execute the query
                cmd.ExecuteNonQuery();
                //Close the Connection
                con.Close();

                Response.Write("<script>alert('Patient Details are registered</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            //Testing
            //Response.Write("<script>alert('Testing');</script>");


            //Previous code
            //string query = "INSERT INTO Register(ID,[Fullname], [EmailId], [Gender], [Address], [MobileNo], [PatientillnessDetails]) VALUES('" + TextBoxPatientRegNo.Text + "','" + TextBoxFullName.Text + "','" + TextBoxEmailAddress.Text + "','" + RadioButtonList1.SelectedItem.ToString() + "','" + TextBoxAddress.Text + "','" + TextBoxMobile.Text + "','" + TextBoxDetails.Text + "')";
            //Session["TextBoxPatientRegNo"] = TextBoxPatientRegNo.Text;
            //int i = con.ExecuteNonQueryByQuery(query);

            //if (i > 0)
            //{
            //    Response.Redirect("RegSuccess.aspx?pid=" + TextBoxPatientRegNo.Text);
            //    Label2.Text = "Registration Successfully Added";
            //    TextBoxFullName.Text = string.Empty;
            //    TextBoxEmailAddress.Text = string.Empty;
            //    TextBoxMobile.Text = string.Empty;
            //}
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBoxFullName.Text = string.Empty;
            TextBoxEmailAddress.Text = string.Empty;
            TextBoxAddress.Text = string.Empty;
            TextBoxMobile.Text = string.Empty;
            TextBoxDetails.Text = string.Empty;
        }
    }
}