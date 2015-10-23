using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TCKTCHRG : System.Web.UI.Page
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
            if (!(TextBox3.Text.Equals("") || TextBox1.Text.Equals("")))
            {

                c.getcommand.CommandText = "UPDATE busdet set charge='" + TextBox3.Text + "' where bsno='" + TextBox1.Text + "';";
              int a=c.getcommand.ExecuteNonQuery();
              if (a >= 1) Label3.Text = ("UPDATED");
              else Label3.Text = "BUS NOT FOUND...";
            }

            else
            {
                Response.Write("</script>PLEASE FILL THE BLANK FIELD</script>");
            }
        }

        catch (Exception ex)
        {
            Label3.Text = ex.ToString();
        }
    }
}