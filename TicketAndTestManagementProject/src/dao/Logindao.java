package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.Registration;
import utily.Connections;

public class Logindao {

	public void employee(Registration u) {
		try {
			Connections.getUrl();
			PreparedStatement pstmt=Connections.getUrl().prepareStatement("select * from registration where username=? and password=?");
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

}
