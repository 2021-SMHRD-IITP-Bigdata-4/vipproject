<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String USERID = (String) session.getAttribute("SessionUserId");	 //id�� ���缭 �ֱ�
if(USERID ==null){
%>
	<script>
	alert("�α��� ���Ŀ� �̿밡���մϴ�.")
	location="../member/loginWrite.jsp"; //�α����������� �̵��ϰ� ��� ���缭 �ٲ��ֱ�
	</script>

<% 
	return;
}
%>    
    