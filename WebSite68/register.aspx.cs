using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class register : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (!(TextBox1.Text.Equals("") || TextBox2.Text.Equals(" ") || TextBox3.Text.Equals(" ")
|| TextBox4.Text.Equals(" ") || TextBox4.Text.Equals(" ") || TextBox6.Text.Equals(" ")))
            {
                c.openconnection();
                c.getcommand.CommandText = "select username from users where username='" + TextBox5.Text + "';";
                SqlDataReader reader = c.getcommand.ExecuteReader();
                if (reader.HasRows.Equals(true))
                {
                    Label1.Text = "USER NAME ALREADY EXIST";
                    return;
                }
                else
                {
                    reader.Close();
                    c.getcommand.CommandText = "insert into users values('" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','pending');";
                    c.getcommand.ExecuteNonQuery();
                    Label1.Text = "SUCCESSFULLY REGISTERED....PLEASE WAIT TILL ADMINISTRATOR VALIDATES YOUR ACCOUNT.YOU WILL BE PERSONALLY CONTACTED BY ADMINISTRATOR FOR VERIFICATION...";
                }

            }
            else
            {
                Response.Write("<script>alert('PLEASE FILL THE BLANK FIELDS');</script>");
            }
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }

        

    }
}