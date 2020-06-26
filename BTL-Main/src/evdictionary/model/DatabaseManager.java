package evdictionary.model;
import java.sql.*;
import java.util.*;

public class DatabaseManager {
	
	public static Hashtable<String, String> dictionary = new Hashtable<String, String>();
	public static Hashtable<Character, ArrayList<String>> wordsFirstCharacter = new Hashtable<Character, ArrayList<String>>();
	public static List<String> words = new ArrayList<String>();
	
	static Connection con;
	static Statement stm;
	static ResultSet rs;

	static String url = "jdbc:mysql://localhost:3306/edict";
	static String username = "root";
	static String password = "a123";
	
	public static void Init26Char() {
		for(char i='A'; i<='Z'; i++) {
			ArrayList<String> listWordOfChar = new ArrayList<String>();
			wordsFirstCharacter.put(i, listWordOfChar);
		}
	}
	
	public static void GetData() {
		
		Init26Char();
		
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			String sql = "SELECT * FROM tbl_edict";
			rs = stm.executeQuery(sql);
			
			while(rs.next()) {
				String word = rs.getString(2);
				String detail = rs.getString(3);
				char character = word.charAt(0);
				if(word.length()>0) {
					if(wordsFirstCharacter.containsKey(character)){
						wordsFirstCharacter.get(character).add(word);
					}else if(wordsFirstCharacter.containsKey((char)(character-32))) {
						wordsFirstCharacter.get((char)(character-32)).add(word);
					}
				}
				words.add("\"" + word + "\"");
				dictionary.put(word, detail);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static int WordCount() {
		int index = 0;
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			String sql = "select count(*) from tbl_edict";
			rs = stm.executeQuery(sql);
			rs.next();
			index = Integer.valueOf(rs.getString(1));
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return index;
	}
	
	public static void AddNewWord(String newWord, String newWordTranslated) {
		try {
			con = DriverManager.getConnection(url, username, password);
			stm = con.createStatement();
			String sql = "select count(*) from tbl_edict";
			rs = stm.executeQuery(sql);
			rs.next();
			int index = Integer.valueOf(rs.getString(1)) + 2;
			
			sql = "INSERT INTO `tbl_edict` (`idx`, `word`, `detail`) VALUES" + 
					"(" + index+ ", '" + newWord + "', '<C><F><I><N><Q>@" + newWord + "<br />- " + newWordTranslated + "</Q></N></I></F></C>')";
			stm.executeUpdate(sql);
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
