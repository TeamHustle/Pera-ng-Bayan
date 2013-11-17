using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Comment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["ID"] != null)
        {
            int ID = 0;
            bool IsValid = int.TryParse(Request.QueryString["ID"].ToString(), out ID);

            if (IsValid)
            {
                if (!IsPostBack)
                {
                    getrecords(ID);
                    
                }
            }
            else
                Response.Redirect("Budget.aspx");
        }
        else
        {
            Response.Redirect("Budget.aspx");
        }
    }

    void getrecords(int ID)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT Department, Budget FROM Budget WHERE ID=@ID";
        cmd.Parameters.Add("ID", SqlDbType.Int).Value = ID;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                lblGov.Text = dr["Department"].ToString();
                lblBudget.Text = dr["Budget"].ToString();
                
            }
        }
        con.Close();
    }

    void CommentCount()
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT COUNT(commentID) AS CommentCount FROM Comment WHERE budgetID=@budgetID";
        cmd.Parameters.Add("budgetID", SqlDbType.Int).Value = Request.QueryString["ID"].ToString();
        int comcount = (int)cmd.ExecuteScalar();
       
        cmd.CommandText = "UPDATE Budget SET NoCom=@CommentCount WHERE ID=@ID";
        cmd.Parameters.Add("@CommentCount", SqlDbType.Int).Value = comcount;
        cmd.Parameters.Add("ID", SqlDbType.Int).Value = Request.QueryString["ID"].ToString();

        
        cmd.ExecuteNonQuery();
        con.Close();
    }

    void Rating()
    {

        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT AVG(ratings) AS avgratings FROM Comment WHERE budgetID=@budgetID";
        cmd.Parameters.Add("budgetID", SqlDbType.Int).Value = Request.QueryString["ID"].ToString();
        int avgratings = (int)cmd.ExecuteScalar();

        cmd.CommandText = "UPDATE Budget SET Rating=@Rating WHERE ID=@ID";
        cmd.Parameters.Add("@Rating", SqlDbType.Decimal).Value = avgratings;
        cmd.Parameters.Add("ID", SqlDbType.Int).Value = Request.QueryString["ID"].ToString();


        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void btnComment_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "INSERT INTO Comment VALUES(@budgetID, @userName, @comment, @ratings)";
        cmd.Parameters.Add("budgetID", SqlDbType.Int).Value = Request.QueryString["ID"].ToString();
        cmd.Parameters.Add("userName", SqlDbType.VarChar).Value = txtName.Text;
        cmd.Parameters.Add("comment", SqlDbType.VarChar).Value = txtComment.Text;
        cmd.Parameters.Add("ratings", SqlDbType.VarChar).Value = ddlRatings.SelectedValue;
        cmd.ExecuteNonQuery();
        con.Close();
        CommentCount();
        Rating();
        Response.Redirect("Budget.aspx");
    }
}