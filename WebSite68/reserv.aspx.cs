using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class reserv : System.Web.UI.Page
{

    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            c.openconnection();
            if (!IsPostBack)
            {
                DropDownList8.Items.Insert(0, new ListItem("---Select One---", "-1"));

             //   Response.Write("var r=document.getElementById('#DropDownList6');alert(r.value);");
               // Response.Write(DropDownList6.Items.Count.ToString());
               // if (DropDownList6.Items.Count < 2)
               // {
                    
               //   //  DropDownList6.SelectedIndexChanged(object,EventArgs );
               //     DropDownList6.SelectedIndex =  -1;
               //   //  Response.Write(DropDownList6.SelectedIndex.ToString());
               //   //  this.FindControl("DropDownList6").ViewStateMode = S;
               // }
               // if (DropDownList8.Items.Count < 2)
               // {
               //     DropDownList7.SelectedIndex = -1;// DropDownList7.Items.Count - 1;
               //     DropDownList8.SelectedIndex = -1;
               ////     Response.Write(DropDownList8.SelectedIndex.ToString());
               // }
            //    if(DropDownList8.it
            }
        }
        catch (Exception ex) {
            Response.Write(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        try
        {
           if (!(TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals("") || TextBox7.Text.Equals("")))
            {
                if ((Convert.ToInt16(TextBox8.Text)) > (Convert.ToInt16(Label2.Text)))
                {
                    Response.Write("<script>alert('INVALID NUMBER OF SEATS');</script>");
                }
                c.getcommand.CommandText = "insert into book values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString()+ "','" + TextBox3.Text + "','" + DropDownList2.SelectedValue.ToString() + "','" + DropDownList6.SelectedValue.ToString() + "','" + DropDownList7.SelectedValue.ToString() + "','" + TextBox7.Text + "','" + DropDownList8.SelectedValue.ToString() + "','"+TextBox8.Text+"');";
                c.getcommand.ExecuteNonQuery();
                Response.Write("SAVED");
                c.getcommand.CommandText= "select max(ticketno) from book";
               string id=c.getcommand.ExecuteScalar().ToString();
               Label1.Text = "YOUR TICKET NUMBER IS " + id.ToString();
               Response.Redirect("display.aspx?id=" + id.ToString());
           }
            
           else
            {
                Response.Write("<script>alert('PLEASE FILL THE BLANK FIELDS');</script>");
            }
          
        }
        catch (Exception ex)
        {
        
            Label1.Text = ex.ToString();
        }
    }
    
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
       // this.Response.Write("c");
        if (Calendar1.SelectedDate.ToString().CompareTo(Calendar1.TodaysDate.ToString())<0) 
            {
            Response.Write("<script>alert('Enter a valid date...');</script>");
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            }

    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {//wanted 
        //this.Response.Write("8");
        c.getcommand.CommandText = "select * from services where service_id=" + DropDownList8.SelectedValue.ToString() + ";";
        SqlDataReader redr = c.getcommand.ExecuteReader();
        while (redr.Read())
        {
            bus_name_txt.Text = "BUS NAME  : " + redr.GetValue(7).ToString();
            time_txt.Text = "TIME   :  " + redr.GetValue(4).ToString() + " : " + redr.GetValue(5).ToString() + redr.GetValue(6).ToString();

        }

        redr.Close();

        int totalseats = 0;
        c.getcommand.CommandText = "select * from busdet where bus_name in (select bus_name from services where service_id="+DropDownList8.SelectedValue.ToString()+"  );";
       SqlDataReader rdr = c.getcommand.ExecuteReader();
        while (rdr.Read())
        {
            charge_txt.Text = "CHARGE  : " + rdr.GetValue(1).ToString();
            no_seats_txt.Text = "NO: OF SEATS   :  " + rdr.GetValue(2).ToString();
            totalseats =(int) rdr.GetValue(2);
        }
        rdr.Close();


        c.getcommand.CommandText = "select sum(seats) from book where service_id="+DropDownList8.SelectedValue.ToString()+"; ";

        SqlDataReader rdr1 = c.getcommand.ExecuteReader();

        while (rdr1.Read())
        {int seats;
      //  Response.Write("lll : " + rdr1.GetValue(0));
        if (rdr1.GetValue(0).Equals("") ||rdr1.HasRows.Equals(false) || rdr1.IsDBNull(0))
            seats = 0;
        else 
             seats=rdr1.GetInt32(0);
           seats_rem_txt.Text = "SEATS REMAINING  : " +(totalseats-seats ).ToString();
           Label2.Text = (totalseats - seats).ToString();
        }
        rdr1.Close();


    }
    protected void DropDownList6_DataBound(object sender, EventArgs e)
    {
        DropDownList6.Items.Insert(0, new ListItem("---Select One---", "-1"));
        bus_name_txt.Text = "";
        no_seats_txt.Text = "";
        charge_txt.Text = "";
        time_txt.Text = "";
        seats_rem_txt.Text = "";
    }
    protected void DropDownList8_DataBound(object sender, EventArgs e)
    {
        DropDownList8.Items.Insert(0, new ListItem("---Select One---", "-1"));

    }
    protected void DropDownList7_DataBound(object sender, EventArgs e)
    {
        DropDownList7.Items.Insert(0, new ListItem("---Select One---", "-1"));
        bus_name_txt.Text = "";
        no_seats_txt.Text = "";
        charge_txt.Text = "";
        time_txt.Text = "";
        seats_rem_txt.Text = "";
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}