<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
		<meta charset="utf-8">
		<title>RegistrationForm_v4 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

 <!-- 	===============================================================================================	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
===============================================================================================
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
===============================================================================================
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
===============================================================================================
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
===============================================================================================
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
===============================================================================================	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
===============================================================================================
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
=============================================================================================== -->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!-- =============================================================================================== --> 
	<link rel="stylesheet" type="text/css" href="css/mycss.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<img src="images/studen-login.jpg" class="col-lg-5" class="img-responsive">
<hr>
<center>
				<form action="Adminservlet" method="post">
					<br><br><br><br>
					
				<h3 style="color:gray">Admin Login</h3><br>
						<input type="text" placeholder="name" class="form-control col-lg-3" name="name"><br>
					
						<input type="password" placeholder="password" class="form-control col-lg-3" style="font-size: 15px;" name="password"><br>
				
					    <input type="submit" value="Login" name="submit" class="btn btn-danger btn-lg btn-block col-lg-3">
				<br><br><br><br><br><br><br><br><br>
					
				</form>
</center><hr>
<jsp:include page="footer.jsp"></jsp:include>		
</body>
</html>



