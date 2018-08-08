package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Logindao;
import userbean.Registration;

public class ExecutiveLoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		
		
			String e=request.getParameter("email");
			String p=request.getParameter("password");
			String t=request.getParameter("type");


			Registration u=new Registration();
			
			u.setEmail(e);
			u.setPassword(p);
			u.setType(t);

				
					Logindao a=new Logindao();
					a.executive(u);	
				


				HttpSession session=request.getSession();  
					session.setAttribute("executive",u);

					if(u.getStatus().equals("success")) {
	
						if(u.getType().equals("executive")) {
    		
							response.sendRedirect("executiveHome.jsp");
			
    	}else {
    		request.setAttribute("error","Invalid Username or Password");
			request.getRequestDispatcher("/exLogin.ecutivejsp").forward(request, response);

}
 
}
	}
}


