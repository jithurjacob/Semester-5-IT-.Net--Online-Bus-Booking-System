using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Response.Write(Session["user"].ToString());
        try {
        if(Session["user"].Equals(""))
            Response.Redirect("login.aspx");
        }
        catch (Exception ex) {
            Response.Redirect("login.aspx");
        }
    }
}
