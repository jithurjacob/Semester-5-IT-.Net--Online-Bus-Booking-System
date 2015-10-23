<%@ Page Title="" Language="C#" MasterPageFile="~/owner.master" AutoEventWireup="true" CodeFile="buscancel.aspx.cs" Inherits="buscancel" %>

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
        width: 168px;
    }
    .style5
    {
        width: 195px;
    }
    .style6
    {
        width: 232px;
    }
    .style7
    {
        font-size: x-large;
        color: #FF0000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="p" runat="server">
    <table class="style1">
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style2" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong><span class="style7">BUS CANCELLATION</span></strong></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            Bus Name</td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="deletebus" 
                DataTextField="bus_name" DataValueField="bus_name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="deletebus" runat="server" 
                ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                SelectCommand="SELECT * FROM [busdet] WHERE ([owner_username] = @owner_username)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="user" Name="owner_username" 
                        SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" Height="29px" Text="CANCEL" 
                Width="90px" onclick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</form>
</asp:Content>

