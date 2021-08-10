<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	String db_id = "campus_e1";
	String db_pw = "smhrd1";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	conn = DriverManager.getConnection(db_url, db_id, db_pw);
	
	Statement stmt = conn.createStatement();

%>
</body>
</html>