using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cncl : System.Web.UI.Page
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
            c.getcommand.CommandText = "DELETE FROM insrt where ticketno='" + TextBox1.Text + "';";
            int a=c.getcommand.ExecuteNonQuery();
            if (a >= 1) Label1.Text = ("CANCELLED");
            else Response.Write("NO SUCH TICKET EXISTS");
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}