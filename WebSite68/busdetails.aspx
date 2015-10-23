<%@ Page Title="" Language="C#" MasterPageFile="~/owner.master" AutoEventWireup="true" CodeFile="busdetails.aspx.cs" Inherits="busdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="m" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="bus_details" AllowPaging="True" AllowSorting="True">
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
    </asp:GridView>
    <asp:SqlDataSource ID="bus_details" runat="server" 
        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
        SelectCommand="SELECT * FROM [busdet]"></asp:SqlDataSource>
        </form>
</asp:Content>

