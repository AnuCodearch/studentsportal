<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.UserRegisterDao"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="keywords" content="Sauna Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='//fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!-- 	=============================================================================================== -->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!-- 	=============================================================================================== -->		
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- 	=============================================================================================== -->		
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- 	=============================================================================================== -->	
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!-- 	=============================================================================================== -->	
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!-- 	=============================================================================================== -->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!-- 	=============================================================================================== -->	
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!-- 	=============================================================================================== -->	
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- =============================================================================================== --> 
	<link rel="stylesheet" type="text/css" href="css/mycss.css">
	
 <script type="text/javascript">

onload=function()
{
	 
	var e=document.getElementById("refreshed");
	
	if(e.value=="no")
		e.value="yes";
	else
		{
		e.value="no";
		location.reload(); 
		}
	
	
	}

</script> 

</head>
<body>
<!--/main-header-->
  <!--/banner-section-->
  <jsp:include page="header.jsp"></jsp:include>
  <img src="images/bo.jpg" style="height:635px;width:100%;position:absolute;opacity:0.4;">
<hr>
<p >
                 <%
                // String name=null;
                 if(session.getAttribute("Username")!=null) 

                         {
	
				 String username=(String)session.getAttribute("Username");
				%>
                             <ul class="text-right" style="color:gray;margin-right:25px;">Student: <%out.print(session.getAttribute("Username"));%> </ul>
</p> <hr>
<hr>
			<center>
				 <p class="col-lg-12">
					<a href="userhome.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Home</a>
					<a href="#" type="button" class="btn btn-lg btn-danger col-lg-2">My Profile</a>
					<a href="#" type="button" class="btn btn-lg btn-danger col-lg-2">Search</a>
					<a href="logout.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Logout</a>
				</p>
			</center>
			<hr><hr>
										<!-- <li class="active"><a href="userhome.jsp">Home</a></li>
												<li><a href="userprofile.jsp">Profile</a></li>
												<li><a href="#">Search</a></li>
												<li><a href="logout.jsp">Logout</a></li> -->
										</ul>
		
 <!--//main-header-->

        		
<%UserRegisterDao dao=new UserRegisterDao();
dao.makeConnection();
ResultSet rs=dao.selectUser(username);///////---------taking info of current name
while(rs.next())
{%>
              			<br><br>
                  <center>
                        <table class="table-bordered table-striped col-lg-4 text-center" style="align:center;">
                       		 <tr><th colspan=2>Your profile</th><td style="padding-top: 10px;padding-bottom: 10px">  <br></td></tr>
                       		 <tr><th>UserName</th><td style="padding: 20px">   <%=rs.getString(2) %> <br></td></tr>
                       		 <tr><th>Email</h4></th><td style="padding: 20px">  <%=rs.getString(3) %>  <br></td></tr>
                       		<tr><th>Contact</h4></th><td style="padding: 20px"> <%=rs.getString(7) %> </td></tr>
                       	     <tr><th>DOB</h4></th><td style="padding: 20px"> <%=rs.getString(6) %> </td></tr>
                           
                     		  
                        </table><br>
                        
                        <a href="update.jsp?id=<%= rs.getString(1) %>" type="button" class="btn btn-sm btn-danger col-sm-4">Update</a>
                        
                   </center>
                     <br><br><br>
      					 <%} 
      			

 }

else

response.sendRedirect("login.jsp"); %> 

<!-- //////////////////////////////////////update/////////////////////
 -->
 
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
								
