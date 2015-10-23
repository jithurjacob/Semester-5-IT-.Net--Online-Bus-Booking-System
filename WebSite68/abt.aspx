<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abt.aspx.cs" Inherits="abt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 985px;
            height: 635px;
            background-image: url('Luxuria-Bus-950x633.jpg');
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            font-family: "Monotype Corsiva";
            line-height: 115%;
            font-size: x-large;
            width: 148px;
            height: 205px;
        }
        .style5
        {
            width: 92px;
        }
        .style4
        {
            height: 42px;
            width: 92px;
        }
        .style6
        {
            height: 680px;
        }
        .style7
        {
            color: #FFFF00;
        }
        .style8
        {
            color: #FF0066;
            font-family: PMingLiU;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style6">
                    <h1 style="font-family: 'Times New Roman'">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="style7">&quot;ONLINE BUS TICKETING 
                        SYSTEM&quot;</span></h1>
                    <h1 class="style3" 
                        style="mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA; width: 945px; margin-left: 65px">
                        The bus ticket reservation system is a web based application that allows 
                        visitors check bus ticket availability, buy bus ticket and pay for bus ticket 
                        online. The system is assigned for all the home office users after gaining 
                        access from the administrator.</h1>
                    <h1 style="font-family: 'Monotype Corsiva'">
                        <span class="style2" 
                            style="line-height: 115%; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        T</span><span class="style2" 
                            style="line-height: 115%; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">his 
                        system provides better customer service because of that the company can provide 
                        the easier&nbsp; way of traveling to the customer<span style="mso-spacerun:yes">&nbsp;
                        </span>or passenger</span></h1>
                    <p style="font-family: 'Monotype Corsiva'">
                        &nbsp;</p>
                    <table align="left" class="style3">
                        <tr>
                            <td class="style5">
                                <p>
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/home.aspx" 
                                    style="font-weight: 700; " CssClass="style8">HOME</asp:HyperLink>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <p>
                                    &nbsp;</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <p>
                                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/user_re.aspx" 
                                    style="font-weight: 700" CssClass="style8">USER</asp:HyperLink>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/CNTCT.aspx" 
                                    CssClass="style8">CONTACT US</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
