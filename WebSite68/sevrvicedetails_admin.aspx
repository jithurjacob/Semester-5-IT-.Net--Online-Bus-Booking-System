<%@ Page Title="" Language="C#" MasterPageFile="~/admn_master.master" AutoEventWireup="true" CodeFile="sevrvicedetails_admin.aspx.cs" Inherits="sevrvicedetails_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<style>.style100
    {
        margin-top:50px;
        
        }</style>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    Height="148px" Width="710px" CssClass=style100 BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="service_id" HeaderText="service_id" 
            InsertVisible="False" ReadOnly="True" SortExpression="service_id" />
        <asp:BoundField DataField="source" HeaderText="source" 
            SortExpression="source" />
        <asp:BoundField DataField="destination" HeaderText="destination" 
            SortExpression="destination" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" />
        <asp:BoundField DataField="min" HeaderText="min" SortExpression="min" />
        <asp:BoundField DataField="am_pm" HeaderText="am_pm" SortExpression="am_pm" />
        <asp:BoundField DataField="bus_name" HeaderText="bus_name" 
            SortExpression="bus_name" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:busdtls %>" 
    SelectCommand="SELECT * FROM [services]"></asp:SqlDataSource>
</asp:Content>

