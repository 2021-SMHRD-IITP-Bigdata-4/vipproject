<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<li><a href="${pageContext.request.contextPath}/Calendar_A/src/main/include/dbCon.jsp">db</a></li>
<li><a href="${pageContext.request.contextPath}/Calendar_A/src/main/include/certificate.jsp">cer</a></li>
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

   
<%
String pdate = request.getParameter("pdate");
String title = request.getParameter("title");
String content = request.getParameter("content");
%>
   

<script>
alert("일정 저장완료!");
self.close();
opener.location = "planList1.jsp";
</script>
   

    	