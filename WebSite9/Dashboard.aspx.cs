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

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LabelID.Text = Request.QueryString["ID"];
        
        SqlConnection connect2 = new SqlConnection(@"Data Source=kdp;Initial Catalog=hpg;Integrated Security=True");
        connect2.Open();
        SqlCommand cmd2 = new SqlCommand("Select * from CustomerDetails where Company_ID='" + LabelID.Text + "' ", connect2);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lbluname.Visible = true;
        lbluname.Text ="Welcome, "+ ds.Tables[0].Rows[0]["Company_Name"].ToString();
    }
    protected void btnBidding_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Bidding.aspx/?ID="+LabelID.Text);
    }
}