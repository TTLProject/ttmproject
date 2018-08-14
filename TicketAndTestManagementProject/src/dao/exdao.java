package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class exdao {
	public void add(employee emp) {
	try {
		
		System.out.println("jsgdjysad");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ttm", "ttm");
		PreparedStatement pst=con.prepareStatement("insert into extckt values(?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, emp.getTicketid());
		pst.setString(2, emp.getDescription());
		pst.setString(3, emp.getProject());
		pst.setString(4, emp.getModule());
		pst.setString(5, emp.getRequirement());
		pst.setString(6, emp.getAssignedto());
		pst.setString(7, emp.getAssignedby());
		pst.setString(8, emp.getDateissue());
		pst.setString(9, emp.getDatecmplt());
		pst.setString(10, emp.getStatus());
		
		int i=pst.executeUpdate();
		if(i==1) {
			
			emp.setType("success");
			System.out.println("data inserted successfully");
		}else {
			System.out.println("data not inserted");
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	}
}
