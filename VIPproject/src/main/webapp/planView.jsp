<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="../include/certificate.jsp" %>
<%@ include file= "../include/dbCon.jsp"%>

<%
String pdate = request.getParameter("pdate");
if( pdate == null ){
%>
	<script>
	alert("�߸��� ��η��� ����");
	self.close();
	</script>	
<%
	return;
}
String sql = " select title,content, from plan ";
	   sql += "where userid = '"+USERID+"' and pdate='"+pdate+"' ";   	
ResultSet rs = stmt.executeQuery(sql);

String title = "";
String content = "";

if( rs.next() ) {
	title = rs.getString("title");
	content = rs.getString("content");
}else {
%>
	<script>
	alert("�߸��� ��η��� ����");
	self.close();
	</script>	
<%
	return;
}

%>		


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
  <script>
  $( function() {
    $( "#pdate" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  } );
  
 function fn_modify(){
	 location="planModify.jsp?pdate=<%=pdate%>";
 }
 
 function fn_delete(){
	 if( confirm("���� �����Ͻðڽ��ϱ�? ")){   //[Ȯ��]  [���] 
	 location = "planDelete.jsp?pdate=<%=pdate %>";
	 }
 }
  </script>

<style>
body {
	font-size:9pt;
	font-family:���� ���;
	color: #333333;
}
table{
	width:380px;
	border-collapse:collapse;
}
th,td {
	border:1px solid #cccccc;
	padding: 5px;
}
caption {
	font-size:14pt;
	font-weight:bold;
	margin-bottom:5px;
}
.div1 {
	width: 380px;
	text-align: center;
	margin-top: 10px;
	}
</style>

<body>

	<table>
	<caption>�������</caption>
		<tr>
		<th width="20%">��¥</th>
		<td width="80%"><%=pdate %></td>
		</tr>
		<tr>
		<th>����</th>
		<td><%=title %></td>
		</tr>
		<tr>
		<th>����</th>
		<td height="120" valign="top"><%=content %></td>
		</tr>

	</table>
<div class = "div1">
	<button type="button" onclick="fn_modify();">����</button>
	<button type="button" onclick="fn_delete();">����</button>
	<button type="button" onclick="self.close();">�ݱ�</button>
</div>

</form>

</body>
</html>