<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="certificate.jsp" %>
	<%@ include file="DbCon.jsp" %>
<%
USERID = (String) session.getAttribute("SessionUserId");	 //id�� ���缭 �ֱ�
if(USERID == null){
%>


	<script>
	alert("�α��� ���Ŀ� �̿밡���մϴ�.")
	location="../member/loginWrite1.jsp"; //�α����������� �̵��ϰ� ��� ���缭 �ٲ��ֱ�
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
<%
String sql = "INSERT INTO plan(userid, pdate, title, content)";
	   sql+= "VALUES('"+USERID+"','"+pdate+"','"+title+"','"+content+"')";
int result = stmt.executeUpdate(sql); 
%>   

<script>
alert("���� ����Ϸ�!");
self.close();
opener.location = "planList1.jsp";
</script>
   

    	