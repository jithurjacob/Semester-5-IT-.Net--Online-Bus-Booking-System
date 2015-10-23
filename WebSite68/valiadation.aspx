<%@ Page Title="" Language="C#" MasterPageFile="~/admn_master.master" AutoEventWireup="true" CodeFile="valiadation.aspx.cs" Inherits="valiadation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        Height="221px" Width="763px" onrowdeleting="GridView1_RowDeleting" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" 
    onselectedindexchanging="GridView1_SelectedIndexChanging" CellPadding="4" 
        ForeColor="#333333" GridLines="None" onrowdeleted="GridView1_RowDeleted">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField HeaderText="ACCEPT" SelectText="ACCEPT" 
                ShowSelectButton="True" />
            <asp:CommandField DeleteText="REJECT" HeaderText="REJECT" 
                ShowDeleteButton="True" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
        SelectCommand="SELECT * FROM [users] WHERE ([valid] = @valid)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="valid" QueryStringField="0" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

