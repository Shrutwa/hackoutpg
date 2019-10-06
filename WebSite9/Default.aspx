<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

    <%@ Register TagPrefix="CuteWebUI" Namespace="CuteWebUI" Assembly="CuteWebUI.AjaxUploader" %> 

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/template.css" rel="stylesheet" type="text/css" />
<link href="css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />



<script src="js/jquery-1.6.min.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>

        

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery("#form1").validationEngine();


    });
</script>
 <script type="text/javascript" language="javascript">
     $(document).ready(function () {
         $('#btnSubmit').click(function () {
             if ($("#ddlCountry").val() > 0) {
                 return true;
             }
             else {
                 alert('Please select Country')
                 return false;
             }
         })
     });

</script>
 <script type="text/javascript" language="javascript">
     $(document).ready(function () {
         $('#btnSubmit').click(function () {
             if ($("#ddlState").val() > 0) {
                 return true;
             }
             else {
                 alert('Please select State')
                 return false;
             }
         })
     });

</script>
 <script type="text/javascript" language="javascript">
     $(document).ready(function () {
         $('#btnSubmit').click(function () {
             if ($("#ddlCity").val() > 0) {
                 return true;
             }
             else {

                 alert('Please select City')

                 return false;
             }
         })
     });

</script>

 <script type="text/javascript">
     function ShowProgress() {
         setTimeout(function () {
             var modal = $('<div />');
             modal.addClass("modal");
             $('body').append(modal);
             var loading = $(".loading");
             loading.show();
             var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
             var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
             loading.css({ top: top, left: left });
         }, 200);
     }

     $('form').live("submit", function () {
         ShowProgress();
     });
</script>

<script type="text/javascript">

    //prevent the default handling by cancelling the event
    document.ondragover = document.ondragenter = document.ondrop = function (e) {
        e.preventDefault();
        return false;
    }

    // NOTE : Both WebForms/MVC Uploader use the same JavaScript API

    //Fires after all uploads are complete and submit the form
    function CuteWebUI_AjaxUploader_OnPostback() {

        //submit form
        document.forms[0].submit();

        //return false to cancel the default form submission
        return false;
    }
	</script>


    
    
    <style type="text/css">
        .content {
			text-align: left;
			width: 640px;
			border: solid 5px #CBCAC6;
			background-color: #f9f9f9;
			padding: 20px 20px 40px 20px;
			font-family: Segoe UI, Arial,Verdana,Helvetica,sans-serif;
			font-size: 80%;
			margin: 0 auto;
            height: 642px;
          
        }
        #DropZone {
			margin-top: 40px;
			margin-bottom: 20px;
			padding: 100px 0 80px 0;
			text-align: center;
			border: dashed 3px gray;
			background-image: url('cloud-upload3.png');
			background-repeat: no-repeat;
			background-size: 100px 100px;
			background-position: 50% 20px;
			width: 650px;
		}

			#DropZone p {
				font-size: 15px;
			}

		#InsertButton {
			-moz-box-shadow: 0px 10px 40px -14px #3e7327;
			-webkit-box-shadow: 0px 10px 40px -14px #3e7327;
			box-shadow: 0px 10px 40px -14px #3e7327;
			background: linear-gradient(to bottom, #77b55a 5%, #72b352 100%);
			background-color: #77b55a;
			-moz-border-radius: 4px;
			-webkit-border-radius: 4px;
			border-radius: 4px;
			border: 1px solid #4b8f29;
			display: inline-block;
			cursor: pointer;
			color: #ffffff;
			font-family: Arial;
			font-size: 18px;
			font-weight: bold;
			padding: 9px 27px;
			text-decoration: none;
			text-shadow: 0px 1px 0px #5b8a3c;
		}

			#InsertButton:hover {
				background: linear-gradient(to bottom, #72b352 5%, #77b55a 100%);
				background-color: #72b352;
			}

			#InsertButton:active {
				position: relative;
				top: 1px;
			}


		select {
        }

		fieldset {
			background-color: White;
		}
        .modal
    {
        position: fixed;
        top: 0;
        left: 0;
        background-color: black;
        z-index: 99;
        opacity: 0.8;
        filter: alpha(opacity=80);
        -moz-opacity: 0.8;
        min-height: 100%;
        width: 100%; 
      
    }
    .neww
    {
      float:right;
    position:relative;   
    background-image:url('Abstract%20Design%20Blue%20Background%20Vector.jpg');
    background-position:center;
            top: 0px;
            left: -2px;
            width: 548px;
            height: 259px;
        }
    .loading
    {
        font-family: Arial;
        font-size: 10pt;
        border: 5px solid #67CFF5;
        width: 100px;
        height: 100px;
        display: none;
        position: fixed;
        background-color: White;
        z-index: 999;
    }
        .style2
        {
            width: 104px;
        }
        .style3
        {
            height: 88px;
            width: 104px;
        }
        .style7
        {
            width: 104px;
            height: 33px;
        }
        .style8
        {
            height: 33px;
            margin-left: 40px;
        }
        .style15
        {
            width: 104px;
            height: 80px;
        }
        .style16
        {
            height: 80px;
        }
        .style17
        {
            width: 104px;
            height: 68px;
        }
        .style18
        {
            height: 68px;
        }
        .style19
        {
            width: 95px;
            width: 104px;
        }
        .style20
        {
            height: 66px;
        }
        .style27
        {
            height: 23px;
            width: 104px;
        }
         .style33
        {
            height: 23px;
            }
        .validate[required]
        {}
        .validate[required]
        {}
        .validate[required]
        {}
        .validate[required]
        {}
        .validate[required]
        {}
        .validate[required]
        {}
        .validate[required]
        {}
        </style>
