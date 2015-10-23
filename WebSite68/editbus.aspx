<%@ Page Title="" Language="C#" MasterPageFile="~/owner.master" AutoEventWireup="true" CodeFile="editbus.aspx.cs" Inherits="editbus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
            width: 214px;
            font-size: medium;
        }
    .style3
    {
            width: 56px;
        }
        .style4
        {
        }
        .style5
        {
            color: #FF0000;
            font-size: x-large;
        font-family: "Malgun Gothic";
    }
        .style6
        {
            width: 179px;
            height: 26px;
        }
        .style7
        {
            width: 214px;
            font-size: medium;
            height: 26px;
        }
        .style8
        {
            width: 56px;
            height: 26px;
        }
        .style9
        {
            height: 26px;
        }
        .style10
        {
            width: 179px;
            height: 36px;
        }
        .style11
        {
            font-size: medium;
            height: 36px;
        }
        .style13
        {
            height: 36px;
        }
    .style14
    {
        color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<table class="style1">
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            </td>
        <td class="style11" colspan="2">
            <h3 style="font-family: 'Microsoft PhagsPa'">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style14">&nbsp;</span><span class="style5">EDIT BUS DETAILS</span></h3>
        </td>
        <td class="style13">
            </td>
    </tr>
    <tr>
        <td class="style4" colspan="4">
            <asp:Image ID="Image1" runat="server" BorderColor="Yellow" BorderStyle="Ridge" 
                Height="220px" ImageUrl="~/5_2.jpg" Width="787px" />
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            SELECT BUS</td>
        <td class="style3">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="editbus_details" DataTextField="bus_name" DataValueField="bsno" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                style="height: 22px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="editbus_details" runat="server" 
                ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                
                SelectCommand="SELECT * FROM [busdet] WHERE ([bus_name] = @bus_name)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="user" Name="bus_name" 
                        SessionField="user" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            BUS NAME</td>
        <td class="style3">
            <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            CHARGE</td>
        <td class="style3">
            <asp:TextBox ID="TextBox2" runat="server" Width="199px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" Display="Dynamic" 
                ErrorMessage="PLEASE ENTER VALID CHARGE" ValidationExpression="\d{2,3}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            SEAT</td>
        <td class="style8">
            <asp:TextBox ID="TextBox3" runat="server" Width="194px"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="INVALID NUMBER OF SEATS" 
                ValidationExpression="\d{1,2}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</form>
</asp:Content>

