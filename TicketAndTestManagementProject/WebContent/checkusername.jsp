<%--
    Document   : checkusername
    Created on : 9 May, 2013, 12:42:25 PM
    Author     : Aravind Sankaran
--%>

<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<% 
                    String sn=request.getParameter("ver");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinivas","srinivas");
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery("select * from registration where username='"+sn+"'");  // this is for name
                    if(rs.next())
                    {   
                        out.println("<font color=red>");
                        out.println("Name already taken");
                        out.println("</font>");

                    }else {
                        out.println("<font color=green>");
                        out.println("Available");
                        out.println("</font>");

                    }
rs.close();
st.close();
con.close();
%>

