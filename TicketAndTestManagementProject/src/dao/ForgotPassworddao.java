package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.Registration;


public class ForgotPassworddao {
	public void register(Registration u) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinivas","srinivas");
			PreparedStatement pstmt=con.prepareStatement("select * from registration where username=? and email=?");
			pstmt.setString(1, u.getUsername());
			pstmt.setString(2, u.getEmail());
			
			ResultSet rs=pstmt.executeQuery();
			
			boolean b=rs.next();
			if(b){
				String str=rs.getString(9);
				System.out.println(rs.getString(9)+"password");
				u.setType(str);
				
				u.setStatus("success");
			}else {
				u.setStatus("failure");
			//	u.setType("not admin");
				System.out.println("not success");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
