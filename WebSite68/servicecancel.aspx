<%@ Page Title="" Language="C#" MasterPageFile="~/owner.master" AutoEventWireup="true" CodeFile="servicecancel.aspx.cs" Inherits="servicecancelt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 246px;
        }
        .style3
        {
            font-size: x-large;
        font-weight: 700;
    }
        .style4
        {
            width: 201px;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 246px;
            height: 23px;
        }
        .style7
        {
            width: 201px;
            height: 23px;
        }
    .style8
    {
        font-size: xx-large;
        color: #FF0000;
    }
        .style9
        {
            height: 59px;
        }
        .style10
        {
            width: 246px;
            height: 59px;
            font-weight: bold;
            font-size: large;
        }
        .style11
        {
            width: 201px;
            height: 59px;
        }
        .style12
        {
            width: 246px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="o" runat="server" style="color: #CC0000; background-color: #66FF66">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style8">CANCEL SERVICE</span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10" style="text-transform: capitalize">
                BUS NAME</td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="servicecancel" DataTextField="service_id" 
                    DataValueField="service_id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="servicecancel" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                    
                    SelectCommand="SELECT * FROM [services] WHERE (([bus_name] = @bus_name) AND ([service_id] = @service_id))">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="user" Name="bus_name" SessionField="user" 
                            Type="String" />
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" 
                            Name="service_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style12" style="text-transform: capitalize">
                SERVICE_ID</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="servicecancel" DataTextField="service_id" 
                    DataValueField="service_id">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style7">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                    Text="CANCEL" Width="89px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

