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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "hwa", "alert('Email or Password is Wrong, Login Again');", true);
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        SqlConnection connect2 = new SqlConnection(@"Data Source=kdp;Initial Catalog=hpg;Integrated Security=True");
        connect2.Open();
        SqlCommand cmd2 = new SqlCommand("Select * from CustomerDetails where Company_EmailID='" + txtID.Text+"'"   , connect2);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        

        if (txtpwd.Text == ds.Tables[0].Rows[0]["Password"].ToString())
        {
            Response.Redirect("Dashboard.aspx/?ID="+ds.Tables[0].Rows[0]["Company_ID"].ToString());
        }
        else
        {
            Response.Redirect("Login.aspx");   
        }
    }
}