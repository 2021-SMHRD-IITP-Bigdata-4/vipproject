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
					<input type = "button" value = "중복확인" onclick = "checkId()">
				</td>
				
			</tr>
			<tr>
				<td>PW</td>
				<td><input type = "password" name = "pw" class = "pw" id = "password_1"></td>				
			</tr>
			<tr>
				<td>PW 확인</td>
				<td colspan = "2">
					<input type = "password" name = "pw2" class = "pw" id = "password_2">
					<font id = "checkPw" size = "2"></font>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type = "text" name = "display_name"></td>
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
					<input type = "radio" name = "have_dog" value = "yes">
					<span>아니오</span>
					<input type = "radio" name = "have_dog" value = "no">
				</td>	
			</tr>
			<tr>
				<td colspan = "2" align = "center"><input type = "submit" value = "가입하기"></td>
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
					$("#checkPw").html('일치');
					$("#checkPw").attr('color','green');
				} else {
					$("#checkPw").html('불일치')
					$("#checkPw").attr('color','red');
										
				}
			}
			
		})		
		
	
	</script>
	
	
</body>
</html>