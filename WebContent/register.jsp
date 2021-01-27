<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v4 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">

	</head>

	<body>

		<jsp:include page="header.jsp"></jsp:include>
		
	
<center><br>
				<form action="Registerservlet" method="post">
					<h3 style="color:gray">Registration</h3>
					<br>
						<input type="number" placeholder="id" class="form-control col-lg-4"  name="id" pattern="[0-9]{2}" required><br>
									
						<input type="text" placeholder="name" class="form-control col-lg-4" name="name" required><br>
					
						<input type="email" placeholder="email" class="form-control col-lg-4" name="email" required>
						<br>
						
						<input type="password" placeholder="password" class="form-control col-lg-4" name="password" required><br>
						
						<input type="password" placeholder="confirmpassword" class="form-control col-lg-4" name="confirmpassword"><br>
						
						<input type="text" placeholder="gender" class="form-control col-lg-4" name="gender"><br>
						
						<input type="date" placeholder="dob" class="form-control col-lg-4" name="dob"><br>
						
						<input type="number" placeholder="contact" class="form-control col-lg-4" pattern="[789][0-9]{10}" name="contact"><br>
						
						
						<input type="checkbox" checked> I agree all statement in <a href="#">Terms & Conditions</a>
						<br><br>
						
						<input type="submit" value="SignUp" name="submit" class="btn btn-danger btn-lg btn-block col-lg-4"/>
						<p>Already Have account? <a href="login.jsp">Login</a></p>
				</form>
		</center>
		<jsp:include page="footer.jsp"></jsp:include>
				
	</body>
</html>