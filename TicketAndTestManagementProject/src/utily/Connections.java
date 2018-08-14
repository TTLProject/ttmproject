package utily;

import java.sql.*;

public class Connections {
	private static Connection con;
	
public static Connection getUrl() throws SQLException, ClassNotFoundException {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ttm","ttm");
	return con;
}

}
