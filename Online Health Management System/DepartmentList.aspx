<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentList.aspx.cs" Inherits="Online_Health_Management_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="SqlDataSource1" DataKeyNames="Dept_Id" AllowPaging="true" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="960px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Dept_Id" HeaderText="Dept_Id" SortExpression="Dept_Id" InsertVisible="false" ReadOnly="true" />
            <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
            <asp:BoundField DataField="Dept_Desc" HeaderText="Dept_Desc" SortExpression="Dept_Desc" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="true" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="true" ForeColor="Wheat" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="true" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" SelectCommand="SELECT * FROM [Department]" DeleteCommand="DELETE FROM [Department] WHERE [Dept_Id]=@Dept_Id" InsertCommand="INSERT INTO [Department] ([Dept_Name], [Dept_Desc]) VALUES (@Dept_Name, @Dept_Desc)" UpdateCommand="UPDATE [Department] SET [Dept_Name] = @Dept_Name, [Dept_Desc] = @Dept_Desc WHERE [Dept_Id] = @Dept_Id" OnSelecting="SqlDataSource1_Selecting">

    </asp:SqlDataSource>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
