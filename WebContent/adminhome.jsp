<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<meta charset="utf-8">
		<title>RegistrationForm_v4 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
</head>
<body>	
<jsp:include page="header.jsp"></jsp:include>

		<center>
			<hr>
			
			<img src="images/admin.png" style="height:230px;width:23s0px;">						
			
				<form method="post">
					
					<br><br>
				<center>
				 <p class="col-lg-12">
					<a href="userhome.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Home</a>
					<a href="viewusers.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">View users</a>
					<a href="logout.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Logout</a>
				</p>
				</center><br><br>
						<!-- <button><a href="viewusers.jsp">View users</a></button>
					
					
						<button><a href="logout.jsp">Admin logout</a></button> -->
					
				</form>
<hr><br>
<jsp:include page="footer.jsp"></jsp:include>
			
</body>
</html>