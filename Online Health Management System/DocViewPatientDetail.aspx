<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DocViewPatientDetail.aspx.cs" Inherits="Online_Health_Management_System.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <%--<asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <EditItemTemplate>
            PatientId:
            <asp:TextBox ID="PatientIdTextBox" runat="server" Text='<%# Bind("PatientId") %>' />
            <br />
            PatientName:
            <asp:TextBox ID="PatientNameTextBox" runat="server" Text='<%# Bind("PatientName") %>' />
            <br />
            EmailId:
            <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            MobileNo:
            <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
            <br />
            IllnessDetail:
            <asp:TextBox ID="IllnessDetailTextBox" runat="server" Text='<%# Bind("IllnessDetail") %>' />
            <br />
            AppointmentDate:
            <asp:TextBox ID="AppointmentDateTextBox" runat="server" Text='<%# Bind("AppointmentDate") %>' />
            <br />
            AppointmentTime:
            <asp:TextBox ID="AppointmentTimeTextBox" runat="server" Text='<%# Bind("AppointmentTime") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            RegistrationDate:
            <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>' />
            <br />
            Prescription:
            <asp:TextBox ID="PrescriptionTextBox" runat="server" Text='<%# Bind("DocPrescription") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            PatientId:
            <asp:TextBox ID="PatientIdTextBox" runat="server" Text='<%# Bind("PatientId") %>' />
            <br />
            PatientName:
            <asp:TextBox ID="PatientNameTextBox" runat="server" Text='<%# Bind("PatientName") %>' />
            <br />
            EmailId:
            <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
            <br />
            Gender:
            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            MobileNo:
            <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
            <br />
            IllnessDetail:
            <asp:TextBox ID="IllnessDetailTextBox" runat="server" Text='<%# Bind("IllnessDetail") %>' />
            <br />
            AppointmentDate:
            <asp:TextBox ID="AppointmentDateTextBox" runat="server" Text='<%# Bind("AppointmentDate") %>' />
            <br />
            AppointmentTime:
            <asp:TextBox ID="AppointmentTimeTextBox" runat="server" Text='<%# Bind("AppointmentTime") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            RegistrationDate:
            <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>' />
            <br />
            Prescription:
            <asp:TextBox ID="PrescriptionTextBox" runat="server" Text='<%# Bind("DocPrescription") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table border="1" align="center">
                <tr>
                    <td colspan="2" class="auto-style3">Patient Detail</td>
                </tr>
                <tr>
                    <td>PatientId:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("PatientId") %>' /></td>
                </tr>
                <tr>
                    <td>PatientName:</td>
                    <td>
                        <asp:Label ID="PatientNameLabel" runat="server" Text='<%# Bind("PatientName") %>' />
                    </td>
                </tr>
                <tr>
                    <td>EmailId:</td>
                    <td>
                        <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Bind("EmailId") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                </tr>
                <tr>
                    <td>MobileNo:</td>
                    <td>
                        <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Bind("MobileNo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>IllnessDetail:</td>
                    <td>
                        <asp:Label ID="IllnessDetailLabel" runat="server" Text='<%# Bind("IllnessDetail") %>' />
                    </td>
                </tr>
                <tr>
                    <td>AppointmentDate:</td>
                    <td>
                        <asp:Label ID="AppointmentDateLabel" runat="server" Text='<%# Bind("AppointmentDate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>AppointmentTime:</td>
                    <td>
                        <asp:Label ID="AppointmentTimeLabel" runat="server" Text='<%# Bind("AppointmentTime") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                    </td>
                </tr>
                <tr>
                    <td>RegistrationDate: </td>
                    <td>
                        <asp:Label ID="RegistrationDateLabel" runat="server" Text='<%# Bind("RegistrationDate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Prescription: </td>
                    <td>
                        <asp:Label ID="PrescriptionLabel" runat="server" Text='<%# Bind("DocPrescription") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>--%>
    <table align="center">
        <tr>
            <td colspan="2">Add Prescription</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtAddPris" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Add Prescription" OnClick="addPrescription_Click" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label></td>
        </tr>
    </table>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>"
        SelectCommand="SELECT P_Id AS PatientId, r.FullName AS PatientName , r.EmailId , r.Gender, r.Address, r.MobileNo, r.PatientillnessDetails AS IllnessDetail, a.Date AS AppointmentDate ,a.Time AS AppointmentTime, a.Status, LEFT(CONVERT(VARCHAR, r.RegistrationDate, 120), 10) AS RegistrationDate,r.DocPrescription from AppointmentReg a INNER JOIN Register r on r.ID=a.P_Id where a.P_Id=@P_Id">
        <SelectParameters>
            <asp:QueryStringParameter Name="P_Id"
                QueryStringField="P_Id" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    <br />
</asp:Content>
