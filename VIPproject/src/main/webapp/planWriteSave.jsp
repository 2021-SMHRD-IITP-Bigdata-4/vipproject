<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<li><a href="${pageContext.request.contextPath}/Calendar_A/src/main/include/dbCon.jsp">db</a></li>
<li><a href="${pageContext.request.contextPath}/Calendar_A/src/main/include/certificate.jsp">cer</a></li>
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

   
<%
String pdate = request.getParameter("pdate");
String title = request.getParameter("title");
String content = request.getParameter("content");
%>
   

<script>
alert("���� ����Ϸ�!");
self.close();
opener.location = "planList1.jsp";
</script>
   

    	