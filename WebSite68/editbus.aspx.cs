using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class editbus : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
                c.getcommand.CommandText = "select * from busdet where bsno=" + DropDownList1.SelectedValue + " and owner_username='" + Session["user"].ToString() + "';";
                SqlDataReader reader = c.getcommand.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader.GetString(4);
                    TextBox2.Text = reader.GetValue(1).ToString();
                    TextBox3.Text = reader.GetValue(2).ToString();
                }
             
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
       if (!((TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals(""))))
        {

            c.getcommand.CommandText = "update busdet set charge='" + TextBox2.Text + "',seat='" + TextBox3.Text + "',bus_name='" + TextBox1.Text + "' where bsno='" + DropDownList1.SelectedValue + "';";

            int b = c.getcommand.ExecuteNonQuery();
            if (b > 0)
                Label1.Text = "Successfully Updated...";
            else
                Label1.Text = "Updation failed...";
        }
        else
        {

           Response.Write("PLEASE FILL THE BLANK FIELDS");
        }
    }

}