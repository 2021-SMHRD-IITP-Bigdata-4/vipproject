<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String pdate= request.getParameter("pdate");
if( pdate == null){
%>
	<script>
	alert("잘못된 경로로의 접근!");
	self.close;
	</script>
<%
	return;
}

