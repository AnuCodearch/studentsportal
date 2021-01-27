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
<jsp:include page="header.jsp"></jsp:include>
<hr>
<ul>
<%if(session.getAttribute("Name")!=null) 
{%>
<ul class="text-right" style="color:gray;margin-right:25px;">Admin:  <%out.print(session.getAttribute("Name"));%>
</ul> 
</ul> 
<hr>			
				 <center>
				 <p class="col-lg-12">
					<a href="adminhome.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Home</a>
					<a href="viewusers.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">View users</a>
					<a href="logout.jsp" type="button" class="btn btn-lg btn-danger col-lg-2">Logout</a>
				</p>
				</center><br><br>
			
				<h2 align="center" style="color:black;font-family:Cambria;font-size:25px;">Students Data</h2>
				<br>
			    <form method="get" action="Adminservlet">
                     
                	<TABLE class="table table-bordered table-striped">
           				 <tr class="danger">
           				   
           				   <Th>Student_id</Th>
               			 	<TH>Name</TH>
               			 	<TH>E-mail_id</TH>
              
                         	<TH>Date_of_birth</TH>                         	
                         	
 							<TH >Contact </TH>
           				 </TR>          				
         				
				 <% 
				 UserRegisterDao dao=new UserRegisterDao();
           					dao.makeConnection();
              			ResultSet rs=dao.selectAllUsers();
						while(rs.next())
            			 {
        		%> 
           		<TR>
               		<TD style="color:black">  <%= rs.getString(1) %> </TD>
               		<TD style="color:black"> <%= rs.getString(2) %> </TD>
               		<TD style="color:black"> <%= rs.getString(3) %> </TD>
               	
               		<TD style="color:black">   <%= rs.getString(7) %> </TD> 
               		
               		<TD><a href="del.jsp?id=<%= rs.getString(1) %>"><span style="color:red;">Delete</span></a></td>
					
				
               
      		  <%  }  %>
            
      			</TR>
         </TABLE>                                                                                                    
                    
         </form> 
      	<br>
						
						
						
						
						
						
					


		
		
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
<!-- search-jQuery -->
<script src="js/main.js"></script>
		
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
<!--js for bootstrap working-->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->

 <%}

else
{%>

<%response.sendRedirect("userlogin.jsp");%>

<% }%>
 <br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
