package evdictionary.model;
import java.sql.*;
import java.util.*;

public class DatabaseManager {
	
	public static Hashtable<String, String> dictionary = new Hashtable<String, String>();
	public static Hashtable<Character, ArrayList<String>> wordsFirstCharacter = new Hashtable<Character, ArrayList<String>>();
	public static List<String> words = new ArrayList<String>();
	
	Connection con;
	Statement stm;
	ResultSet rs;

	String url = "jdbc:mysql://localhost:3306/edict";
	String username = "root";
	String password = "a123";
	
	public void Init26Char() {
		for(char i='A'; i<='Z'; i++) {
			ArrayList<String> listWordOfChar = new ArrayList<String>();
			wordsFirstCharacter.put(i, listWordOfChar);
		}
	}
	
	public void GetData() {
		
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
	
}
