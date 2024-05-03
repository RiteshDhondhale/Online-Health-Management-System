<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DocUpdateProfile.aspx.cs" Inherits="Online_Health_Management_System.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 100%;
            border-style: solid;
            border-width: 3px;
            background-color: #C0C0C0;
            align: centre;
        }

        .style2 {
            font-size: medium;
            color: #FF9900;
        }

        .style3 {
            font-size: large;
            color: #000000;
        }

        .auto-style1 {
            font-size: large;
            color: #000000;
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <div>
            <h1>Update Profile</h1>
        </div>
        <div align="center">
            <center>
                <table class="style1" align="center">
                    <tr class="style2">
                        <td class="style3">Full Name</td>
                        <td class="style3">
                            <asp:TextBox ID="TextBoxFullName" runat="server" Height="37px" Width="293px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxFullName" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Select Department</td>
                        <td class="style3">
                            <%--<asp:DropDownList ID="DropDownListDept" runat="server" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_Id" Height="16px" Width="291px">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListDept" ErrorMessage="*Please Select One of These" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>--%>
                            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" SelectCommand="SELECT [Dept_Name], [Dept_Id] FROM [Department]"></asp:SqlDataSource>--%>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Qualification</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBoxQualification" runat="server" Height="37px" Width="293px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Experience</td>
                        <td class="style3">
                            <asp:TextBox ID="TextBoxExperience" runat="server" Height="37px" Width="293px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="auto-style1">Email Address</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBoxEmail" runat="server" Height="37px" Width="293px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="style3">Gender</td>
                        <td class="style3">
                            <asp:RadioButtonList ID="RadioButtonGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonGender" ErrorMessage="*Please Select One of These" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="style3">Mobile</td>
                        <td class="style3">
                            <asp:TextBox ID="TextBoxMobile" runat="server" Height="37px" Width="293px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Consultation Fee</td>
                        <td class="style3">
                            <asp:TextBox ID="TextBoxConsultFee" runat="server" Height="37px" Width="293px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="style3">&nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="btnUpdate" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" Text="Submit" Width="163px" OnClick="btnUpdate_Click" ValidationGroup="GenerateMessage" />
                            <asp:Button ID="Button2" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" OnClick="Button2_Click" Text="Cancel" Width="163px" />
                            <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </center>
</asp:Content>
