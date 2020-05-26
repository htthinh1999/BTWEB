package baitap.mvc;
import java.sql.*;

public class Model {
	public boolean checkLogin() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/edict";
			try {
				Connection con = DriverManager.getConnection(url, "root", "a123");
				
				Statement stm = con.createStatement();
				String sql = "SELECT * FROM tbl_edict";
				ResultSet rs = stm.executeQuery(sql);
				while(rs.next()) {
					System.out.println(rs.getInt(1) + " " + rs.getString(2) + " " + rs.getString(3));
				}
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
