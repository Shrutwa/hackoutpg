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

public partial class Bidding : System.Web.UI.Page
{
    int rid = 0;
    int cid = 0;
    float price = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cid = int.Parse(Request.QueryString["ID"]);
        LabelID.Text = Request.QueryString["ID"];

        SqlConnection connect2 = new SqlConnection(@"Data Source=kdp;Initial Catalog=hpg;Integrated Security=True");
        connect2.Open();
        SqlCommand cmd2 = new SqlCommand("Select * from CustomerDetails where Company_ID='" + LabelID.Text + "' ", connect2);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lbluname.Visible = true;
        lbluname.Text = "Welcome, " + ds.Tables[0].Rows[0]["Company_Name"].ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtArea.Text != null)
        {
            SqlDataSource1.SelectCommand = "Select Relocator_ID,Relocator_Name,Relocator_price_per_foot from Relocator_Details where Relocator_Location='" + txtArea.Text + "'";
            GridView1.Visible = true;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         rid = int.Parse(GridView1.SelectedRow.Cells[1].Text);
         price = float.Parse(GridView1.SelectedRow.Cells[3].Text);
         cid = int.Parse(Request.QueryString["ID"]);
        if (rid != null)
        {
            lblTrees.Visible = true;
            txtTrees.Visible = true;
            BtnNext.Visible = true;
        }
    }
    protected void BtnNext_Click(object sender, EventArgs e)
    {
        rid = int.Parse(GridView1.SelectedRow.Cells[1].Text);
        price = float.Parse(GridView1.SelectedRow.Cells[3].Text);
        cid = int.Parse(Request.QueryString["ID"]);
        if (rid != null)
        {
            SqlConnection connect1 = new SqlConnection(@"Data Source=kdp;Initial Catalog=hpg;Integrated Security=True");
            connect1.Open();
            string str = "INSERT INTO Online_Bidding_Details(Relocator_ID,Company_ID,Price_per_foot,Number_of_Trees) Output Inserted.Company_ID Values('" + rid + "','" + cid + "','" + price + "','" + txtTrees.Text + "')";
            SqlCommand cmd = new SqlCommand(str, connect1);
            //cmd.ExecuteNonQuery();
            dynamic idd = cmd.ExecuteScalar();
            connect1.Close();
            lblsuccess.Visible = true;
            lblsuccess.Text = "Order Placed Successfully";

        }
    }
}