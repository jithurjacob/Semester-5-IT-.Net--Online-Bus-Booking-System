using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if (!((TextBox1.Text.Equals("")) || (TextBox2.Text.Equals(""))))
            {
                if((TextBox1.Text.Equals("admin")))
                { 
                c.getcommand.CommandText = "select password from admin;";
                string id = c.getcommand.ExecuteScalar().ToString();

                if ((TextBox1.Text.Equals("admin")) && (TextBox2.Text.Equals(id)))
                {
                    Session["user"] = "admin";
                    
                    Response.Redirect("admin_main_page.aspx");
                  
                }
                else 
                    Label1.Text = ("LOGIN FAILED");


                }else
                {

                    c.getcommand.CommandText = "select password from users where username='" + TextBox1.Text + "' and valid='rejected';";
                    SqlDataReader reder = c.getcommand.ExecuteReader();
                    if (reder.HasRows.Equals(true ))
                    {
                        Response.Write("<script>alert('ACCESS HAS BEEN DENIED BY ADMINISTRATOR SINCE ACCOUNT VERIFICATION FAILED');</script>");
                        return;
                    }
                    reder.Close();

                    c.getcommand.CommandText = "select password from users where username='" + TextBox1.Text + "' and valid='pending';";
                     reder = c.getcommand.ExecuteReader();
                    if (reder.HasRows.Equals(true))
                    {
                        Label1.Text = ("ACCESS HAS BEEN DENIED BY ADMINISTRATOR SINCE ACCOUNT VERIFICATION IS PENDING ...");
                        return;
                    }
                    reder.Close();

                c.getcommand.CommandText = "select password from users where username='"+TextBox1.Text +"' and valid='accepted';";
 reder =c.getcommand.ExecuteReader();
                if(reder.HasRows.Equals(false))
                { 
                    Label1.Text = ("LOGIN FAILED ...");
                return;
                }
                reder.Close();
                string id = c.getcommand.ExecuteScalar().ToString();
                if (( (TextBox2.Text.Equals(id))))
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("usermain.aspx");
                    
                }
                else
                    Label1.Text = ("LOGIN FAILED...");
                
                
                }
            }

            else
            {
                Label1.Text = "Please fill all fields....";
            }
        }
        catch (Exception ex)
        {
            Label1.Text =c.getcommand.CommandText.ToString()+ ex.ToString();
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}