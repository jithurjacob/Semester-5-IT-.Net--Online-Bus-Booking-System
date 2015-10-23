<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Cooper Black";
            font-size: xx-large;
            color: #FF0000;
            background-color: #FFFFFF;
        }
        .style2
        {
            width: 100%;
            background-color: #FFFFFF;
        }
        .style17
        {
            background-color: #FFFFFF;
        }
        .style19
        {
            width: 136px;
            height: 23px;
        }
        .style21
        {
            width: 136px;
        }
        .style22
        {
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div class="style1">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME TO ONLINE BUS RESERVTION!!!!</div>
    <table class="style2">
        <tr>
            <td class="style19">
                <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx" 
                    CssClass="style17">HOME</asp:HyperLink>
                <br />
            </td>
            <td class="style22" rowspan="6">
                &nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="410px" 
                    ImageUrl="~/Luxuria-Bus-950x633.jpg" Width="626px" />
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;&nbsp; 
                <br />
&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/abt.aspx" 
                    CssClass="style17">ABOUT US</asp:HyperLink>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/login.aspx" CssClass="style17">LOGIN</asp:HyperLink>
            &nbsp;&nbsp;<br />
&nbsp;</td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/register.aspx" 
                    CssClass="style17">REGISTER</asp:HyperLink>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/user_re.aspx" 
                    CssClass="style17">USER</asp:HyperLink>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;<br />
&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/CNTCT.aspx" 
                    CssClass="style17">CONTACT US</asp:HyperLink>
                <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
