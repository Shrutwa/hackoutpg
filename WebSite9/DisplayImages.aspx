<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayImages.aspx.cs" Inherits="DisplayImages" %>

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
    <td class="style1"><img src="dotlogo11.jpg" id="logo"/></td>
    <td class="style2"> <center><h1 style="height: 36px">Phenomenal Geeks</h1></center></td>
    
    <td class="style2" align="right" valign="top"><asp:Label Visible="false" id="lbluname" runat="server"></asp:Label> </td>
    </tr>
    </table>
     <br />
 <div class="navbar">
  <a href="">Home</a>
  <div class="dropdown">
  <button class="dropbtn" onmouseover="myFunction()">Demographic Area Wise
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-content" id="myDropdown">
   <a href="http://localhost:2071/WebSite9/DisplayImages.aspx">Area Wise Images </a>
    <a href="http://localhost:2071/WebSite9/DisplayImages.aspx">Tree Counting from Image</a>
  </div>
  </div>
</div>
<br />
<br />

<table>
<tr>
<td><asp:Image runat="server" ImageUrl="image1.jpg" /></td>
<td><asp:Image ID="Image1" runat="server" ImageUrl="contour1.png" /></td>
</tr>
<tr>
<td><asp:Image ID="Image2" runat="server" ImageUrl="image3.jpg" Height="275px" 
        Width="289px" /></td>
<td><asp:Image ID="Image3" runat="server" ImageUrl="contour3.png" /></td>
</tr>
<tr>
<td><asp:Image ID="Image6" runat="server" ImageUrl="image8.jpg" /></td>
<td><asp:Image ID="Image7" runat="server" ImageUrl="contour8.png" /></td>
</tr>
<tr>
<td><asp:Image ID="Image8" runat="server" ImageUrl="image10.jpg" /></td>
<td><asp:Image ID="Image9" runat="server" ImageUrl="contour10.png" /></td>
</tr>
</table>
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
