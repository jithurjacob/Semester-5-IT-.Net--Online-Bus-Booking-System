using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sc1= new SqlConnection("Data Source=USER-PC\\SQLEXPRESS;Initial Catalog=anjuna;Integrated Security=true");
        SqlCommand aq= new SqlCommand("insert into ab2 values('"+TextBox2.Text+"')",sc1);
        sc1.Open();
        aq.ExecuteNonQuery();
        sc1.Close();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}