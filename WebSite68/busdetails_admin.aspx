<%@ Page Title="" Language="C#" MasterPageFile="~/admn_master.master" AutoEventWireup="true" CodeFile="busdetails_admin.aspx.cs" Inherits="busdetails_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
    Width="591px" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" 
    Height="274px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="bsno" HeaderText="bsno" InsertVisible="False" 
            ReadOnly="True" SortExpression="bsno" />
        <asp:BoundField DataField="charge" HeaderText="charge" 
            SortExpression="charge" />
        <asp:BoundField DataField="seat" HeaderText="seat" SortExpression="seat" />
        <asp:BoundField DataField="owner_username" HeaderText="owner_username" 
            SortExpression="owner_username" />
        <asp:BoundField DataField="bus_name" HeaderText="bus_name" 
            SortExpression="bus_name" />
    </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:busdtls %>" 
    SelectCommand="SELECT * FROM [busdet]"></asp:SqlDataSource>
</asp:Content>

