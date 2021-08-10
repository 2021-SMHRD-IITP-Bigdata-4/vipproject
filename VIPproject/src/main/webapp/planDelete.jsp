<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="certificate.jsp" %>
<%@ include file="DbCon.jsp" %>

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

String sql = "DELETE FROM plan WHERE userid= '"+USERID+"' AND pdate='"+pdate+"' ";
int result = stmt.executeUpdate(sql); //삭제완료 : result =1; 
if( result == 1){
%>
    <script>
	alert("삭제완료");
	self.close();
	opener.document.location="planList.jsp";
	</script>
<% 
}else{
%>
	<script>
	alert("삭제실패");
	self.close();
	</script>
<%
}
%>