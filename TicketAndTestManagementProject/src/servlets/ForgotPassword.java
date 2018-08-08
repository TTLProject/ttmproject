package servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.ForgotPassworddao;
import userbean.Registration;


public class ForgotPassword extends HttpServlet {
	
	private String host;
	private String port;
	private String users;
	private String pass;

	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		users = context.getInitParameter("users");
		pass = context.getInitParameter("pass");
	}
	
	
				public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
					
		
		String n=request.getParameter("username");		
		String e=request.getParameter("email");
		
		
		
		Registration u=new Registration();
		
		u.setUsername(n);		
		u.setEmail(e);
		
	
		
		ForgotPassworddao f=new ForgotPassworddao();
		f.register(u);
		
		HttpSession session=request.getSession();  
        session.setAttribute("forgot",u);
        
	        if(u.getStatus().equals("success")) {
	        	
	        	// reads form fields
		 		String email= request.getParameter("email");
		 		String subject ="Forgot Password.";
		 		String content ="Your Password : "+ u.getType();

		 		String resultMessage = "";

		 		try {
		 			EmailUtility.sendEmail(host, port, users, pass, email, subject,
		 					content);
		 			
		 		} catch (Exception ex) {
		 			ex.printStackTrace();
		 			resultMessage = "There were an error: " + ex.getMessage();
		 		}     	
	        	
	        	response.sendRedirect("Home.jsp");
	        	
		}else {
			request.setAttribute("error","Invalid Username or Email");
			request.getRequestDispatcher("/forgotpassword.jsp").forward(request, response);
		}
	     
		
	}

}
