using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD : System.Web.UI.Page
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
             if (!((TextBox2.Text.Equals("")) || (TextBox3.Text.Equals(""))))
             {
                 
                

                 c.getcommand.CommandText = "insert into services values('"+TextBox2.Text +"','"+TextBox3.Text +"','"+Calendar1.SelectedDate.ToString()+"','"+DropDownList1.SelectedValue.ToString()+"','"+DropDownList2.SelectedValue.ToString()+"','"+DropDownList3.SelectedValue.ToString()+"','"+DropDownList4.SelectedValue.ToString()+"');";
                 c.getcommand.ExecuteNonQuery();
                 Label7.Text = ("NEW SERVICE ADDED...");
             }
             else
             {
                 Response.Write("<script>alert('PLEASE FILL THE BLANK FIELDS');</script>");
             }
        }
        catch (Exception ex)
        {
            Label7.Text = ex.ToString();
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate.ToString().CompareTo(Calendar1.TodaysDate.ToString())<0) {

            Response.Write("<script>alert('Enter a valid date...');</script>");
            Calendar1.SelectedDate = Calendar1.TodaysDate;
        }



    }
}
    
