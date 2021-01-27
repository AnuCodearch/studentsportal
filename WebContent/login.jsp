<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <!-- 	===============================================================================================	
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
	
	<title>Insert title here</title>
		<meta charset="utf-8">
		<title>RegistrationForm_v4 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
		<style>
		/* body{background-image:url("images/student-login.jpg");
			background-repeat:no-repeat;
			} */
		</style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
		<center>
			<div class="col-lg-12 loginbg">
				<img src="images/student-login.jpg" class="col-lg-4" class="img-responsive">
				<br><br><br>
				<form action="Registerservlet" method="post" class="col-lg-3">
					<h3></h3>
					
					<input type="text" placeholder="email" class="form-control" name="email">
					<br><br>
					
					<input type="password" placeholder="Password" class="form-control" name="password">
					<br><br>
					
					<a href="index.jsp"><input type="submit" value="Login" name="submit" class="btn btn-danger btn-lg btn-block"/></a>
					<br>
					<h6>Not yet registered? <a href="register.jsp">Register</a></h6>
					<br>
				</form>
			</div>
			<br>
		</center>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>


