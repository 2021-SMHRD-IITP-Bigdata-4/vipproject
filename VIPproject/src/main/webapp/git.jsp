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
				<td>PW Ȯ��</td>
				<td><input type = "passward" name = "pw2"></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type = "text" name = "phone"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type = "text" name =  "address"></td>
			</tr>
			<tr>
				<td>������ ���� ����</td>
				<td>
					<span>��</span>
					<input type = "radio" name = "haveDog" value = "yes">
					<span>�ƴϿ�</span>
					<input type = "radio" name = "haveDog" value = "no">
				</td>	
			</tr>
		</form>
	</table>
</body>
</html>