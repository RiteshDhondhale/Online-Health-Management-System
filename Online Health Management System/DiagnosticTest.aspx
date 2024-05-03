<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DiagnosticTest.aspx.cs" Inherits="Online_Health_Management_System.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1{
            width: 100%;
            border-style: solid;
            border-width: 3px;
            background-color: #C0C0C0;
        }
        .style2{
            font-size: medium;
            color: #FF9900;
        }
        .style3{
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr class="style2">
            <td class="style3">Patient Registraion No</td>
            <td class="style3">
                <%--<asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                       <%-- <asp:TextBox ID="TextBoxPatientRegNo" runat="server" Height="45px" Width="300px" OnTextChanged="TextBoxPatientRegNo_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPatientRegNo" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Select Department</td>
            <td class="style3">
                <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DropDownList" runat="server" Height="45px" Width="300px" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Please select one of these" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" SelectCommand="SELECT [Dept_Id], [Dept_Name] FROM [Department]"></asp:SqlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Select Lab</td>
            <td class="style3">
                <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="45px" Width="300px" DataSourceId="SqlDataSource2" DataTextField="LabName" DataValueField="D_id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Please select one of these" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnactionString %>" SelectCommand="SELECT * FROM [DiagnosticLab]"></asp:SqlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Date</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxDate" runat="server" Height="45px" Width="300px" ReadOnly="false"></asp:TextBox>
                <%--<cc1:CalendarExtender ID="TextBoxDate_CalendarExtender" runat="server" Enabled="true" TargetControlID="TextBoxDate">
                </cc1:CalendarExtender>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxDate" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Time</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownListTime" runat="server" Height="45px" Width="300px">
                    <asp:ListItem>9:15 AM</asp:ListItem>
                    <asp:ListItem>9:30 AM</asp:ListItem>
                    <asp:ListItem>9:45 AM</asp:ListItem>
                    <asp:ListItem>10:00 AM</asp:ListItem>
                    <asp:ListItem>10:15 AM</asp:ListItem>
                    <asp:ListItem>10:30 AM</asp:ListItem>
                    <asp:ListItem>10:45 AM</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownListTime" ErrorMessage="*Please select one of these" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Day</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownListDays" runat="server" Height="45px" Width="300px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListDays" ErrorMessage="*Please select one of these" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Payment Mode</td>
            <td class="style3">
                <%--<asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DropDownListPaymentMode" runat="server" Height="45px" Width="300px" AutoPostBack="true" OnSelectedIndexChanged="DropDownListPaymentMode_SelectedIndexChanged">
                            <asp:ListItem Value="1">Online Payment</asp:ListItem>
                            <asp:ListItem Value="1">Offline Payment</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownListPaymentMode" ErrorMessage="*Please select one of these" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">Patient Fee</td>
            <td class="style3">
                <%--<asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="TextBoxPatientFee" runat="server" Height="45px" Text="1000" ReadOnly="false" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPatientFee" ErrorMessage="*Please don't leave blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                    </ContentTemplate>
                </asp:UpdatePanel>--%>
            </td>
        </tr>
        <tr class="style2">
            <td class="style3">&nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="true" Font-Size="Medium" ForeColor="#FF3300" Height="45px" Text="Submit" Width="300px" OnClick="Button1_Click" ValidationGroup="GenerateMessage" />
                <asp:Label ID="label2" runat="server"  ForeColor="#FF3300"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Height="49px" OnClick="Button2_Click" Width="163px" BackColor="#FF9900" ForeColor="#FF3300" Font-Bold="true" Font-Size="Large"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
