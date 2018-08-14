package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class editdao {
	public void edit(employee emp) {
		try {
			
			System.out.println("jsgdjysad");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ttm", "ttm");
			PreparedStatement pst=con.prepareStatement("update TCKET set description=?,project=?,module=?,requirement=?,Dateissue=?,Datecmplt=?,status=?,Assignedto=? where ticketid=?");
			pst.setString(9, emp.getTicketid());
			pst.setString(1, emp.getDescription());
			pst.setString(2, emp.getProject());
			pst.setString(3, emp.getModule());
			pst.setString(4, emp.getRequirement());
			pst.setString(5, emp.getDateissue());
			pst.setString(6, emp.getDatecmplt());
			pst.setString(7, emp.getStatus());
			pst.setString(8, emp.getAssignedto());
			int i=pst.executeUpdate();
			System.out.println("VENL");
			if(i==1) {
		emp.setType("success");
		System.out.println("update success");
		
	}else {
		System.out.println("update not success");
	}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}

