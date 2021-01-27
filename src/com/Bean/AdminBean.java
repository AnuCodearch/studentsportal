package com.Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dao.AdminDao;

public class AdminBean {
String name,password;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

/////////////////////////////-------------------------methods-------------------------///////////////////////////////

public boolean adminlogin()
{
	String query="select * from  Adminlogin where name='"+getName()+"' AND password='"+getPassword()+"'";
	
	AdminDao dao=new AdminDao();
	dao.makeConnection();
	ResultSet rs=dao.adminlogin(query);
	 try
	 {
	   rs.next();
		
		 System.out.println("in administrator bean try");
		   if(getName().equals(rs.getString(1)) && getPassword().equals(rs.getString(2)))
		   {			 
			   return true;	   
		   }
	 }
	 catch(Exception e){
		 e.printStackTrace();
	 }
	return false;	
}

///////////////////-------------------DELETETE-----------------------///////////////////////

public boolean deleteuser(){

try {
	Connection con = null;
	String query="DELETE * from  SolutionRegister where name='"+getName()+"';";
	
	AdminDao dao=new AdminDao();
	dao.makeConnection();
	ResultSet rs=dao.deleteuser(query);
	rs.next();
	
	 System.out.println("in administrator bean try");
	   if(getName().equals(rs.getString(1)))
	   {			 
		   return (rs.getString(1) != null);	   
	   }
	
Statement st=con.createStatement();

while(rs.next())
{
	System.out.println(rs.getInt(1));
}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return false;

}}
