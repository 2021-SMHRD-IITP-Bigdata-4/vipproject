<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file= "../include/dbCon.jsp"%> <!-- db���� �����ͺ��̽� ��Ŭ���??-->
<%@ include file="../include/certificate.jsp" %>


<%
String pdate = request.getParameter("pdate");
String title = request.getParameter("title");
String content = request.getParameter("content");
%>
   
<%
String sql = "update plan set title = '"+title+"', content='"+content+"'";
       sql += "where userid='"+USERID+"' and pdate=''";

int result = stmt.executeUpdate(sql); //�� ����������

%>   
<script>
alert("�����Ϸ�!");
self.close();
opener.location = "planList.jsp";
</script>
   

    	