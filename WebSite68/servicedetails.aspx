<%@ Page Title="" Language="C#" MasterPageFile="~/owner.master" AutoEventWireup="true" CodeFile="servicedetails.aspx.cs" Inherits="servicedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
    }
    .style3
    {
        width: 581px;
    }
    .style4
    {
        width: 581px;
        font-size: x-large;
        color: #FF0000;
    }
    .style100
    {
        margin-top:50px;
        
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="m" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="2">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                SERVICE DETAILS</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="service_details" AllowPaging="True" AllowSorting="True" CssClass="style100" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="service_id" HeaderText="service_id" 
            InsertVisible="False" ReadOnly="True" SortExpression="service_id" />
        <asp:BoundField DataField="source" HeaderText="source" 
            SortExpression="source" />
        <asp:BoundField DataField="destination" HeaderText="destination" 
            SortExpression="destination" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" 
            DataFormatString="{0:d}" />
        <asp:BoundField DataField="hour" HeaderText="hour" SortExpression="hour" />
        <asp:BoundField DataField="min" HeaderText="min" SortExpression="min" />
        <asp:BoundField DataField="am_pm" HeaderText="am_pm" SortExpression="am_pm" />
        <asp:BoundField DataField="bus_name" HeaderText="bus_name" 
            SortExpression="bus_name" />
    </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<asp:SqlDataSource ID="service_details" runat="server" 
    ConnectionString="<%$ ConnectionStrings:busdtls %>" 
    SelectCommand="SELECT * FROM [services]"></asp:SqlDataSource>
    </form>
</asp:Content>

