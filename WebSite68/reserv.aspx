<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reserv.aspx.cs" Inherits="reserv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      
        .style2
        {
            height: 23px;
            text-align: center;
        }
        .style3
        {
            height: 7px;
            width: 50px;
        }
        .style4
        {
            height: 26px;
            width: 50px;
        }
        .style5
        {
            height: 29px;
            width: 50px;
        }
        .style6
        {
            height: 23px;
            width: 50px;
        }
        .style7
        {
            height: 40px;
            width: 50px;
        }
        .style8
        {
            color: #FF0000;
            font-size: xx-large;
            text-align: left;
        }
        .style9
        {
            text-align: center;
            width: 264px;
        }
        .style10
        {
            width: 264px;
        }
        .style14
        {
            height: 40px;
            width: 264px;
        }
        .style15
        {
            height: 7px;
            width: 264px;
        }
        .style17
        {
            height: 23px;
            width: 282px;
        }
        .style18
        {
            height: 26px;
            width: 282px;
        }
        .style19
        {
            height: 29px;
            width: 282px;
        }
        .style20
        {
            width: 282px;
        }
        .style21
        {
            height: 40px;
            width: 282px;
        }
        .style22
        {
            height: 7px;
            width: 282px;
        }
        .style24
        {
            height: 23px;
            text-align: center;
            width: 339px;
        }
        .style25
        {
            width: 339px;
        }
        .style26
        {
            height: 23px;
            width: 339px;
        }
        .style27
        {
            height: 26px;
            width: 339px;
        }
        .style28
        {
            height: 29px;
            width: 339px;
        }
        .style29
        {
            height: 40px;
            width: 339px;
        }
        .style30
        {
            height: 7px;
            width: 339px;
        }
        .style31
        {
            width: 50px;
        }
    </style>
