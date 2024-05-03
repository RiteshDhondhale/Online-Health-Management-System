<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Appointmentlist.aspx.cs" Inherits="Online_Health_Management_System.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="P_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" SortExpression="P_Id" />
            <asp:BoundField DataField="Doct_ID" HeaderText="Doct_ID" SortExpression="Doct_ID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
            <asp:BoundField DataField="PaymentMOde" HeaderText="PaymentMOde"
                SortExpression="PaymentMOde" />
            <asp:BoundField DataField="PatientFee" HeaderText="PatientFee"
                SortExpression="PatientFee" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
     </asp:GridView>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineAppointmentConnectionString %>" DeleteCommand="DELETE FROM [AppointmentReg] WHERE [P_Id] = @P_Id" InsertCommand="INSERT INTO [AppointmentReg] ([P_Id], [Doct_ID], [Date], [Time], [Day], [PaymentMOde], [PatientFee], [Status]) VALUES (@P_Id, @Doct_ID, @Date, @Time, @Day, @PaymentMOde,  @PatientFee, @Status)" SelectCommand="SELECT * FROM [AppointmentReg]" UpdateCommand="UPDATE [AppointmentReg] SET [Doct_ID] = @Doct_ID, [Date] = @Date, [Time] = @Time, [Day] = @Day, [PaymentMOde] = @PaymentMOde, [PatientFee] = @PatientFee, [Status] = @Status WHERE [P_Id] = @P_Id">
        <DeleteParameters>
            <asp:Parameter Name="P_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="P_Id" Type="Int64" />
            <asp:Parameter Name="Doct_ID" Type="Int64" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Day" Type="String" />
            <asp:Parameter Name="PaymentMOde" Type="String" />
            <asp:Parameter Name="PatientFee" Type="Decimal" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doct_ID" Type="Int64" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Day" Type="String" />
            <asp:Parameter Name="PaymentMOde" Type="String" />
            <asp:Parameter Name="PatientFee" Type="Decimal" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="P_Id" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
