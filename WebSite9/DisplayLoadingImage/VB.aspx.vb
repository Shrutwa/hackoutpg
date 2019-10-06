Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Partial Class VB
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim script As String = "$(document).ready(function () { $('[id*=btnSubmit]').click(); });"
            ClientScript.RegisterStartupScript(Me.GetType, "load", script, True)
        End If
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Add Fake Delay to simulate long running process.
        System.Threading.Thread.Sleep(5000)
        LoadCustomers()
    End Sub

    Private Sub LoadCustomers()
        Dim strConnString As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
        Dim query As String = "SELECT * FROM Customers WHERE Country = @Country OR @Country = ''"
        Dim cmd As SqlCommand = New SqlCommand(query)
        cmd.Parameters.AddWithValue("@Country", ddlCountries.SelectedItem.Value)
        Dim con As SqlConnection = New SqlConnection(strConnString)
        Dim sda As SqlDataAdapter = New SqlDataAdapter
        cmd.Connection = con
        sda.SelectCommand = cmd
        Dim ds As DataSet = New DataSet
        sda.Fill(ds, "Customers")
        gvCustomers.DataSource = ds
        gvCustomers.DataBind()
    End Sub
End Class


