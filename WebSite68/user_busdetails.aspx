<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="user_busdetails.aspx.cs" Inherits="user_busdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
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
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
        SelectCommand="SELECT * FROM [busdet]"></asp:SqlDataSource>
</asp:Content>

