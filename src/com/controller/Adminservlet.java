package com.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.AdminBean;


/**
 * Servlet implementation class Adminservlet
 */
@WebServlet("/Adminservlet")
public class Adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String btn=request.getParameter("submit");
		PrintWriter out=response.getWriter();
		
		
		if(btn.equals("Login"))
		{
			String name,password;
			//boolean login=false;
			System.out.println("in Administrator login servlet..");
			
			name=request.getParameter("name");
			password=request.getParameter("password");
		    System.out.println("name="+name+"password="+password);
			 
		   AdminBean bean=new AdminBean();
			bean.setName(name);
			bean.setPassword(password);
			
			
			boolean i;
			try {
				i = bean.adminlogin();
	
			
			if(i){
				
				HttpSession session=request.getSession(true);
				session.setAttribute("Name", name);
				
				
			  	out.println("<script type=\"text/javascript\">");
			       out.println("alert('Login SucessFul');");
			       out.println("location='adminhome.jsp';");
			       out.println("</script>");	   
			}
				
		    
			else{
				
				out.println("<script type=\"text/javascript\">");
			       out.println("alert('name and Password is incorrect');");
			       out.println("location='adminlogin.jsp';");
			       out.println("</script>");
				
				/*request.setAttribute("msg","Email and Password is incorrect");
				JOptionPane.showMessageDialog(null, "Email and Password is incorrect");
				request.getRequestDispatcher("administratorlogin.jsp").include(request, response);*/
			}
			}
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
		
	}

