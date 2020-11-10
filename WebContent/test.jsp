<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		try {
			String url = "jdbc:mysql://db2016156039.cubk3d96lbxk.us-east-2.rds.amazonaws.com:3306/test?serverTimezone=UTC";
			String user = "admin";
			String password = "admin123";
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, user, password);
			
			out.println("db연결 성공");
			Statement stmt = conn.createStatement();
			int rs = stmt.executeUpdate("update member set name='성훈' where id='1'");
			stmt.close();
		} catch (SQLException ex) {
			out.print("db연결 실패<br>");
			out.print("message: " + ex.getMessage());
		} finally {
			if (conn != null) conn.close();
		}
	%>
</body>
</html>