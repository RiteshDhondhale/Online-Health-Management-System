<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StatusReport.aspx.cs" Inherits="Online_Health_Management_System.StatusReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .style2 {
            font-size: large;
        }
        .auto-style1 {
            width: 80%;
            background-color: #FF00FF;
        }
        .auto-style2 {
            color: #0000CC;
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: large;
            color: #0000CC;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>&nbsp;Welcome to Status Report</h1>
    <table class="style1" align="center">
        <tr>
            <td align="center">
                <span class="style2">Patient No:</span><asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="241px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button Visible="false" ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" Text="Search" Width="163px" OnClick="Button1_Click" ValidationGroup="GenerateMessage" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" align="center" DataKeyNames="ID" DataSourceID="SqlDataSource1" Style="text-align: center">
                    <EditItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%--<%# Eval("ID") %>--%>' />
                        <br />
                        Fullname:
                        <asp:TextBox ID="FullnameTextBox" runat="server" Text='<%# Bind("Fullname") %>' />
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
                        PatientillnessDetails:
                        <asp:TextBox ID="PatientillnessDetailsTextBox" runat="server" Text='<%# Bind("PatientillnessDetails") %>' />
                        <br />
                        RegistrationDate:
                        <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>' />
                        <br />
                        Status:
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        <br />
                        Doctor's Prescription:
                        <asp:TextBox ID="DocPrescriptionTextBox" runat="server" Text='<%# Bind("DocPrescription") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ID:
                        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                        <br />
                        Fullname:
                        <asp:TextBox ID="FullnameTextBox" runat="server" Text='<%# Bind("Fullname") %>' />
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
                        PatientillnessDetails:
                        <asp:TextBox ID="PatientillnessDetailsTextBox" runat="server" Text='<%# Bind("PatientillnessDetails") %>' />
                        <br />
                        RegistrationDate:
                        <asp:TextBox ID="RegistrationDateTextBox" runat="server" Text='<%# Bind("RegistrationDate") %>' />
                        <br />
                        Status:
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        <br />
                        Doctor's Prescription:
                        <asp:TextBox ID="DocPrescriptionTextBox" runat="server" Text='<%# Bind("DocPrescription") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="center" class="auto-style1">
                            <tr>
                                <td class="auto-style2" colspan="2">Status</td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="auto-style4">Patient ID:</td>
                                <td class="auto-style4">
                                    <asp:Label ID="IDLabel" runat="server" Text='<%--<%# Eval("ID") %>--%>' />
                                </td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="autostyle4">Fullname:</td>
                                <td class="auto-style4">
                                    <asp:Label ID="FullnameLabel" runat="server" Text='<%# Bind("Fullname") %>' />
                                </td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="auto-style4">EmailId: </td>
                                <td class="auto-style4">
                                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Bind("EmailId") %>' />
                                </td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="autostyle4">Gender:</td>
                                <td class="auto-style4">
                                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                                </td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="autostyle4">Address:</td>
                                <td class="auto-style4">
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                                </td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="auto-style4">MobileNo: </td>
                                <td class="auto-style4">
                                    <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Bind("MobileNo") %>' />
                                </td>
                            </tr>
                            <tr class="auto-style3">
                                <td class="autostyle4">PatientIllnessDetails:&nbsp;&nbsp; </td>
                                <td class="auto-style4">
                                    <asp:Label ID="PatientillnessDetailsLabel" runat="server" Text='<%# Bind("PatientillnessDetails") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
 </ItemTemplate>
                </asp:FormView>
                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" SelectCommand="SELECT * FROM [Register] WHERE ([ID] = @ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="ID" PropertyName="Text" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>--%>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
