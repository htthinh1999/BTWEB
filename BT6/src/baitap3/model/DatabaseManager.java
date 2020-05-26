package baitap3.model;

import java.sql.*;

public class DatabaseManager {
	public static boolean logged = false;
	
	static Connection con;
	static Statement stm;
	static ResultSet rs;

	static String url = "jdbc:mysql://localhost:3306/WEBLOGIN";
	static String dbUsername = "root";
	static String dbPassword = "a123";
	
	public static boolean LoginValid(String username, String password) {
		try {
			con = DriverManager.getConnection(url, dbUsername, dbPassword);
			stm = con.createStatement();
			String sql = "SELECT username, password FROM Login WHERE username = \'" + username + "\'";
			rs = stm.executeQuery(sql);
			
			if(rs.next()==true && rs.getString(2).equals(password)) {
				con.close();
				logged = true;
				
				return true;
			};

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static void Logout() {
		logged=false;
	}
	
}
