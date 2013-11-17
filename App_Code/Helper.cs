using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public class Helper
{
    static SqlConnection con = new SqlConnection(GetCon());

	public Helper()
	{

	}

    public static string GetCon()
    {
        return ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
    }

    public static string CreateSHAHash(string phrase)
    {
        SHA512Managed hashTool = new SHA512Managed();
        Byte[] phraseAsByte = System.Text.Encoding.UTF8.GetBytes(string.Concat(phrase));
        Byte[] encryptedBytes = hashTool.ComputeHash(phraseAsByte);
        hashTool.Clear();
        return Convert.ToBase64String(encryptedBytes);
    }

    public static void ClearTextboxes(ControlCollection cc)
    {
        foreach (Control ctrl in cc)
        {
            TextBox tb = ctrl as TextBox;
            if (tb != null)
            {
                tb.Text = "";
            }
            else
                ClearTextboxes(ctrl.Controls);
        }
    }

    public static void ValidateAdmin()
    {
        if (System.Web.HttpContext.Current.Session["userid"] == null)
            HttpContext.Current.Response.Redirect("http://localhost:1234/MyShopV2/Admin/Login.aspx");
    }

    public static void Log(string userID, string logType, string desc)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "INSERT INTO Logs VALUES (@UserID, @LogType, @Description, @Timestamp)";
        cmd.Parameters.Add("@UserID", SqlDbType.Int).Value = userID;
        cmd.Parameters.Add("@LogType", SqlDbType.VarChar).Value = logType;
        cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = desc;
        cmd.Parameters.Add("@Timestamp", SqlDbType.DateTime).Value = DateTime.Now;
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public static string CountData(string table)
    {
        string total = "";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT COUNT (*) FROM " + table;
        total = ((int)cmd.ExecuteScalar()).ToString();
        con.Close();
        return total;
    }
}