</head>
<body style="background-color: #99CCFF">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style9" rowspan="21">
                    <asp:Image ID="Image1" runat="server" Height="514px" ImageUrl="~/volvo_bus.gif" 
                        Width="488px" />
                </td>
                <td class="style2" colspan="2">
                    <h2 class="style8">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        RESERVE TICKET!!!!</h2>
                </td>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;</td>
                <td class="style31">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    DATE</td>
                <td class="style31">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    SOURCE</td>
                <td class="style31">
                
                
                <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="source" 
                        DataValueField="source" 
                        onselectedindexchanged="DropDownList6_SelectedIndexChanged" 
                        ViewStateMode="Enabled" Height="25px" Width="167px" 
                        CausesValidation="true" 
                        DataMember="DefaultView" ondatabound="DropDownList6_DataBound" 
                        ontextchanged="DropDownList6_TextChanged" >
                    <asp:ListItem Text="---Select One---" Value="" />
                    </asp:DropDownList>
                    <%-- <asp:RequiredFieldValidator ID="r1" runat="server" 
                        ControlToValidate="DropDownList6" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                        SelectCommand="SELECT DISTINCT source FROM services WHERE (date = @date)" 
                        onselecting="SqlDataSource1_Selecting">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="date" 
                                PropertyName="SelectedDate" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                
                    
                </td>
                <td class="style25">
                
                
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    DESTINATION</td>
                <td class="style31">
                    <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="destination" 
                        DataValueField="destination" ViewStateMode="Enabled" Height="25px" 
                        Width="168px" CausesValidation="true" 
                        onselectedindexchanged="DropDownList7_SelectedIndexChanged" 
                        ondatabound="DropDownList7_DataBound" 
                        ontextchanged="DropDownList7_TextChanged" >
                    <asp:ListItem Text="---Select One---" Value="" />
                    </asp:DropDownList>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList7" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                        
                        
                        SelectCommand="SELECT DISTINCT destination FROM services WHERE (date = @date) AND (source = @source)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Calendar1" Name="date" 
                                PropertyName="SelectedDate" />
                            <asp:ControlParameter ControlID="DropDownList6" Name="source" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    SERVICE</td>
                <td class="style31">
                    <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource3" DataTextField="service_id" 
                        DataValueField="service_id" ViewStateMode="Enabled" 
                        onselectedindexchanged="DropDownList8_SelectedIndexChanged" Height="25px" 
                        Width="165px" CausesValidation="true" 
                        ondatabound="DropDownList8_DataBound" >
                    <asp:ListItem Text="---Select One---" Value=""  />
                    </asp:DropDownList>
                    <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList8" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                        
                        SelectCommand="SELECT service_id FROM services WHERE (source = @source) AND (destination = @dest) AND (date = @date)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList6" Name="source" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="DropDownList7" Name="dest" 
                                PropertyName="SelectedValue" />
                            <asp:ControlParameter ControlID="Calendar1" Name="date" 
                                PropertyName="SelectedDate" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style31">
                    <asp:Label ID="bus_name_txt" runat="server"></asp:Label>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style31">
                    <asp:Label ID="no_seats_txt" runat="server"></asp:Label>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style31">
                    <asp:Label ID="charge_txt" runat="server"></asp:Label>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style31">
                    <asp:Label ID="time_txt" runat="server"></asp:Label>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style31">
                    <asp:Label ID="seats_rem_txt" runat="server"></asp:Label>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    NO: OF SEATS REQUIRED</td>
                <td class="style31">
                    <asp:TextBox ID="TextBox8" runat="server" Width="170px" Height="26px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox8" Display="Dynamic" 
                        ErrorMessage="SEATS REQUIRED IS INVALID" ValidationExpression="^\d*\.?\d+$"></asp:RegularExpressionValidator>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    NAME</td>
                <td class="style31">
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="173px"></asp:TextBox>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ADDRESS</td>
                <td class="style6">
                    </td>
                <td class="style26">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    HOUSE NAME</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="172px" Height="21px"></asp:TextBox>
                </td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    DISTRICT</td>
                <td class="style31">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="171px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>ERNAKULAM</asp:ListItem>
                        <asp:ListItem>IDUKKI</asp:ListItem>
                        <asp:ListItem>KANNUR</asp:ListItem>
                        <asp:ListItem>KASARGOD</asp:ListItem>
                        <asp:ListItem>KOLLAM</asp:ListItem>
                        <asp:ListItem>KOTTAYAM</asp:ListItem>
                        <asp:ListItem>KOZHIKODE</asp:ListItem>
                        <asp:ListItem>MALAPURAM</asp:ListItem>
                        <asp:ListItem>PALAKAD</asp:ListItem>
                        <asp:ListItem>PATHANAMTHITA</asp:ListItem>
                        <asp:ListItem>THRISSUR</asp:ListItem>
                        <asp:ListItem>TRIVANDRUM</asp:ListItem>
                        <asp:ListItem>WAYANAD</asp:ListItem>
                        <asp:ListItem>ALAPUZHA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    PIN CODE</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="171px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                        ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
                <td class="style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    STATE</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="171px">
                        <asp:ListItem>KERALA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    </td>
                <td class="style6">
                   </td>
                <td class="style26">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    PHONE NUMBER</td>
                <td style="margin-left: 40px" class="style5">
                    <asp:TextBox ID="TextBox7" runat="server" Height="21px" Width="171px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
                <td style="margin-left: 40px" class="style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style31">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style21">
                    </td>
                <td style="text-align: left" class="style7">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" 
                        Height="36px" Width="79px" />
                </td>
                <td style="text-align: left" class="style29">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
                <td style="text-align: center" class="style31">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td style="text-align: center" class="style25">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink 
                        ID="HyperLink1" runat="server" NavigateUrl="~/user_re.aspx">PREVIOUS</asp:HyperLink>
                </td>
                <td class="style31">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="style25">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/reserv.aspx">RESET</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style30">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </form>
</body>
</html>
