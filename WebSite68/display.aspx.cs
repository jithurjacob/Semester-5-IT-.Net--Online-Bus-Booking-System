using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class display : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string id = Request.QueryString["id"];
            string cmd= "select * from book where ticketno='" + id + "';";

            System.Web.HttpContext.Current.Response.Write("<script>YOUR TICKET NUMBER IS " + id.ToString() + "</script>");
            DataTable dt;
            dt = c.GetData(cmd);
            Label1.Text = dt.Rows[0][1].ToString();
            Label2.Text = dt.Rows[0][2].ToString();
            Label3.Text = dt.Rows[0][3].ToString();
            Label4.Text = dt.Rows[0][4].ToString();
            Label5.Text = dt.Rows[0][5].ToString();
            Label9.Text = dt.Rows[0][6].ToString();
            Label10.Text = dt.Rows[0][7].ToString();
            Label14.Text = dt.Rows[0][9].ToString();
            Label12.Text = dt.Rows[0][8].ToString();
            Label13.Text = " YOUR TICKET NUMBER IS " + id;
        }
        catch (Exception ex) {
            Response.Write(ex.ToString());
        
        }
    }
}