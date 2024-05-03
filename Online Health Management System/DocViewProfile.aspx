<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DocViewProfile.aspx.cs" Inherits="Online_Health_Management_System.WebForm19" %>
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
            <h1>View Profile</h1>
        </div>
        <div align="center">
            <center>
                <table class="style1" align="center">
                    <tr class="style2">
                        <td class="style3">Full Name</td>
                        <td class="style3">
                            <asp:Label ID="LabelFullName" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Select Department</td>
                        <td class="style3">
                            <asp:Label ID="LabelDepartment" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Qualification</td>
                        <td class="auto-style1">
                            <asp:Label ID="LabelQualification" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Experience</td>
                        <td class="style3">
                            <asp:Label ID="LabelExperience" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="auto-style1">Email Address</td>
                        <td class="auto-style1">
                            <asp:Label ID="LabelEmail" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="style3">Gender</td>
                        <td class="style3">
                            <asp:Label ID="LabelGender" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr class="style2">
                        <td class="style3">Mobile</td>
                        <td class="style3">
                            <asp:Label ID="LabelMobile" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">Consultation Fee</td>
                        <td class="style3">
                            <asp:Label ID="lblConsultFee" runat="server" Height="37px" Width="293px"></asp:Label>
                        </td>
                    </tr>

                    <tr class="style2">
                        <td class="style3">&nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" Text="Update" Width="163px" OnClick="Button1_Click" />
                            <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </center>
</asp:Content>
