<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="certificate.jsp" %>
<%@ include file="DbCon.jsp" %>

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

String sql = "DELETE FROM plan WHERE userid= '"+USERID+"' AND pdate='"+pdate+"' ";
int result = stmt.executeUpdate(sql); //�����Ϸ� : result =1; 
if( result == 1){
%>
    <script>
	alert("�����Ϸ�");
	self.close();
	opener.document.location="planList.jsp";
	</script>
<% 
}else{
%>
	<script>
	alert("��������");
	self.close();
	</script>
<%
}
%>