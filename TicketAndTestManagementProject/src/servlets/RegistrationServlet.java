package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Registrationdao;
import userbean.Registration;


public class RegistrationServlet extends HttpServlet {

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
		String n=request.getParameter("name");
		String e=request.getParameter("empid");
		String d=request.getParameter("designation");
		String e1=request.getParameter("email");
		String m=request.getParameter("mobile");
		String d1=request.getParameter("domain");
		String w=request.getParameter("webmail");
		String u1=request.getParameter("username");
		String p=request.getParameter("password");
		String t=request.getParameter("gender");
		
		Registration u=new Registration();
		u.setName(n);
		u.setEmpid(e);
		u.setDesignation(d);
		u.setEmail(e1);
		u.setMobile(m);
		u.setDomain(d1);
		u.setWebmail(w);
		u.setUsername(u1);
		u.setPassword(p);
		u.setType(t);
		
		Registrationdao r1=new Registrationdao();
		r1.register(u);
		
		HttpSession session=request.getSession();  
        session.setAttribute("registration",u);
        
        if(u.getStatus().equals("success")) {
        	
        	
	    			response.sendRedirect("Home.jsp");
	    		
		
	}else {
		
		request.setAttribute("error","Username already Exist, Please Enter Available Username.");
		request.getRequestDispatcher("/registration.jsp").forward(request, response);
	}
	}
}
