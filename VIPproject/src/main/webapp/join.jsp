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
		<form action = "JoinService" method = "post">
			<tr>
				<td>ID</td>
				<td>
					<input type = "text" name = "id">
					<input type = "button" value = "�ߺ�Ȯ��" onclick = "checkId()">
				</td>
				
			</tr>
			<tr>
				<td>PW</td>
				<td><input type = "password" name = "pw" class = "pw" id = "password_1"></td>				
			</tr>
			<tr>
				<td>PW Ȯ��</td>
				<td colspan = "2">
					<input type = "password" name = "pw2" class = "pw" id = "password_2">
					<font id = "checkPw" size = "2"></font>
				</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>�г���</td>
				<td><input type = "text" name = "display_name"></td>
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
					<input type = "radio" name = "have_dog" value = "yes">
					<span>�ƴϿ�</span>
					<input type = "radio" name = "have_dog" value = "no">
				</td>	
			</tr>
			<tr>
				<td colspan = "2" align = "center"><input type = "submit" value = "�����ϱ�"></td>
			</tr>
		</form>
	</table>
	
	<script src = "js/jquery-3.6.0.min.js"></script>
	<script>
		$('.pw').focusout(function(){
			let pass1 = $("#password_1").val();
			let pass2 = $("#password_2").val();
			
			if (pass1 != "" || pass2 !=""){
				if (pass1 == pass2){
					$("#checkPw").html('��ġ');
					$("#checkPw").attr('color','green');
				} else {
					$("#checkPw").html('����ġ')
					$("#checkPw").attr('color','red');
										
				}
			}
			
		})		
		
	
	</script>
	
	
</body>
</html>