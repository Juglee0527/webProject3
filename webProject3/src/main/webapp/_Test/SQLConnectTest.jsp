<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MySQL Connection Test</title>
</head>
<body>
	<h1>MySQL Connection Test Page</h1>
	<%
		String jdbcURL = "jdbc:mysql://localhost:3306/WebProject3";
		String jdbcURL2 = "jdbc:mysql://localhost:3306/WebProject3?allowLoadLocalInfile=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
		String dbId = "root";
		String dbPw = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(jdbcURL2, dbId, dbPw);
			out.println("DB 연결 성공");
		} catch (Exception e) {
			out.println("DB 연결 실패");
			out.println(e.getMessage());
		}
	%>
</body>
</html>