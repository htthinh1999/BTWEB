package thoikhoabieu.model;
import java.sql.*;
import java.util.*;

public class DatabaseManager {
	
	public static List<List<String>> sinhVien = new ArrayList<List<String>>();
	public static List<List<String>> thoiKhoaBieu = new ArrayList<List<String>>();
	public static List<List<String>> ketQua = new ArrayList<List<String>>();
	public static boolean connected = false;
	
	static Connection con;
	static Statement stm;
	static ResultSet rs;
	static ResultSetMetaData rsmd;
	static String sql;

	static String url = "jdbc:mysql://localhost:3306/tkbDHCN4";
	static String username = "root";
	static String password = "a123";
	
	public static void GetData() {
		GetSV();
		GetTKB();
		GetKQ();
	}
	
	public static void GetSV() {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			sql = "SELECT * FROM tblSINHVIEN";
			rs = stm.executeQuery(sql);
			rsmd = rs.getMetaData();
			
			while(rs.next()) {
				List<String> thongTinSV = new ArrayList<String>();
				for(int i=1; i<=rsmd.getColumnCount(); i++)
					thongTinSV.add(rs.getString(i));
				if(!sinhVien.contains(thongTinSV)) {
					sinhVien.add(thongTinSV);
				}
				System.out.println(thongTinSV.get(thongTinSV.size()-1));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void GetTKB() {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			sql = "SELECT tenmh, thoigian, sotinchi, giangvien " +
					"FROM tblMONHOC INNER JOIN tblTHOIKHOABIEU " + 
					"WHERE tblMONHOC.mamh = tblTHOIKHOABIEU.mamh";
			rs = stm.executeQuery(sql);
			rsmd = rs.getMetaData();
			
			while(rs.next()) {
				List<String> thongTinTKB = new ArrayList<String>();
				for(int i=1; i<=rsmd.getColumnCount(); i++)
					thongTinTKB.add(rs.getString(i));
				if(!thoiKhoaBieu.contains(thongTinTKB)) {
					thoiKhoaBieu.add(thongTinTKB);
				}
				System.out.println(thoiKhoaBieu.get(rs.getRow()-1));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void GetKQ() {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			sql = "SELECT tensv, lop, tenmh, diem " + 
					"FROM tblKETQUA INNER JOIN tblSINHVIEN INNER JOIN tblMONHOC " + 
					"WHERE tblKETQUA.mamh = tblMONHOC.mamh AND tblKETQUA.masv = tblSINHVIEN.masv " + 
					"ORDER BY tenmh asc, diem desc";
			rs = stm.executeQuery(sql);
			rsmd = rs.getMetaData();
			
			while(rs.next()) {
				List<String> thongTinKQ = new ArrayList<String>();
				for(int i=1; i<=rsmd.getColumnCount(); i++)
					thongTinKQ.add(rs.getString(i));
				if(!ketQua.contains(thongTinKQ)) {
					ketQua.add(thongTinKQ);
				}
				System.out.println(ketQua.get(rs.getRow()-1));
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void InsertSV(String maSV, String tenSV, String lop) {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			sql = "INSERT INTO tblSINHVIEN VALUES('"+maSV+"','"+tenSV+"','"+lop+"')";
			stm.executeUpdate(sql);
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void UpdateSV(String maSV, String tenSV, String lop) {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			sql = "UPDATE tblSINHVIEN SET tensv='"+tenSV+"',lop='"+lop+"' WHERE masv='"+maSV+"'";
			stm.executeUpdate(sql);
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void DeleteSV(String maSV) {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			sql = "DELETE FROM tblSINHVIEN WHERE masv='"+maSV+"'";
			stm.executeUpdate(sql);
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
