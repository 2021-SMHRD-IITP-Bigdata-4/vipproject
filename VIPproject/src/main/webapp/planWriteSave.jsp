<%@page import="oracle.jdbc.driver.OracleSql"%>
<%@page import="org.apache.tomcat.dbcp.dbcp.PStmtKey"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="certificate.jsp" %>
	<%@ include file="DbCon.jsp" %>
	<% 
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info"); 
	%>
<%
USERID = (VipMemberDTO)session.getAttribute("info");	 //id값 맞춰서 넣기
if(USERID == null){
%>


	<script>
	alert("로그인 이후에 이용가능합니다.")
	location="login.jsp"; //로그인페이지로 이동하게 경로 맞춰서 바꿔주기
	</script>

<% 
	return;
}
%>

   
<%
String sca_num = request.getParameter("sca-num");
String sca_pdate = request.getParameter("sca_pdate");
String sca_title = request.getParameter("sca_title");
String sca_content = request.getParameter("sca_content");
%>
<%
String sql = "INSERT INTO schedule(sca_num, user_id, sca_pdate, sca_title, sca_content, dog_name)";
	   sql+= "VALUES(schedule_seq.nextval,'"+info.getUser_id()+"','"+sca_pdate+"','"+sca_title+"','"+sca_content+"', null)";
int result = stmt.executeUpdate(sql); 
%>   
<script>
alert("일정 저장완료!");
self.close();
location = "planList1.jsp";
</script>
   

    	