</head>
<body style="background-image:url('fondo_tecnologia.jpg'); background-position:center; background-attachment:scroll">
    <form id="form1" runat="server">

    <center><h1>Customer Login</h1>
     <font color="#F1F0FF"><i><marquee id="Marquee1" onmouseover="this.scrollamount=2" onmouseout="this.scrollamount=8"  bgcolor="#8C489F" behavior="alternate" contenteditable="false" direction="left" hidefocus="hidefocus" runat="server" style="scrollbar-3dlight-color:Brown; cursor:crosshair; float:right; " >Please Enter The Details Correctly , No Invalid Information Should Be Provided </marquee></i></font>&nbsp;
        <table style="width:30%; margin-left: 384px; margin-right: 367px; margin-bottom: 9px; margin-top: 0px;">
        
            
                <tr>
                <td class="style7">
                    <asp:Label ID="lblCmpName" runat="server" Text="Company Name" ></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtCmpName" runat="server" CssClass="validate[required,custom[onlyLetterSp]]"  class="one"
                        ontextchanged="txtCmpName_TextChanged" ToolTip=" Enter First Name "   
                        Height="19px" Width="137px"></asp:TextBox>
                         
                                                            
                </td>
                
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="lblCmpDomain" runat="server" Text="Company Domain" ></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtCmpDomain" runat="server" CssClass="validate[required,custom[onlyLetterSp]]"  class="one"
                        ontextchanged="txtCmpName_TextChanged" ToolTip=" Enter Domain"   
                        Height="19px" Width="137px"></asp:TextBox>
                         
                                                            
                </td>
                
            </tr>
            <tr>
            
            <td class="style2">
                <asp:Label ID="lblMobileNumber" runat="server" Text="Mobile Number"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtMobileNumber" runat="server" MaxLength="10"  class="one"
                    CssClass="validate[required,custom[integer],maxSize[10],minSize[10]]" 
                    ontextchanged="txtMobileNumber_TextChanged"></asp:TextBox>
                    
                </td> 
                
         
            </tr>
            <tr>
            
            <td class="style27">
                <asp:Label ID="lblEmailID" runat="server" Text="Email ID"></asp:Label>
                </td>
            <td class="style33">
              
                <asp:TextBox ID="txtEmailID" runat="server" CssClass="validate[required,custom[email]" class="one"></asp:TextBox>
                

                
                </td> 
            
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:TextBox ID="txtDOB" runat="server" ontextchanged="txtDOB_TextChanged"   CausesValidation="true"
                    placeholder="mm/dd/yyyy" style="margin-top: 0px"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtDOB_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtDOB">
                    </cc1:CalendarExtender>
                    &nbsp;<asp:ImageButton onmouseover="this.src='pages_tearing_off_calendar_md_wm.gif'"
                    onmouseout="this.src='timely_dribbble.gif'" ToolTip="calender"
                    ImageUrl="~\Images\801986.png" ID="ImageButton1" runat="server"     onclick="ImageButton1_Click"  
                    Height="19px" Width="30px" style="margin-top: 9px; margin-left: 4px;" 
                        CausesValidation="False" /><br />
                    <asp:DropDownList runat="server" ID="ddlMonth" ToolTip="Select Month from Here" 
                        AutoPostBack="true" OnSelectedIndexChanged="SetCalendarVisibleDate" 
                        Visible="false" Height="29px" Width="89px">
    <asp:ListItem Text="January" Value="1" />
    <asp:ListItem Text="February" Value="2" />
    <asp:ListItem Text="March" Value="3" />
    <asp:ListItem Text="April" Value="4" />
    <asp:ListItem Text="May" Value="5" />
    <asp:ListItem Text="June" Value="6" />
    <asp:ListItem Text="July" Value="7" />
    <asp:ListItem Text="August" Value="8" />
    <asp:ListItem Text="September" Value="9" />
    <asp:ListItem Text="October" Value="10" />
    <asp:ListItem Text="November" Value="11" />
    <asp:ListItem Text="December" Value="12" />
