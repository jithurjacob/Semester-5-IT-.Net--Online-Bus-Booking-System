<%@ Page Title="" Language="C#" MasterPageFile="~/owner.master" AutoEventWireup="true" CodeFile="editservice.aspx.cs" Inherits="editservice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 98%;
            height: 213px;
        }
        .style2
        {
            width: 229px;
        }
        .style3
        {
        }
        .style4
        {
            width: 177px;
        }
        .style5
        {
            width: 177px;
            height: 23px;
        }
        .style6
        {
            width: 229px;
            height: 23px;
        }
        .style7
        {
            height: 23px;
        }
        .style8
        {
            width: 264px;
        }
        .style9
        {
            height: 23px;
            width: 264px;
        }
        .style10
        {
            width: 177px;
            height: 26px;
        }
        .style11
        {
            width: 229px;
            height: 26px;
        }
        .style12
        {
            width: 264px;
            height: 26px;
        }
        .style13
        {
            height: 26px;
        }
        .style14
        {
            font-size: xx-large;
            color: #FF0000;
        }
        #form2
        {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form2" runat="server">
    <table class="style1">
        <tr>
            <td class="style3" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style14"><strong>EDIT SERVICE DETAILS</strong></span></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                BUS NAME</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="service_id" 
                    DataValueField="service_id" AutoPostBack="True" 
                    ondatabound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:busdtls %>" 
                    
                    SelectCommand="SELECT service_id FROM services WHERE (bus_name = @bus_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="111" 
                            Name="bus_name" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                SERRVICE_ID</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="service_id" 
                    DataValueField="service_id" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                    ondatabound="DropDownList2_DataBound">
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
            <td class="style9">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                SOURCE</td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="191px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                DESTINATION</td>
            <td class="style8">
                <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="191px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                DATE</td>
            <td class="style8">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                HOUR&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style8">
                <asp:TextBox ID="TextBox3" runat="server" Height="29px" 
                    ontextchanged="TextBox3_TextChanged" Width="138px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                    ValidationExpression="^[1 - 12]\d*(?:\.\d{1,2})?$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11">
                MIN</td>
            <td class="style12">
                <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="137px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="INVALID FORMAT" 
                    ValidationExpression="\d{00-59}"></asp:RegularExpressionValidator>
            </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                AM/PM</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="27px" 
                    ondatabound="DropDownList3_DataBound" Width="79px">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" Height="35px" Text="SUBMIT" 
                    Width="89px" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/owner.master">PREVIOUS</asp:HyperLink>
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/editservice.aspx">RESET</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

