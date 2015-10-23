using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class owner_chnage_pwd : System.Web.UI.Page
{
    Class2 c=new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {
            if (!((TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals(""))))
            {

                c.getcommand.CommandText = "select password from users;";
                string id = c.getcommand.ExecuteScalar().ToString();

                if (id.Equals(TextBox1.Text))
                {
                    if (TextBox2.Text.Equals(TextBox3.Text))
                    {
                        c.getcommand.CommandText = "update admin set password='" + TextBox2.Text + "';";
                        c.getcommand.ExecuteNonQuery();
                        Response.Write("<script>alert('SUCCESSFULLY CHANGED');</script>");
                    }
                    else
                        Label1.Text = "ENTERED PASSWORD DONOT MATCH";
                }
                else
                    Label1.Text = "INCORRECT PASSWORD" ;
            }

            else
            {
                Response.Write("<script>PLEASE FILL THE BLANK FIELDS</script>");
            }
        }

        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
    
}