</asp:DropDownList>
&nbsp;
<asp:DropDownList runat="server" ID="ddlYear" AutoPostBack="true" ToolTip="select year from here"  OnSelectedIndexChanged="SetCalendarVisibleDate" Visible="false">
<asp:ListItem Text="2016" Value="2016" />
<asp:ListItem Text="2015" Value="2015" />
<asp:ListItem Text="2014" Value="2014" />
<asp:ListItem Text="2013" Value="2013" />
<asp:ListItem Text="2012" Value="2012" />
<asp:ListItem Text="2011" Value="2011" />
<asp:ListItem Text="2010" Value="2010" />
<asp:ListItem Text="2009" Value="2009" />
<asp:ListItem Text="2008" Value="2008" />
<asp:ListItem Text="2007" Value="2007" />
<asp:ListItem Text="2006" Value="2006" />
<asp:ListItem Text="2005" Value="2005" />
<asp:ListItem Text="2004" Value="2004" />
<asp:ListItem Text="2003" Value="2003" />
<asp:ListItem Text="2002" Value="2002" />
<asp:ListItem Text="2001" Value="2001" />
<asp:ListItem Text="2000" Value="2000" />
<asp:ListItem Text="1999" Value="1999" />
<asp:ListItem Text="1998" Value="1998" />
<asp:ListItem Text="1997" Value="1997" />
<asp:ListItem Text="1996" Value="1996" />
<asp:ListItem Text="1995" Value="1995" />
<asp:ListItem Text="1994" Value="1994" />
<asp:ListItem Text="1993" Value="1993" />
<asp:ListItem Text="1992" Value="1992" />
<asp:ListItem Text="1991" Value="1991" />
<asp:ListItem Text="1990" Value="1990" />
<asp:ListItem Text="1989" Value="1989" />
<asp:ListItem Text="1988" Value="1988" />
<asp:ListItem Text="1987" Value="1987" />
<asp:ListItem Text="1986" Value="1986" />
<asp:ListItem Text="1985" Value="1985" />
<asp:ListItem Text="1984" Value="1984" />
<asp:ListItem Text="1983" Value="1983" />
<asp:ListItem Text="1982" Value="1982" />
<asp:ListItem Text="1981" Value="1981" />
<asp:ListItem Text="1980" Value="1980" />
<asp:ListItem Text="1979" Value="1979" />
<asp:ListItem Text="1978" Value="1978" />
<asp:ListItem Text="1977" Value="1977" />
<asp:ListItem Text="1976" Value="1976" />
<asp:ListItem Text="1975" Value="1975" />
<asp:ListItem Text="1974" Value="1974" />
<asp:ListItem Text="1973" Value="1973" />
<asp:ListItem Text="1972" Value="1972" />
<asp:ListItem Text="1971" Value="1971" />
<asp:ListItem Text="1970" Value="1970" />
<asp:ListItem Text="1969" Value="1969" />
<asp:ListItem Text="1968" Value="1968" />
<asp:ListItem Text="1967" Value="1967" />
<asp:ListItem Text="1966" Value="1966" />
<asp:ListItem Text="1965" Value="1965" />
<asp:ListItem Text="1964" Value="1964" />
<asp:ListItem Text="1963" Value="1963" />
<asp:ListItem Text="1962" Value="1962" />
<asp:ListItem Text="1961" Value="1961" />
<asp:ListItem Text="1960" Value="1960" />
<asp:ListItem Text="1959" Value="1959" />
<asp:ListItem Text="1958" Value="1958" />
<asp:ListItem Text="1957" Value="1957" />
<asp:ListItem Text="1956" Value="1956" />
<asp:ListItem Text="1955" Value="1955" />
<asp:ListItem Text="1954" Value="1954" />
<asp:ListItem Text="1953" Value="1953" />
<asp:ListItem Text="1952" Value="1952" />
<asp:ListItem Text="1951" Value="1951" />
<asp:ListItem Text="1950" Value="1950" />
<asp:ListItem Text="1949" Value="1949" />
<asp:ListItem Text="1948" Value="1948" />
<asp:ListItem Text="1947" Value="1947" />
<asp:ListItem Text="1946" Value="1946" />
<asp:ListItem Text="1945" Value="1945" />
<asp:ListItem Text="1944" Value="1944" />
<asp:ListItem Text="1943" Value="1943" />
<asp:ListItem Text="1942" Value="1942" />
<asp:ListItem Text="1941" Value="1941" />
<asp:ListItem Text="1940" Value="1940" />
<asp:ListItem Text="1939" Value="1939" />
<asp:ListItem Text="1938" Value="1938" />
<asp:ListItem Text="1937" Value="1937" />
<asp:ListItem Text="1936" Value="1936" />
<asp:ListItem Text="1935" Value="1935" />
<asp:ListItem Text="1934" Value="1934" />
<asp:ListItem Text="1933" Value="1933" />
<asp:ListItem Text="1932" Value="1932" />
<asp:ListItem Text="1931" Value="1931" />
<asp:ListItem Text="1930" Value="1930" />
<asp:ListItem Text="1929" Value="1929" />
<asp:ListItem Text="1928" Value="1928" />
<asp:ListItem Text="1927" Value="1927" />
<asp:ListItem Text="1926" Value="1926" />
<asp:ListItem Text="1925" Value="1925" />
<asp:ListItem Text="1924" Value="1924" />
<asp:ListItem Text="1923" Value="1923" />
<asp:ListItem Text="1922" Value="1922" />
<asp:ListItem Text="1921" Value="1921" />
<asp:ListItem Text="1920" Value="1920" />
<asp:ListItem Text="1919" Value="1919" />
<asp:ListItem Text="1918" Value="1918" />

