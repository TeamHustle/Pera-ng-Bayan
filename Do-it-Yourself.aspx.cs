using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Do_it_Yourself : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        remaining.Visible = true;
        proposedbudget.Visible = true;
        lblRemaining.Text = txtDesired.Text;
        txtDesired.Enabled = false;
        btnOk.Enabled = false;
    }
    protected void btnCompare_Click(object sender, EventArgs e)
    {
        if (lblRemaining.Text == "0")
        {
            proposedbudget.Visible = false;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            //cmd.CommandText = "UPDATE proposed SET proposedBudget=@vb"

            con.Close();
            comparison.Visible = true;

        }
        else
            error.Visible = false;
            error2.Visible = true;
    }
    void DIY()
    {
        double remaining = Convert.ToDouble(lblRemaining.Text);
        double desired = Convert.ToDouble(txtDesired.Text);

        remaining = desired - (Convert.ToDouble(TextBox1.Text) + Convert.ToDouble(TextBox2.Text) + Convert.ToDouble(TextBox3.Text) +
            Convert.ToDouble(TextBox4.Text) + Convert.ToDouble(TextBox5.Text)  + Convert.ToDouble(TextBox7.Text) +
            Convert.ToDouble(TextBox8.Text) + Convert.ToDouble(TextBox9.Text) + Convert.ToDouble(TextBox10.Text) + Convert.ToDouble(TextBox11.Text) +
            Convert.ToDouble(TextBox12.Text) + Convert.ToDouble(TextBox13.Text) + Convert.ToDouble(TextBox14.Text) + Convert.ToDouble(TextBox15.Text) +
            Convert.ToDouble(TextBox16.Text) + Convert.ToDouble(TextBox17.Text) + Convert.ToDouble(TextBox18.Text) + Convert.ToDouble(TextBox19.Text) +
            Convert.ToDouble(TextBox20.Text) + Convert.ToDouble(TextBox21.Text) + Convert.ToDouble(TextBox22.Text) + Convert.ToDouble(TextBox23.Text) +
            Convert.ToDouble(TextBox24.Text) + Convert.ToDouble(TextBox25.Text) + Convert.ToDouble(TextBox26.Text) + Convert.ToDouble(TextBox27.Text) +
            Convert.ToDouble(TextBox28.Text) + Convert.ToDouble(TextBox29.Text) + Convert.ToDouble(TextBox30.Text) + Convert.ToDouble(TextBox31.Text) +
            Convert.ToDouble(TextBox32.Text) + Convert.ToDouble(TextBox33.Text) + Convert.ToDouble(TextBox34.Text) + Convert.ToDouble(TextBox35.Text) +
            Convert.ToDouble(TextBox36.Text));
        lblRemaining.Text = Convert.ToString(remaining);
        if (remaining < 0)
        {
            error.Visible = true;
            error2.Visible = false;
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn6_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn4_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn5_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn8_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn9_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn10_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn13_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn14_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn15_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn16_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn17_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn18_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn19_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn20_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn21_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn22_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn23_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn24_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn25_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn26_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn27_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn28_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn29_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn30_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn31_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn32_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn35_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn33_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn36_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn34_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn7_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn12_Click(object sender, EventArgs e)
    {
        DIY();
    }
    protected void btn11_Click(object sender, EventArgs e)
    {
        DIY();
    }
}