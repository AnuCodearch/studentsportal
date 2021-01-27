<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>


	 <% try{
	     Class.forName("com.mysql.jdbc.Driver");
	     System.out.println("driver loaded..");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Data", "root", "root");
	   System.out.println("connection done..");
	   
	   Statement st=con.createStatement();
	   String id = request.getParameter("id");
	   String sql="SELECT * FROM SolutionRegister where id="+id;
	   ResultSet rs=st.executeQuery(sql);
	   while(rs.next()){%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>update</h1>
<form method="post" action="updatepro.jsp">
<input type="text" name="id" value="<%=rs.getString(1) %>">
<br>
First name:<br>
<input type="text" name="name" value="<%=rs.getString(2) %>">
<br>
Last name:<br>
<input type="text" name="email" value="<%=rs.getString(3) %>">
<br>
City name:<br>
<input type="text" name="dob" value="<%=rs.getString(6) %>">
<br>
Email Id:<br>
<input type="text" name="contact" value="<%=rs.getString(7) %>">
<br><br>
<input type="submit" value="submit">
</form>
<%} con.close();}catch(Exception e){e.printStackTrace();}%>


</body>
</html>
