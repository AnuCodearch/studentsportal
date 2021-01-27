package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.Userbean;

/**
 * Servlet implementation class Registerservlet
 */
@WebServlet("/Registerservlet")
public class Registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registerservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{		// TODO Auto-generated method stub
		
		String btn=request.getParameter("submit");  ///////-------submit is the type of <input>

		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
		
        
        if(btn.equals("SignUp"))       ///////////------for Registration----SignUp is the value attribute from jsp page 
        {
        	String id=request.getParameter("id");
        	String name=request.getParameter("name");
        	String email=request.getParameter("email");
        	String password=request.getParameter("password");
        	String confirmpassword=request.getParameter("confirmpassword");
        	String gender=request.getParameter("gender");
        	String dob=request.getParameter("dob");
        	String contact=request.getParameter("contact");
        	
        //	System.out.println(""+name);
        //	System.out.println(""+email);
        	
        	Userbean bean=new Userbean();   ////////////------object create to access current values
        	bean.setId(id);					////////////------setting current values from getter setter-----using Bean class
        	bean.setName(name);
        	bean.setEmail(email);
        	bean.setPassword(password);
        	bean.setConfirmpassword(confirmpassword);
        	bean.setDob(dob);
        	bean.setContact(contact);
        	bean.setGender(gender);
        	
        	int i=bean.insertData();		///////------inserting data to db------method defined in Beanclass
        	
        	//System.out.println("int   :::::::::::"+i);
        	
        	if(i>0)
        	{
        		out.println("<script type=\"text/javascript\">");
                out.println("alert('registration Successful');");
                out.println("location='login.jsp';");
                out.println("</script>");
               // response.sendRedirect("login.jsp");
        	}
        	else
        	{
        	out.println("<script type=\"text/javascript\">");
            out.println("alert('failed');");
            out.println("location='register.jsp';");
            out.println("</script>");
        	}
        	
        }
        
        if(btn.equals("Login"))
        {
        	String email=request.getParameter("email");			////////---------get from jsp form
        	String password=request.getParameter("password");
        	
            System.out.println("email:"+email+"password:"+password);
            
            Userbean bean=new Userbean();
        	bean.setEmail(email);							///////////----------set values
        	bean.setPassword(password);
        	
        	String i= bean.userlogin();
        	
        	System.out.println("i="+i);        	
        	
        	
        	if(i!=null){
        		HttpSession session=request.getSession(true);
        		session.setAttribute("Name", i);
        		session.setAttribute("Username","" +email); ////////---------- displaying name in profile
        		
        		out.println("<script type=\"text/javascript\">");
        	    out.println("alert('Login Successfully');");
        	    out.println("location='userhome.jsp';");
        	    out.println("</script>");
        		}
        	else{
        		
        		out.println("<script type=\"text/javascript\">");
        	    out.println("alert('Email and Password is incorrect');");
        	    out.println("location='login.jsp';");
        	    out.println("</script>");
        		}
        }}
}