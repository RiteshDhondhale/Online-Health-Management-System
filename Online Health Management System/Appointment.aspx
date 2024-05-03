<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Online_Health_Management_System.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <img src="" style="width:748px; height: 304px" />
    &nbsp;&nbsp;&nbsp;
    <br />
    <table>
        <tr>
            <td>New Patient Register</td>
            <td><asp:Button ID="Button1" runat="server" Text="Click here" OnClick="Button1_Click"></asp:Button>
            </td>
            <td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="" OnClick="Button1_Click" Height="80px" Width="150px" /></td>
        </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td>Doctor Appointment</td>
            <td><asp:Button ID="Button2" runat="server" Text="Click here" OnClick="Button2_Click"></asp:Button></td>
            <td><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="" OnClick="Button2_Click" Height="80px" Width="150px" /></td>
        </tr>
        <tr>
            <td colspan="3"></td>
        </tr>
        <tr>
            <td>Lab Appointment</td>
            <td><asp:Button ID="Button3" runat="server" Text="Click here" OnClick="Button3_Click"></asp:Button></td>
            <td><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="" OnClick="Button3_Click" Height="80px" Width="150px" /></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
