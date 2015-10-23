<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CNTCT.aspx.cs" Inherits="CNTCT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1062px;
            height: 661px;
            font-size: x-large;
            background-image: url('20080626-butlers.jpg');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td>
                    <h2>
                        NAME</h2>
                </td>
                <td>
                    <h2>
                        PHONE NO.</h2>
                </td>
                <td>
                    <h2>
                        EMAIL ID</h2>
                </td>
            </tr>
            <tr>
                <td>
                    ABHI RAJ</td>
                <td>
                    9893445261</td>
                <td>
                    <a href="mailto:abhi@hotmail.com">abhi@hotmail.com</a></td>
            </tr>
            <tr>
                <td>
                    ANN MARY</td>
                <td>
                    8606143710</td>
                <td>
                    <a href="mailto:mary@gmail.com">mary@gmail.com</a></td>
            </tr>
            <tr>
                <td>
                    SIONA D</td>
                <td>
                    9446711378</td>
                <td>
                    <a href="mailto:sio@ymail.com">sio@ymail.com</a></td>
            </tr>
            <tr>
                <td>
                    HARRY PAUL</td>
                <td>
                    8547124357</td>
                <td>
                    <a href="mailto:harry@gmail.com">harry@gmail.com</a></td>
            </tr>
            <tr>
                <td>
                    DENNIS</td>
                <td>
                    7867546372</td>
                <td>
                    <a href="mailto:denny@gmail.com">denny@gmail.com</a></td>
            </tr>
            <tr>
                <td>
                    LIONA LARRY</td>
                <td>
                    2635478654</td>
                <td>
                    <a href="mailto:liona@ymail.com">liona@ymail.com</a></td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/INTRO.aspx">Previous</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
