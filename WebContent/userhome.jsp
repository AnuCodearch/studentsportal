<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	
<title>Insert title here</title>
</head>

<body onLoad="initGeolocation()">
<jsp:include page="header.jsp"></jsp:include>
		<img src="images/bookfeather.jpg" style="height:635px;width:100%;position:absolute;opacity:0.4;">						
<ul>
				
                 <%if(session.getAttribute("Username")!=null) ///////////-------if username is something then show user's window 
				 {%>

                  <ul style="color:red;">
                  <%  out.print(session.getAttribute("Username"));%>
</ul> 
 
										
				 <!--  <ul>
					<li class="active"><a href="userhome.jsp">Home</a></li><br>
					<li><a href="userprofile.jsp">Profile</a></li><br>
					<li><a href="#">Search</a></li><br>
					<li><a href="logout.jsp">Logout</a></li><br>
				</ul> -->
				<br><br><br><br><br><br><br><br><br><br>
				<center>
				 <p class="col-lg-12">
					<a href="userhome.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Home</a>
					<a href="userprofile.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Profile</a>
					<a href="#" type="button" class="btn btn-lg btn-danger col-lg-2">Search</a>
					<a href="logout.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Logout</a>
				</p>
				</center><br><br><br><br><br><br><br><br><br><br><br><br>

 <%}

else
{%>

<%response.sendRedirect("index.jsp");%>

<% }%>
 
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>