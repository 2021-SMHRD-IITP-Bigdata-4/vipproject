<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border = "1px solid black">
		<form action = "LoginService" method = "post">
			<tr>
				<td>ID</td>
				<td>
					<input type = "text" name = "id" placeholder="ID를 입력하세요">
				</td>			
			</tr>
			<tr>
				<td>PW</td>
				<td><input type = "password" name = "pw" placeholder="PW를 입력하세요"></td>				
			</tr>
			<tr>
				<td colspan = "2" align = "center">
					<input type = "submit" value = "로그인">
			</form>
					<input type = "submit" value = "회원가입" onclick = "location.href = 'join.jsp'">
				</td>
			</tr>
	</table>
	
</body>
</html>