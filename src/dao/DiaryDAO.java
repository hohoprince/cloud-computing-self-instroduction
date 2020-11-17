package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class DiaryDAO {
	
	String url = "jdbc:mysql://db2016156039.cubk3d96lbxk.us-east-2.rds.amazonaws.com:3306/test?serverTimezone=UTC";
	String user = "admin";
	String password = "admin123";
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	
	public DiaryDAO() {}
	
	
	public ArrayList<Diary> getDiary() {
		
		ResultSet rs;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			 rs = stmt.executeQuery("select * from diary");
			 
			 ArrayList<Diary> diaries = new ArrayList<>();
			 
			 
			 while (rs.next()) {
				 Diary diary = new Diary();
				 diary.setId(rs.getInt("id"));
				 diary.setContent(rs.getString("content"));
				 diary.setDate(rs.getString("date"));
				 diaries.add(diary);
			 }
			stmt.close();
			return diaries;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void insertDiary(Diary diary) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement("insert into diary (content, date) values(?, ?)");
			pstmt.setString(1, diary.getContent());
			pstmt.setString(2, diary.getDate());
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
}
