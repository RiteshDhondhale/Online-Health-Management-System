<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Health_Management_System.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 100%;
            border-style: solid;
            border-width: 3px;
            background-color: #C0C0C0;
        }

        .style2 {
            font-size: medium;
            color: #FF9900;
        }

        .style3 {
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>&nbsp;&nbsp;Welcome to Register Page</h1>
    </div>
    <div>
        <table class="style1">
            <tr class="style2">
                <td class="style3">Patient Registration No</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxPatientRegNo" runat="server" Height="37px" Width="293px" Enabled="False" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBoxPatientRegNo" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">Full Name</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxFullName" runat="server" Height="37px" Width="293px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxFullName" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">Email Address</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxEmailAddress" runat="server" Height="37px" Width="293px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxEmailAddress" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">Gender</td>
                <td class="style3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*Please Select One of These" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">Address</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxAddress" runat="server" Height="97px" Width="506px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">Mobile</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxMobile" runat="server" Height="37px" Width="293px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">IllnessDetails</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxDetails" runat="server" Height="108px" TextMode="MultiLine" Width="513px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxDetails" ErrorMessage="*Please Don't Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">&nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" Text="Submit" Width="163px" OnClick="Button1_Click" ValidationGroup="GenerateMessage" />
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" BackColor="#FF9900" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Height="49px" OnClick="Button2_Click" Width="163px"></asp:Button>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
