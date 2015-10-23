using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class valiadation : System.Web.UI.Page
{
    Class2 c = new Class2();
    protected void Page_Load(object sender, EventArgs e)
    {
        c.openconnection();

        try
        {
            string cmd1 = "select * from users where valid='pending' ;";
            SqlCommand cmd = new SqlCommand(cmd1, c.getconnection );
            DataTable dt = new DataTable();
            c.openconnection() ;
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            dt.Load(reader);
            if (dt.Rows.Count == 0)
                Response.Write("<script>alert('You donot have any pending requests to validate...');</script> ");
            GridView1.AutoGenerateColumns = true;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            reader.Close();
            //c.Close();
        }
        catch (Exception ex)
        {
           Response.Write(ex.ToString());
           // Response.Redirect(".aspx");

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public DataTable GetData(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, c.getconnection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;

    }
    
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        try
        {
            DataTable dt;
            string sql5 = "select id from users where valid='pending' ;";
            dt = GetData(sql5);
            string i = (dt.Rows[e.NewSelectedIndex][0]).ToString();
            c.getcommand.CommandText = "update users set valid='accepted' where id="+i +";";
            c.getcommand.ExecuteNonQuery();
            Response.Write("<script>alert('User validated successfully...');window.location='valiadation.aspx';</script>");
          // Response.Redirect("valiadation.aspx");
        }
        catch (Exception ex)
        {
            Response.Write( "<script>alert('Error in accepting the request...');</script>" );
            Response.Write(ex.ToString());
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            DataTable dt;
            string sql5 = "select * from users where valid='pending' ;";
            dt = GetData(sql5);
            string i = (dt.Rows[e.RowIndex][0]).ToString();

            c.getcommand.CommandText= "update users set valid='rejected' where id= " + i + ";";
            c.getcommand.ExecuteNonQuery();
            Response.Write("<script>alert('User rejected successfully...');window.location='valiadation.aspx';</script>");
          //  Response.Redirect("valiadation.aspx");
        }
        catch (Exception ex) {

          //  Response.Write("<script>alert('Error in rejecting the request...');</script>");
          //  Response.Write(ex.ToString());
        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        try { }
        catch { }
    }
}