<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% String name = (String)session.getAttribute("name"); %>
	
	<span><%= name %>님 회원가입을 축하드립니다</span><br>
	<button onclick='location.href="index.jsp"'>시작하기</button>
	
</body>
</html>