</asp:DropDownList> 
<div style=" float:inherit">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" 
                    Font-Names="Verdana" Font-Size="9pt" ForeColor="#00CC66" Height="190px" 
                    onselectionchanged="Calendar1_SelectionChanged" 
                    SelectedDate="2016-06-12" Visible="False" 
                    Width="350px" PrevMonthText="" 
                    SelectionMode="DayWeek" 
                    VisibleDate="2016-06-12" NextPrevFormat="FullMonth" BorderStyle="Dotted" 
                        EnableTheming="True">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" 
                            VerticalAlign="Bottom" />
                    <OtherMonthDayStyle  ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" 
                        ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                   
                </asp:Calendar>
     </div>           
   <asp:RegularExpressionValidator ID="rglrInsertStartDate" runat="server" 
       ErrorMessage="Please enter a valid date!" ControlToValidate="txtDOB"  
        ValidationExpression="((0?[1-9]|1[012])/(0?[1-9]|[12][0-9]|3[01])/\d{4})|((0?[1-9]|[12][0-9]|3[01])-(Jan|Feb|Mar|Apr|May|Ju[nl]|Aug|Sep|Oct|Nov|Dec)-\d{4})"
        SetFocusOnError="true" style="color: #FF5050"></asp:RegularExpressionValidator>              
                
            </td>
                
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style16">
                    <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="true"
                        DataTextField="CountryName" DataValueField="CountryID" 
                        onselectedindexchanged="ddlCountry_SelectedIndexChanged1" Height="17px" 
                        Width="106px" AppendDataBoundItems="true">
                  <asp:ListItem Text="Select Country" Value="" />     
                    </asp:DropDownList>
                    
            

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:EmployeeRegistrationConnectionString %>" 
                        SelectCommand="SELECT [CountryID], [CountryName] FROM [Country]" >
                    </asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td class="style17">    
                    <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                </td>
                <td class="style18">
                    <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource2" AutoPostBack="true"
                        DataTextField="StateName" DataValueField="StateID" 
                        onselectedindexchanged="ddlState_SelectedIndexChanged1" Height="16px" 
                        Width="107px" AppendDataBoundItems="true">
                        <asp:ListItem Text="Select State" Value="" />
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:EmployeeRegistrationConnectionString %>" 
                        SelectCommand="">
                    </asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>

            <td class="style19">
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
            <td class="style20">
                <asp:DropDownList ID="ddlCity" runat="server" DataSourceID="SqlDataSource3" AutoPostBack="true"
                    DataTextField="CityName" DataValueField="CityID" Height="16px" 
                    Width="107px" AppendDataBoundItems="true" CausesValidation="true" >
                    <asp:ListItem Text="Select City" Value="" />
                </asp:DropDownList>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCity"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EmployeeRegistrationConnectionString %>" 
                    SelectCommand=""></asp:SqlDataSource>
                </td>

            </tr>
            <tr>
            <td class="style2">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                </td>
            <td>
                <textarea runat="server" id="txtarAddress" cols="20" name="S1" rows="3" placeholder="Enter Address Here"></textarea></td>
            </tr>
            <tr>
            
            <td class="style27">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                </td>
            <td class="style33">
              
                <asp:TextBox ID="txtPassword" runat="server" class="one"></asp:TextBox>
                

                
                </td> 
            
            </tr>
            

<tr>
            
            <td class="style2">
            
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" style="height: 26px" CausesValidation="True" />
                </td> 
            
            </tr>
                 </table>
                 <div class="loading" align="justify" >
    Loading.<br />
    <br />
    <img src="loader.gif" alt=""  />
</div>

                 </center>
            

    </form>
</body>
</html>
