<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #FF0000;
        }
        .style2
        {
            font-size: xx-large;
        }
    </style>
</head>
<body background="volvo_bus_india.jpg" 
    style="font-size: x-large; height: 541px">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style2">&nbsp;</span><strong><span class="style1" 
            style="background-image: none; background-color: #FFFFFF; font-size: x-large; color: #00FF00">BUS DETAILS<br />
        <br />
        <br />
        </span></strong>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="busdetails" Height="256px" style="color: #FFFFFF" Width="100%">
        <Columns>
            <asp:BoundField DataField="bsno" HeaderText="BUSNO" SortExpression="bsno" />
            <asp:BoundField DataField="sourc" HeaderText="SOURCE" SortExpression="sourc" />
            <asp:BoundField DataField="destination" HeaderText="DESTINATION" 
                SortExpression="destination" />
            <asp:BoundField DataField="hr" HeaderText="HOUR" SortExpression="hr" />
            <asp:BoundField DataField="minut" HeaderText="MINUTE" SortExpression="minut" />
            <asp:BoundField DataField="am/pm" HeaderText="AM/PM" SortExpression="am/pm" />
            <asp:BoundField DataField="charge" HeaderText="CHARGE" 
                SortExpression="charge" />
            <asp:BoundField DataField="seat" HeaderText="SEAT" SortExpression="seat" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="busdetails" runat="server" 
        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
        SelectCommand="SELECT * FROM [busdet]"></asp:SqlDataSource>
    </form>
</body>
</html>
