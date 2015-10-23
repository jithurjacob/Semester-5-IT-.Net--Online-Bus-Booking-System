<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TCKTCHRG.aspx.cs" Inherits="TCKTCHRG" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 599px;
            height: 439px;
            border-style: solid;
            border-width: 2px;
        }
        .style2
        {
            height: 98px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        <h1>
            CHANGE IN TICKET CHARGE!!!!</h1>
        <p>
            &nbsp;</p>
        <table align="center" class="style1">
            <tr>
                <td style="text-align: left" class="style2">
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="BUS NUMBER"></asp:Label>
                    &nbsp;</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="enter integer value" ValidationExpression="\d{1,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
&nbsp;
                    NEW CHARGE</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="3"></asp:TextBox>
                &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" 
                        ErrorMessage="Enter integer value" ValidationExpression="\d{1,10}"></asp:RegularExpressionValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;<asp:Button 
                        ID="Button1" runat="server" Text="OK" onclick="Button1_Click" 
                        Height="33px" Width="52px" />
                    &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: left">
&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UPDTN.aspx">PREVIOUS</asp:HyperLink>
                </td>
                <td style="text-align: right">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/TCKTCHRG.aspx">RESET</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
