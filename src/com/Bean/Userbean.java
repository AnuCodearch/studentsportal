package com.Bean;

import com.dao.UserRegisterDao;

public class Userbean {

	private String id,name,email,password,confirmpassword,dob,contact,gender;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public int insertData() 
	{
		String query="insert into SolutionRegister values(?,?,?,?,?,?,?,?)";
		UserRegisterDao dao=new UserRegisterDao();
		dao.makeConnection();					///////-------Db connection so dao obj created where makeConnection() defined
		
		int i=dao.insertData(query,this);
		return i;
	}

	
	public String userlogin()
	{
		String query="select * from SolutionRegister where email=? and password=?";
		
		UserRegisterDao dao=new UserRegisterDao();
		dao.makeConnection();
		String rs=dao.userlogin(query,this);
		
		return rs;
		
		
	}
	
	/////////////////////////////delete method//////////////////////////

	
	
	
	
}
