<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String pdate= request.getParameter("pdate");
if( pdate == null){
%>
	<script>
	alert("�߸��� ��η��� ����!");
	self.close;
	</script>
<%
	return;
}

