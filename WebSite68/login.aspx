<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .style2
        {
            height: 39px;
            font-size: xx-large;
        }
        .style3
        {
            height: 69px;
            width: 200px;
        }
        .style4
        {
            height: 67px;
        }
        .style5
        {
            width: 312px;
        }
        .style6
        {
            height: 69px;
            width: 312px;
        }
        .style8
        {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" Height="217px" ImageUrl="~/5.jpg" 
            Width="396px" />
        <br />
        <br />
        <table align="center" class="style1" frame="box">
            <tr>
                <td class="style2" colspan="2">
                    LOGIN HERE</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="White" style="color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    USERNAME</td>
                <td class="style5">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="221px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    PASSWORD</td>
                <td class="style6">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="215px" 
                        TextMode="Password" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" 
                        Height="39px" Width="85px" />
                </td>
            </tr>
            </table>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/home.aspx">PREVIOUS</asp:HyperLink>
    </p>
    <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    </form>
</body>
</html>
