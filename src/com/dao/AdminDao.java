package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDao {
	Connection con;
	public   Connection makeConnection(){
 		try{
 		      Class.forName("com.mysql.jdbc.Driver");
 		   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Data", "root", "root");
 		}
 		
 		catch(Exception e)
 		{
 			e.printStackTrace();
 		}
 		
		return con;
 	}

	
	
       public ResultSet adminlogin(String query) {
		// TODO Auto-generated method stub
		//boolean login=false;
		ResultSet rs=null;
		try{
			System.out.println("in Administrator login Dao..");
			
		
			Statement st=con.createStatement();
			System.out.println(st);
			System.out.println("in  Admin login");
			rs=st.executeQuery(query);
			System.out.println("query="+rs);
		   System.out.println("  1  Query done in login..");
		
		   
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return rs;
		
	}
       
       
       
       public ResultSet deleteuser(String query){

		try {
		
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from SolutionRegister");
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

}}
