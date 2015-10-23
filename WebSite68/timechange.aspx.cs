using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class timechange : System.Web.UI.Page
{
    Class2 c=new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();
    }
protected void  Button1_Click(object sender, EventArgs e)
{
     try
        {
            if (!(TextBox1.Text.Equals("")))
            {

                c.getcommand.CommandText = "UPDATE busdet set hr='" + DropDownList1.SelectedValue.ToString() + "',minut='" + DropDownList7.SelectedValue.ToString() + "', [am/pm]='" + DropDownList3.SelectedValue.ToString() + "' where bsno='" + TextBox1.Text + "';";
               int a= c.getcommand.ExecuteNonQuery();
               if (a >= 1)Label2.Text = ("UPDATED");
               else Label2.Text = "BUS NOT FOUND...";
            }
         else
            {
                Response.Write("</script>PLEASE FILL THE BLANK FIELD</script>");
            }
        }

        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
        }
}

}