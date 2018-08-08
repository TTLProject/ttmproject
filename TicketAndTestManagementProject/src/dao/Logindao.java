package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.Registration;

public class Logindao {

	public void employee(Registration u) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinivas","srinivas");
			PreparedStatement pstmt=con.prepareStatement("select * from registration where username=? and password=?");
			pstmt.setString(1, u.getUsername());
			pstmt.setString(2, u.getPassword());
			
			ResultSet rs=pstmt.executeQuery();
			
			boolean b=rs.next();
			if(b){
				String str=rs.getString(3);
				String name=rs.getString(1);
				u.setType(str);
				u.setName(name);
				u.setStatus("success");
			}else {
				u.setStatus("failure");
				u.setType("not admin");
				System.out.println("not success");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

		
	

	/*public void executive(Registration u) {
		try {
			Class.forName("org.h2.Driver");
			Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/cubic","sa","");
			PreparedStatement pstmt=con.prepareStatement("select * from registration where email=? and password=?");
			pstmt.setString(1, u.getEmail());
			pstmt.setString(2, u.getPassword());
			
			ResultSet rs=pstmt.executeQuery();
			
			boolean b=rs.next();
			if(b){
				String str=rs.getString(10);
				
				u.setType(str);
				
				u.setStatus("success");
			}else {
				u.setStatus("failure");
				u.setType("not admin");
				System.out.println("not success");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}

		
	}*/

}
