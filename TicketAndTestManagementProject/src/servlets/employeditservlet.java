package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.editdao;
import dao.employee;


@WebServlet("/employeditservlet")
public class employeditservlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String ti=request.getParameter("ticketid");
		String td=request.getParameter("description");
		String pn=request.getParameter("project");
		String mn=request.getParameter("module");
		String rq=request.getParameter("requirement");
		String at=request.getParameter("Assignedto");	
		String doi=request.getParameter("Dateissue");
		String doc=request.getParameter("Datecmplt");
		String st=request.getParameter("status");
		
		employee emp=new employee();
		
		emp.setTicketid(ti);
		emp.setDescription(td);
		emp.setProject(pn);
		emp.setModule(mn);
		emp.setRequirement(rq);
		emp.setAssignedto(at);
		emp.setDateissue(doi);
		emp.setDatecmplt(doc);
		emp.setStatus(st);
	
		editdao d=new editdao();
		if(doc.equals("")) {
			emp.setDatecmplt("-");
		}
		d.edit(emp);
		
		HttpSession session=request.getSession();  
		if(emp.getType().equals("success")) {
			RequestDispatcher rd=request.getRequestDispatcher("/empEditTicket.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd=request.getRequestDispatcher("/employeeEditTicket.jsp");
			rd.include(request, response);
			out.println("data not inserted");
		}
	}

}
