package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Logindao;
import userbean.Registration;


public class LoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
		
			String e=request.getParameter("username");
			String p=request.getParameter("password");
			//String t=request.getParameter("type");


			Registration u=new Registration();
			
			u.setUsername(e);
			u.setPassword(p);
			//u.setType(t);

				
					Logindao a=new Logindao();
					a.employee(u);
					
				

				HttpSession session=request.getSession();  
					session.setAttribute("login",u);

					if(u.getStatus().equals("success")) {
	
						if((u.getType().equals("software trainee"))||(u.getType().equals("software developer"))||(u.getType().equals("quality analyst"))) {
    	
							response.sendRedirect("employeeHome.jsp");
    	}else if((u.getType().equals("executive software developer"))||(u.getType().equals("executive quality analyst"))||(u.getType().equals("hr-department"))) {
        	
			response.sendRedirect("executiveHome.jsp");
}
					}
    	else {
    		request.setAttribute("error","Invalid Username or Password");
			request.getRequestDispatcher("/login.jsp").forward(request, response);

}
 
}
	}


