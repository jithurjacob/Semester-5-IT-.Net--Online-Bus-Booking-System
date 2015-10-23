using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admn_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["user"].Equals(""))
                Response.Redirect("login.aspx");
        }
        catch (Exception ex)
        {
            Response.Redirect("login.aspx");
        }
    }
}
