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
		<form action = JoinService method = "post">
			<tr>
				<td>ID</td>
				<td><input type = "text" name = "id"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type = "passward" name = "pw"></td>
			</tr>
			<tr>
				<td>PW 확인</td>
				<td><input type = "passward" name = "pw2"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type = "text" name = "phone"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type = "text" name =  "address"></td>
			</tr>
			<tr>
				<td>강아지 소유 여부</td>
				<td>
					<span>네</span>
					<input type = "radio" name = "haveDog" value = "yes">
					<span>아니오</span>
					<input type = "radio" name = "haveDog" value = "no">
				</td>	
			</tr>
		</form>
	</table>
</body>
</html>