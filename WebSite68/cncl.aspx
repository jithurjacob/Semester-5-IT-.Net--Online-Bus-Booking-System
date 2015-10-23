<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cncl.aspx.cs" Inherits="cncl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            width: 286px;
            text-align: left;
        }
        .style4
        {
            background-color: #FFFFFF;
        }
        .style5
        {
            width: 298px;
        }
    </style>
</head>
<body style="color: #000099; background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <br />
        <br />
        <table align="center" class="style1">
            <tr>
                <td class="style5" rowspan="5" style="text-align: left">
                    <asp:Image ID="Image1" runat="server" Height="330px" 
                        ImageUrl="~/Luxuria-Bus-950x633.jpg" Width="342px" />
                </td>
                <td colspan="2">
                    <h1 class="style2">
                        CANCELLATION!!!!</h1>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <h2 style="color: #99FF33">
                        &nbsp;</h2>
                    <h2 style="color: #000000; text-align: left;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TICKET NUMBER</h2>
                </td>
                <td>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
                        Text="CANCEL" Width="87px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" style="color: #003300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/USER.aspx" 
                        style="color: #0000FF" CssClass="style4">PREVIOUS</asp:HyperLink>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cncl.aspx" 
                        style="color: #0000FF" CssClass="style4">RESET</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
