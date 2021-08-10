<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="certificate.jsp" %>
	<%@ include file="DbCon.jsp" %>
<%
USERID = (String) session.getAttribute("SessionUserId");	 //id값 맞춰서 넣기
if(USERID == null){
%>


	<script>
	alert("로그인 이후에 이용가능합니다.")
	location="../member/loginWrite1.jsp"; //로그인페이지로 이동하게 경로 맞춰서 바꿔주기
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
alert("일정 저장완료!");
self.close();
opener.location = "planList1.jsp";
</script>
   

    	