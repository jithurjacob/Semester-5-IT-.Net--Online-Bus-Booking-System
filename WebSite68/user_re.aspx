<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="user_re.aspx.cs" Inherits="user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 303px;
        }
        .style18
        {
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
            color: #FF0066;
        }
    .style1
    {
        height: 442px;
        width: 1338px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style17" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="338px" 
                    ImageUrl="~/U2006_11891.jpg" Width="520px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" CssClass="style18" 
                    NavigateUrl="~/reserv.aspx">BOOKING OF SEATS</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp; 
                &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" CssClass="style18" 
                    NavigateUrl="~/cncl.aspx">CANCELLATION OF TICKET</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" CssClass="style18" 
                    NavigateUrl="~/busdetails.aspx">BUS DETAILS</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

