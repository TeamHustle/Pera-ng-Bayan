using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Tax : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void btnCalculate_Click(object sender, EventArgs e)
    {

        if (Convert.ToDouble(txtSalary.Text) <= 10000)
        {
            tax.Text = Convert.ToString(Convert.ToDouble(txtSalary.Text) * 0.05);
            
        }
        else if (Convert.ToDecimal(txtSalary.Text) > 10000 && Convert.ToDecimal(txtSalary.Text) <= 30000)
        {
            tax.Text = Convert.ToString(((Convert.ToDouble(txtSalary.Text) - 10000) * .1) + 500);
            
        }
        else if (Convert.ToDecimal(txtSalary.Text) > 30000 && Convert.ToDecimal(txtSalary.Text) <= 70000)
        {
            tax.Text = Convert.ToString(((Convert.ToInt16(txtSalary.Text) - 30000) * .15) + 2500);
        }
        else if (Convert.ToDecimal(txtSalary.Text) > 70000 && Convert.ToDecimal(txtSalary.Text) <= 140000)
        {
            tax.Text = Convert.ToString(((Convert.ToDouble(txtSalary.Text) - 70000) * .2) + 8500);
        }
        else if (Convert.ToDecimal(txtSalary.Text) > 140000 && Convert.ToDecimal(txtSalary.Text) <= 250000)
        {
            tax.Text = Convert.ToString(((Convert.ToDouble(txtSalary.Text) - 140000) * .25) + 22500);
        }
        else if (Convert.ToDecimal(txtSalary.Text) > 250000 && Convert.ToDecimal(txtSalary.Text) <= 500000)
        {
            tax.Text = Convert.ToString(((Convert.ToDouble(txtSalary.Text) - 250000) * .30) + 50000);
        }
        else if (Convert.ToDecimal(txtSalary.Text) > 500000)
        {
            tax.Text = Convert.ToString(((Convert.ToDouble(txtSalary.Text) - 500000) * .25) + 125000);
        }
        results.Visible = true;
        Label0.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .045);
        Label1.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .012);
        Label2.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .002);
        Label3.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .090);
        Label4.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .313);
        Label5.Text = Convert.ToString(Convert.ToDouble(tax.Text) * 0.004);
        Label6.Text = Convert.ToString(Convert.ToDouble(tax.Text) * 1.325);
        Label7.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .162);
        Label8.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .018);
        Label9.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .105);
        Label10.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .056);
        Label11.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .054);
        Label12.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .360);
        Label13.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .444);
        Label14.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .051);
        Label15.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .046);
        Label16.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .363);
        Label17.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .939);
        Label18.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .054);
        Label19.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .348);
        Label20.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .009);
        Label21.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .02);
        Label22.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .206);
        Label23.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .018);
        Label24.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .005);
        Label25.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .052);
        Label26.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .090);
        Label27.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .000019);
        Label28.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .085);
        Label29.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .006);
        Label30.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .037);
        Label31.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .013);
        Label32.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .008);
        Label33.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .002);
        Label34.Text = Convert.ToString(Convert.ToDouble(tax.Text) * .047);
    }
}