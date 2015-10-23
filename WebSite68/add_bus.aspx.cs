using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class add_bus : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            c.openconnection();
            c.getcommand.CommandText = "select bus_name from busdet where bus_name='" + TextBox1.Text + "';";
            SqlDataReader reader = c.getcommand.ExecuteReader();
            if (reader.HasRows.Equals(true))
            {
                Label1.Text = "Bus name already exists....";
                return;
            }
            else
            {
                reader.Close();
                c.getcommand.CommandText = "insert into busdet values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + Session["user"].ToString() + "','" + TextBox1.Text + "');";
                c.getcommand.ExecuteNonQuery();
                Label1.Text = "Successfully added....";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("login.aspx");
        }
    }
}