using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Budget : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());
    protected void Page_Load(object sender, EventArgs e)
    {
        GetData();
    }

    void GetData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT ID, Department, Budget, Rating, NoCom FROM Budget";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Budget");
        lvProdCategory.DataSource = ds;
        lvProdCategory.DataBind();
        con.Close();
    }
    void GetData(string column, string keyword)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT ID, Department, Budget, Rating, NoCom FROM Budget WHERE " + column + " LIKE '%" + keyword + "%'";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "Budget");
        lvProdCategory.DataSource = ds;
        lvProdCategory.DataBind();
        con.Close();
    }
   
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        GetData(ddlColumns.SelectedValue, txtKeyword.Text);
    }
}