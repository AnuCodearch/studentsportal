package com.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Bean.Userbean;

//import com.Bean.UserBean;


public class UserRegisterDao {
	
	Connection con=null;

	public  Connection makeConnection(){
 		try{
 		      Class.forName("com.mysql.jdbc.Driver");
 		      System.out.println("driver loaded..");
 		
 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Data", "root", "root");
 		    System.out.println("connection done..");
 		}
 		
 		catch(Exception e)
 		{
 			e.printStackTrace();
 		}
 		return con;
 	}
	
	
	
	/* this code is used for insertion */
	public int insertData(String query ,Userbean bean) 
	{
		try{
			System.out.println("inserting..");
			PreparedStatement pst=con.prepareStatement(query); //////////-----inserting data using query
			pst.setString(1,bean.getId());
			pst.setString(2,bean.getName());
			pst.setString(3,bean.getEmail());
			pst.setString(4,bean.getPassword());
			pst.setString(5,bean.getConfirmpassword());
			pst.setString(6, bean.getDob());
			pst.setString(7,bean.getContact());
			pst.setString(8,bean.getGender());
			
			int i=pst.executeUpdate();
			return i;
			
		}catch(Exception e){
			e.printStackTrace();
		
		
		}
		return 0;
	}
	
	
	
	
	
	
	
	
	public String userlogin(String query, Userbean bean) {
		// TODO Auto-generated method stub
		//boolean login=false;
		try{
			System.out.println(" User logging in..");
			String username=bean.getEmail();
			String password=bean.getPassword();
			System.out.println(username+" "+password);  ///////////////------ values get from getter setter 
		   
			PreparedStatement pst=con.prepareStatement(query);	///////////-----select query
			pst.setString(1,username);
			pst.setString(2,password);
			ResultSet rs=pst.executeQuery();
		   
		   if(rs.next())
		   { 
			  String name=rs.getString(2);		////////////----------name return for profile
			   return name;
		   }
		   
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	
	
	
	public ResultSet selectUser(String username) {
		ResultSet rs=null;
		System.out.println("name"+username);
		String sql = "Select * from SolutionRegister where email='"+username+"'";
		try {
			Statement stmt = con.createStatement();
		     rs = stmt.executeQuery(sql);
		
			}catch (Exception e) {
				e.printStackTrace();
			}
		return rs;
	}
	
	
	public ResultSet selectAllUsers() {
		ResultSet rs=null;
		String sql = "Select * from SolutionRegister";
		try {
			Statement stmt = con.createStatement();
		     rs = stmt.executeQuery(sql);
		
			}catch (Exception e) {
				e.printStackTrace();
			}
		return rs;
	}

/////////////////////////////////////delete method/////////////////////////////////////

	
	
}
