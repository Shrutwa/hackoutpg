<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bidding.aspx.cs" Inherits="Bidding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/template.css" rel="stylesheet" type="text/css" />
<link href="css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #logo
        {
            height: 132px;
            width: 134px;
        }
        .style1
        {
            width: 396px;
            height: 136px;
        }
        .style2
        {
            width: 355px;
            height: 136px;
        }
 .navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  cursor: pointer;
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.show {
  display: block;
}
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <table>
    <tr>
   <td class="style1"><asp:Image ImageURL="dotlogo11.jpg" runat="server" id="logo" /></td>
    <td class="style2"> <center><h1 style="height: 36px">Phenomenal Geeks</h1></center></td>
    <td class="style2" align="right" valign="top"><asp:Label Visible="false" id="lbluname" runat="server"></asp:Label> </td>
    </tr>
    </table>
     <br />
 <div class="navbar">
  <a href="">Home</a>
  <div class="dropdown">
  <button class="dropbtn" onmouseover="myFunction()">
    <i class="fa fa-caret-down">Demographic Area Wise</i>
  </button>
  <div class="dropdown-content" id="myDropdown">
 
   <a href="http://localhost:2071/WebSite9/DisplayImages.aspx">Area Wise Images </a>
    <a href="http://localhost:2071/WebSite9/DisplayImages.aspx">Tree Counting from Image</a>
  </div>
  </div>
</div>
<center>
    </br>
    <br />
    <asp:Label ID="lblsuccess" runat="server" Text="" Visible="False"></asp:Label>

    <br />
    <asp:Label ID="lblArea" runat="server" Text="Enter Area:"/>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtArea" runat="server" AutoPostBack="true" />
<br />
    <asp:Button ID="btnSubmit" runat="server" Text="Search" 
        onclick="btnSubmit_Click" />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Visible="false" 
        DataKeyNames="Relocator_ID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField SelectText="Select" ShowSelectButton="true" /> 
        
            <asp:BoundField DataField="Relocator_ID" HeaderText="Relocator_ID" 
                ReadOnly="True" SortExpression="Relocator_ID" />
            <asp:BoundField DataField="Relocator_Name" HeaderText="Relocator_Name" 
                SortExpression="Relocator_Name" />
            <asp:BoundField DataField="Relocator_price_per_foot" 
                HeaderText="Relocator_price_per_foot" 
                SortExpression="Relocator_price_per_foot" />
                    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hpgConnectionString %>" 
        SelectCommand="SELECT [Relocator_ID], [Relocator_Name], [Relocator_price_per_foot], [Relocator_location] FROM [Relocator_Details]">
    </asp:SqlDataSource>
    
    <br />
    <br />
    <br />
    <table>
    <tr>
    <td><asp:Label runat="server" ID="lblTrees" Visible="false" Text="Enter Number of Trees"></asp:Label></td>
    <td><asp:TextBox ID="txtTrees" runat="server" Visible="false"/></td>
    </tr>
    <tr>
    <td></td>
    <td><asp:Button ID="BtnNext" runat="server" Text="PlaceOrder" onclick="BtnNext_Click" Visible=false/></td>
    </tr>
    </table>

</center>
<script>
    /* When the user clicks on the button, 
    toggle between hiding and showing the dropdown content */
    function myFunction() {

        document.getElementById("myDropdown").classList.toggle("show");
    }

    // Close the dropdown if the user clicks outside of it
    window.onclick = function (e) {
        if (!e.target.matches('.dropbtn')) {
            var myDropdown = document.getElementById("myDropdown");
            if (myDropdown.classList.contains('show')) {
                myDropdown.classList.remove('show');
            }
        }
    }
</script>
 <asp:Label ID="LabelID" runat="server" Text="" Visible="False"></asp:Label>
 <asp:Label ID="LabelEmailID" runat="server" Text="" Visible="False"></asp:Label>
    </form>

</body>
</html>
