<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file= "../include/dbCon.jsp"%> <!-- db연결 데이터베이스 인클루드??-->
<%@ include file="../include/certificate.jsp" %>


<%
String pdate = request.getParameter("pdate");
String title = request.getParameter("title");
String content = request.getParameter("content");
%>
   
<%
String sql = "update plan set title = '"+title+"', content='"+content+"'";
       sql += "where userid='"+USERID+"' and pdate=''";

int result = stmt.executeUpdate(sql); //왜 오류뜨지ㅠ

%>   
<script>
alert("수정완료!");
self.close();
opener.location = "planList.jsp";
</script>
   

    	