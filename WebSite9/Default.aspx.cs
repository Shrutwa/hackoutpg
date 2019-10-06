using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Globalization;
using AjaxControlToolkit;
//using OfficeOpenXml;
using System.IO;
using System.Data;
//using System.Speech.Synthesis;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {    return;
        }








    }


    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        /*        string s="";
                for (int i = 1; i < 10; i++)
                {
                   if (Calendar1.SelectedDate.Month.Equals(i))
                   {
                        DateTime dt = DateTime.ParseExact(Calendar1.SelectedDate.ToString(), "M/dd/yyyy hh:mm:ss tt", CultureInfo.InvariantCulture);
        
                       s = dt.ToString("dd/M/yyyy", CultureInfo.InvariantCulture);
                   }
            
                }

                for (int i = 10; i < 13; i++)
                {
                    if (Calendar1.SelectedDate.Month.Equals(i))
                    {
                        DateTime dt = DateTime.ParseExact(Calendar1.SelectedDate.ToString(), "MM/dd/yyyy hh:mm:ss tt", CultureInfo.InvariantCulture);

                        s = dt.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                    }

                }



                */

        txtDOB.Text = Calendar1.SelectedDate.ToString("dd-MMM-yyyy");
        Calendar1.Visible = false;
        ddlMonth.Visible = false;
        ddlYear.Visible = false;

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        //txtEmpCode.CssClass =String.Empty;
        //txtEmpFName.CssClass = String.Empty;
        //txtEmpMName.CssClass = String.Empty;
        //txtEmpLName.CssClass = String.Empty;
        //txtMobileNumber.CssClass = String.Empty;
        //txtEmailID.CssClass = String.Empty;
        ddlMonth.Visible = true;
        ddlYear.Visible = true;


        Calendar1.Focus();

        Calendar1.Visible = true;


    }
    protected void SetCalendarVisibleDate(object sender, EventArgs e)
    {
        Calendar1.VisibleDate = new DateTime(int.Parse(ddlYear.SelectedValue),
                                   int.Parse(ddlMonth.SelectedValue),
                                   1);
    }

    protected void txtDOB_TextChanged(object sender, EventArgs e)
    {

        txtDOB.Text = (Convert.ToDateTime(txtDOB.Text)).ToString("dd-MMM-yyyy");

    }






    protected void ddlCountry_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "SELECT [StateID], [StateName] FROM [State] where CountryId=" + ddlCountry.SelectedValue;
    }
    protected void ddlState_SelectedIndexChanged1(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT [CityID], [CityName] FROM [City] where StateId=" + ddlState.SelectedValue;
    }

   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection connect1 = new SqlConnection(@"Data Source=kdp;Initial Catalog=hpg;Integrated Security=True");
        connect1.Open();
        string str = "INSERT INTO CustomerDetails(Company_Name,Company_Domain,Company_Foundation_Date,Country,State,City,Company_Address,Company_MobileNumber,Company_EmailID,Password) Output Inserted.Company_ID Values('"+ txtCmpName.Text.ToUpper() + "','" +txtCmpDomain.Text.ToUpper() + "','"+ txtDOB.Text + "','" + ddlCountry.SelectedValue + "','" + ddlState.SelectedValue + "','" + ddlCity.SelectedValue + "','" + txtarAddress.Value + "','" + txtMobileNumber.Text + "','" + txtEmailID.Text +"','" + txtPassword.Text + "')";
        SqlCommand cmd = new SqlCommand(str, connect1);
        //cmd.ExecuteNonQuery();
        dynamic idd = cmd.ExecuteScalar();
        connect1.Close();

        Response.Redirect("Dashboard.aspx/?ID="+idd);

    }

    protected void txtMobileNumber_TextChanged(object sender, EventArgs e)
    {


    }



    protected void txtCmpName_TextChanged(object sender, EventArgs e)
    {

    }
}