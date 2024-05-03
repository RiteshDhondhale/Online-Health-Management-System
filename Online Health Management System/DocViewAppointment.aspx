<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DocViewAppointment.aspx.cs" Inherits="Online_Health_Management_System.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:GridView runat="server" AllowPaging="True"
        AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:TemplateField HeaderText="PatientId" SortExpression="PatientId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PatientId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="Label1" runat="server" Text='<%# Bind("PatientId") %>' PostBackUrl='<%# Bind("PatientId","docViewPatientDetail.aspx?P_Id={0}") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
            <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
            <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="IllnessDetail" HeaderText="IllnessDetail" SortExpression="IllnessDetail" />
        </Columns>
    </asp:GridView>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT a.P_Id AS PatientId, a.Date AS AppointmentDate, a.Time AS AppointmentTime, r.Fullname AS PatientName, r.EmailId, r.Gender, r.Address, r.PatientillnessDetails AS IllnessDetail FROM AppointmentReg AS a INNER JOIN Register AS r ON r.ID = a.P_Id WHERE (a.Date &gt; GETDATE()) ORDER BY AppointmentDate"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT a.P_Id AS PatientId, a.Date AS AppointmentDate, a.Time AS AppointmentTime, r.Fullname AS PatientName, r.EmailId, r.Gender, r.Address, r.PatientillnessDetails AS IllnessDetail FROM AppointmentReg AS a INNER JOIN Register AS r ON r.ID = a.P_Id WHERE (a.Date &gt; GETDATE()) ORDER BY AppointmentDate"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="Select P_Id as PatientId, a.Date as AppointmentDate ,a.Time as AppointmentTime ,r.FullName as PatientName , r.EmailId , r.Gender, r.Address, r.PatientillnessDetails as IllnessDetail from AppointmentReg a inner join Register r on r.ID=a.P_Id where a.date&gt;GetDATE() order by a.Date"></asp:SqlDataSource>--%>
</asp:Content>
