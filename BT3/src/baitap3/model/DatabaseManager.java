package baitap3.model;

import java.sql.*;

public class DatabaseManager {
	Connection con;
	Statement stm;
	ResultSet rs;

	String url = "jdbc:mysql://localhost:3306/WEBLOGIN";
	String dbUsername = "root";
	String dbPassword = "a123";
	
	public boolean LoginValid(String username, String password) {
		try {
			con = DriverManager.getConnection(url, dbUsername, dbPassword);
			stm = con.createStatement();
			String sql = "SELECT username, password FROM Login WHERE username = \'" + username + "\'";
			rs = stm.executeQuery(sql);
			
			if(rs.next()==true && rs.getString(2).equals(password)) {
				con.close();
				return true;
			};

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
