using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class servicecancelt : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.getcommand.CommandText = "delete from services where bus_name='" + DropDownList1.SelectedValue.ToString() + "' and service_id='" + DropDownList2.SelectedValue.ToString() + "';";
        int a = c.getcommand.ExecuteNonQuery();
        if (a >= 1) Label1.Text = "BUS CANCELLED...";
        else Response.Write("<script>alert('BUS CANCELLATION FAILED');</script>");
    }
}