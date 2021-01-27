<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String dob=request.getParameter("dob");
try
{
	   Class.forName("com.mysql.jdbc.Driver");
	     System.out.println("driver loaded..");

	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Data", "root", "root");
	   System.out.println("connection done..");
String sql="Update SolutionRegister set id=?,name=?,email=?,contact=?,dob=? where id="+id;
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3, email);
ps.setString(4, contact);
ps.setString(5, dob);
int i=ps.executeUpdate();

if(i>1)
{
out.print("Record updated....");
}
else
{
out.print("There is a problem in updating Record");
response.sendRedirect("index.jsp");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}

%>
</body>
</html>