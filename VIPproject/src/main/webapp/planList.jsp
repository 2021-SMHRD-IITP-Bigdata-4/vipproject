<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ���⵵ <%@ include file="../include/certificate.jsp" %> �̰� ������ �� �ؿ� �ִ� �� ��������ϴµ� �������� �ϴ� Ȥ�� ���� -->
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
<%@ include file="../include/certificate.jsp" %>
<%@ include file="../include/dbCon.jsp"%> <!-- DB���� -->
<%@page import="java.util.Calendar"%>

<%
String yy = request.getParameter("year");    
String mm = request.getParameter("month");    

Calendar cal = Calendar.getInstance();    
// int y = cal.get(Calendar.YEAR);
// int m = cal.get(Calendar.MONTH);
int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MONTH);

if( yy != null && mm != null && !yy.equals("") && !yy.equals("")){
	y = Integer.parseInt(yy);
	m = Integer.parseInt(mm)-1;
}


cal.set(y,m,1);
int dayOfweek = cal.get(Calendar.DAY_OF_WEEK); // 2
int lastday = cal.getActualMaximum(Calendar.DATE);

int b_y = y;
int b_m = m;
if(m == 0) {
	b_y= b_y -1;
	b_m = 12;
}

int n_y = y;
int n_m = m+2;
if(n_m == 13) {
	n_y= n_y +1;
	n_m = 1;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
</head>

<style>
body{
	font-size:9pt;
	color: #555555;
}
table{
	border-collapse: collapse;
}
th, td {
	border:1px solid #cccccc;
	width: 50px;
	height: 25px;
	text-align:center;
}
caption {
	margin-bottom:10px;
	font-size: 15px;
	
}
</style>

<style>

.t_div1 {
	float:left
	;width:30%;
	background-color:yellow;
}
.t_div2 {
	float:left;
	width:40%;
	background-color:green;
}
.t_div3 {
float:left;
width:30%;
background:yellow;
text-align:right;
}



</style>

<script>
function fn_planWrite(){
	
	<%
	if(USERID == null){
	%>
		alert("�α��� ���Ŀ� �̿��� �� �ֽ��ϴ�.")
		location="../member/loginWrite.jsp"; //�α��������� Ȯ���ؼ� ��� �ٲ��ֱ�
	<%
	}else {
	%>
		var w = (window.screen.width/2) - 200;
		var h = (window.screen.height/2) - 200;
		var url = "planWrite.jsp";
		window.open(url,"planWrite","width = 400, height = 400, left="+w+",top="+h);
	<%
	}
	%>
}

function fn_defail(v){
	var w = (window.screen.width/2) - 200;
	var h = (window.screen.height/2) - 200;
	var url = "planView.jsp?pdate="+v;
	window.open(url,"planview", "width = 400, height = 400, left="+w+",top="+h);
}


</script>

<body>

<form name="frm" method="post" action="cal1.jsp">

	<select name = "year">
		<%
		for(int y1=2001; y1<=2041; y1++ ) {
			
			String chk1 = "";
			if( y1 == Integer.parseInt(yy)) { chk1 = " selected"; }
			
		%>
		<option value = "<%=y1 %>" <%=chk1 %> ><%=y1%>��</option>
		<%
		}
		%>
	</select>
	<select name= "month">
		<%
		for( int m1=1; m1<=12; m1++){
				String chk2 = "";
				if( m1 == Integer.parseInt(mm)) { chk2 = "selected";}
			%>
				<option value="<%=m1 %>" <%=chk2 %> ><%=m1 %>��</option>
			<%
		    }
			%>
		
	</select>



<input type="submit" value="�޷º���">
</form>

<br><br>

<div style="width:600px;">
	    <div class="t_div1">&nbsp;</div>
		<div class="t_div2">
			<%=y %>��<%=m+1 %>��
		</div>
		<div class="t_div3">
			<button type="button" onclick="fn_planWrite()"> �������</button>
		</div>
</div>
<table>


	<tr>	
		<th>��</th>
		<th>��</th>
		<th>ȭ</th>
		<th>��</th>
		<th>��</th>
		<th>��</th>
		<th>��</th>
	</tr>
	<tr>
	<%
	int count = 0;
	for(int s= 1; s<dayOfweek; s++)	{
		out.print("<td></td>");
		count++;
	}
	// ��¥ ����ϴ� ����
	for(int d=1; d<=lastday; d++) {
		count++;
		
		String color ="#555555";
		if(count == 7) {
			color = "blue";
		}else if(count == 1){
			color = "red";
		}
		String f_date = y+"-"+(m+1)+"-"+d;
		
		String f_sql = "select count(*) cnt from plan";
			   f_sql+= "where userid = '"+USERID+"'";
			   f_sql+= "and pdate = '"+f_date+"'";
		
	    ResultSet f_rs = stmt.executeQuery(f_sql);
		f_rs.next();
	    
	    int f_cnt = f_rs.getInt("cnt");
		if(f_cnt == 1){
			color = "pink";
		%>
		<td style="color:<%= color%>"><a href="javascript:fn_defail('<%=f_date %>')"><%=d %></a></td>
		<%
		}else{
	%>
		<td style="color:<%= color%>"><%=d %></td>
	<%
		}
	    //������ ���� ����
		if( count == 7 ){
			out.print("</tr><tr>");
			count = 0; //�����ʱ�ȭ
		}
	}
	while( count < 7) {
		out.print("<td></td>");
		count++;
	}
	
	
	
	
	%>
	</tr>
	


</table>




</body>
</html>