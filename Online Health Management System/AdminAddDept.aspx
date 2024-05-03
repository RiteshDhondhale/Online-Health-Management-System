<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminAddDept.aspx.cs" Inherits="Online_Health_Management_System.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 3px;
            background-color: #C0C0C0;
        }
        .style2
        {
            font-size: medium;
            color: #FF9900;
        }
        .style3
        {
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Welcome to Department Page</h1>
    </div>
    <div>
        <table class="style1">
            <tr class="style2">
                <td class="style3">Department Name</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxDeptName" runat="server" Height="37px" Width="293px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxDeptName" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">Department Description</td>
                <td class="style3">
                    <asp:TextBox ID="TextBoxDeptDesc" runat="server" Height="108px" TextMode="MultiLine" Width="513px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxDeptDesc" ErrorMessage="*Please Don't Leave Blank" ForeColor="Red" ValidationGroup="GenerateMessage"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3">&nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" Text="Submit" Width="163px" onclick="Button1_Click" ValidationGroup="GenerateMessage" />
                    <asp:Button ID="Button2" runat="server" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" Height="49px" OnClick="Button2_Click" Text="Cancel" Width="163px" />
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr class="style2">
                <td class="style3" colspan="2">
                    <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Dept_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Dept_Id" HeaderText="Dept_Id" InsertVisible="False" ReadOnly="True" SortExpression="Dept_Id" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                            <asp:BoundField DataField="Dept_Desc" HeaderText="Dept_Desc" SortExpression="Dept_Desc" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>--%>                    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [Dept_Id] = @Dept_Id" InsertCommand="INSERT INTO [Department] ([Dept_Name], [Dept_Desc]) VALUES (@Dept_Name, @Dept_Desc)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [Dept_Name] = @Dept_Name, [Dept_Desc] = @Dept_Desc WHERE [Dept_Id] = @Dept_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Dept_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Dept_Name" Type="String" />
                            <asp:Parameter Name="Dept_Desc" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Dept_Name" Type="String" />
                            <asp:Parameter Name="Dept_Desc" Type="String" />
                            <asp:Parameter Name="Dept_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>--%>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
