<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String USERID = (String) session.getAttribute("SessionUserId");	 //id값 맞춰서 넣기
if(USERID ==null){
%>
	<script>
	alert("로그인 이후에 이용가능합니다.")
	location="../member/loginWrite.jsp"; //로그인페이지로 이동하게 경로 맞춰서 바꿔주기
	</script>

<% 
	return;
}
%>    
    