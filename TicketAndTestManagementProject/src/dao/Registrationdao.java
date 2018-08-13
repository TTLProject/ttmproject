package dao;

import java.sql.*;

import userbean.Registration;
import utily.Connections;

public class Registrationdao {

	public void register(Registration u) {
		
		try {
			Connections.getUrl();
			PreparedStatement pstmt=Connections.getUrl().prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,u.getName());
			pstmt.setString(2, u.getEmpid());
			pstmt.setString(3, u.getDesignation());
			pstmt.setString(4, u.getEmail());
			pstmt.setString(5, u.getMobile());
			pstmt.setString(6, u.getDomain());
			pstmt.setString(7, u.getWebmail());
			pstmt.setString(8, u.getUsername());
			pstmt.setString(9, u.getPassword());
			pstmt.setString(10, u.getType());
			pstmt.setString(11, "");
			
			
			int i=pstmt.executeUpdate();
			
			if(i==1) {
			
				u.setStatus("success");
			}else {
				u.setStatus("fail");
				System.out.println("registration not success");
			}
		
		}catch(Exception e) {
			u.setStatus("fail");
			e.printStackTrace();
		}
		
		
	}

}
