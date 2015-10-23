using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class buscancel : System.Web.UI.Page
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
            
            
                c.getcommand.CommandText = "delete from busdet where bus_name='" +DropDownList1.SelectedValue.ToString()+ "';";
                int a = c.getcommand.ExecuteNonQuery();
                c.getcommand.CommandText = "delete from services where bus_name='" + DropDownList1.SelectedValue.ToString() + "';";
                a = c.getcommand.ExecuteNonQuery();
                if (a >= 1) Label1.Text = "BUS CANCELLED...";
                else Label1.Text = "BUS CANCELLATION FAILED...";

                Response.Redirect("buscancel.aspx");
           
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}