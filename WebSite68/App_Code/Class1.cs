using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class2
    {
    SqlConnection con = new SqlConnection();
    SqlCommand end = new SqlCommand();
    public Class2()
    {
        con.ConnectionString = "Data Source=USER-PC\\SQLEXPRESS;Initial Catalog=anjuna;Integrated Security=True";
        end.Connection = con;
    }
    public void openconnection()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }
    public SqlConnection getconnection
    {
        get
        {
            return con;
        }
    }
    public SqlCommand getcommand
    {
        get
        {
            return end;
        }
    }

    public DataTable GetData(string sql)
    {
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
}

