using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editservice : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

        if (!((TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox4.Text.Equals(""))))
        {

            c.getcommand.CommandText = "update services set source='" + TextBox1.Text + "',destination='" + TextBox2.Text + "',hour='" + TextBox3.Text + "',date='" + Calendar1.SelectedDate.ToString() +"',min='" + TextBox4.Text + "',am_pm='" + DropDownList3.SelectedValue.ToString() + "' where service_id='" + DropDownList2.SelectedValue + "';";

            int b = c.getcommand.ExecuteNonQuery();
            if (b > 0)
                Response.Write("<scrpit>alert('SUCCESSFULLY UPDATED');</scrpit>");
            else
                Response.Write("<scrpit>alert('UPDATION FAILED');</scrpit>");
        }
        else
        {

           Response.Write("<scrpit>alert('PLEASE FILL THE BLANK FIELDS')</script>");
        }

        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.Insert(0, new ListItem("---select---", "-1"));
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        DropDownList2.Items.Insert(0, new ListItem("---select---", "-1"));
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate.ToString().CompareTo(Calendar1.TodaysDate.ToString()) < 0)
        {
            Response.Write("<script>alert('ENTER A VALID DATE');</script>");
            Calendar1.SelectedDate = Calendar1.TodaysDate;
        }
    }
    protected void DropDownList3_DataBound(object sender, EventArgs e)
    {
        DropDownList3.Items.Insert(0, new ListItem("---select---", "-1"));
    }
}
