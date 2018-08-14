package servlets;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import utily.Connections;
@MultipartConfig(maxFileSize = 16177215)
public class AddPhotoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
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
    		
    		InputStream inputStream = null;
    		Part filePart = request.getPart("photo");
            if (filePart != null) {
               
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
                 
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            }
           
            // Connect to Oracle
            try {
            	Connections.getUrl();
            	Connections.getUrl().setAutoCommit(false);
            String sql="update registration set name=? , empid=? , designation=? , email=? , mobile=? , domain=? , webmail=? , password=? , gender=? , photo=? where username=?";
            PreparedStatement ps = Connections.getUrl().prepareStatement(sql);
            System.out.println("error");
            ps.setString(1, n);
            ps.setString(2, e);
            ps.setString(3, d);
            ps.setString(4, e1);
            ps.setString(5, m);
            ps.setString(6, d1);
            ps.setString(7, w);
            ps.setString(8, p);
           ps.setString(9, t);
            System.out.println("error1");
            if (inputStream != null) {
               
                System.out.println("blob");
                ps.setBinaryStream(10, inputStream,(int) filePart.getSize());
            }
            ps.setString(11, u1);
            System.out.println("error2");
            int i=ps.executeUpdate();
            System.out.println("error3");
            if(i==1) {
            	Connections.getUrl().commit();
            	Connections.getUrl().close();
            response.sendRedirect("employeeHome.jsp");
           
            }else {
            	System.out.println("photo not uploaded");
            }
            }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
            System.out.println(ex);
            ex.printStackTrace();
        }
    } 
}