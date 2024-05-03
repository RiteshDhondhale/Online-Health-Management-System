<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminDoctorList.aspx.cs" Inherits="Online_Health_Management_System.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True"
        AutoGenerateColumns="False" DataKeyNames="Doct_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Doct_Id" HeaderText="Doct_Id" InsertVisible="False" ReadOnly="True" SortExpression="Doct_Id" />
            <asp:BoundField DataField="Doct_Name" HeaderText="Doct_Name" SortExpression="Doct_Name" />
            <asp:BoundField DataField="Doct_Email" HeaderText="Doct_Email" SortExpression="Doct_Email" />
            <asp:BoundField DataField="Doct_Gender" HeaderText="Doct_Gender" SortExpression="Doct_Gender" />
            <asp:BoundField DataField="Doct_Mobile" HeaderText="Doct_Mobile" SortExpression="Doct_Mobile" />
            <asp:BoundField DataField="Doct_Dept_Id" HeaderText="Doct_Dept_Id" SortExpression="Doct_Dept_Id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" DeleteCommand="DELETE FROM [Doctor_Details] WHERE [Doct_Id] = @Doct_Id" InsertCommand="INSERT INTO [Doctor_Details] ([Doct_Name], [Doct_Dept_Id], [Doct_Email], [Doct_Gender], [Doct_Mobile]) VALUES (@Doct_Name, @Doct_Dept_Id, , @Doct_Exp, @Doct_Email, @Doct_Gender, @Doct_Mobile, @Doct_ConsultFee)" SelectCommand="SELECT * FROM [Doctor_Details]" UpdateCommand="UPDATE [Doctor_Details] SET [Doct_Name] = @Doct_Name, [Doct_Dept_Id] = @Doct_Dept_Id, [Doct_Qulification] = @Doct_Qulification, [Doct_Exp] = @Doct_Exp, [Doct_Email] = @Doct_Email, [Doct_Gender] = @Doct_Gender, [Doct_Mobile] = @Doct_Mobile, [Doct_ConsultFee] = @Doct_ConsultFee WHERE [Doct_Id] = @Doct_Id">
        <DeleteParameters>
            <asp:Parameter Name="Doct_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Doct_Name" Type="String" />
            <asp:Parameter Name="Doct_Dept_Id" Type="Int32" />
            <asp:Parameter Name="Doct_Qulification" Type="String" />
            <asp:Parameter Name="Doct_Exp" Type="String" />
            <asp:Parameter Name="Doct_Email" Type="String" />
            <asp:Parameter Name="Doct_Gender" Type="String" />
            <asp:Parameter Name="Doct_Mobile" Type="Int64" />
            <asp:Parameter Name="Doct_ConsultFee" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doct_Name" Type="String" />
            <asp:Parameter Name="Doct_Dept_Id" Type="Int32" />
            <asp:Parameter Name="Doct_Qulification" Type="String" />
            <asp:Parameter Name="Doct_Exp" Type="String" />
            <asp:Parameter Name="Doct_Email" Type="String" />
            <asp:Parameter Name="Doct_Gender" Type="String" />
            <asp:Parameter Name="Doct_Mobile" Type="Int64" />
            <asp:Parameter Name="Doct_ConsultFee" Type="Int32" />
            <asp:Parameter Name="Doct_Id" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
