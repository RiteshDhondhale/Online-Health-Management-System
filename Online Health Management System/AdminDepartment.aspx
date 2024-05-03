<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminDepartment.aspx.cs" Inherits="Online_Health_Management_System.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        AutoGenerateColumns="False" DataKeyNames="Dept_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Dept_Id" HeaderText="Dept_Id" InsertVisible="False" ReadOnly="True" SortExpression="Dept_Id" />
            <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
            <asp:BoundField DataField="Dept_Desc" HeaderText="Dept_Desc" SortExpression="Dept_Desc" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [Dept_Id] = @Dept_Id" InsertCommand="INSERT INTO [Department] ([Dept_Name], [Dept_Desc]) VALUES (@Dept_Name, @Dept_Desc)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [Dept_Name] = @Dept_Name, [Dept_Desc] = @Dept_Desc WHERE [Dept_Id] = @Dept_Id">
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
</asp:Content>
