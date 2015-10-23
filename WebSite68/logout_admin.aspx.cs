using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session["user"] = "";
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
        catch (Exception ex)
        {
            Response.Redirect("login.aspx");
        }
    }
}