<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<title>Insert title here</title>
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

<body>

<form name="frm" method="post" action="cal1.jsp">

	<select name = "year">
		<%
		for(int y1=2001; y1<=2041; y1++ ) {
			
			String chk1 = "";
			//if( y1 == Integer.parseInt(yy)) { chk1 = " selected"; } �̰Ŷ����� �������� �ּ�ó����.
			
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
				//if( m1 == Integer.parseInt(mm)) { chk2 = "selected";} �̰Ŷ����� �������� �ּ�ó����. 
			%>
				<option value="<%=m1 %>" <%=chk2 %>><%=m1 %>��</option>
			<%
		    }
			%>
		
	</select>

<input type="submit" value="�޷º���">
</form>

<br><br>

<table>
	<caption>
	<button type="button" onclick="location='cal1.jsp?year=<%=b_y %>&month=<%=b_m %>'" >����</button>
	<%=y %>��<%=m+1 %>��
	<button type="button" onclick="location='cal1.jsp?year=<%=n_y %>&month=<%=n_m %>'" >����</button>
	</caption>
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
	for(int d=1; d<=lastday; d++) {
		count++;
		String color ="#555555";
		if(count == 7) {
			color = "blue";
		}else if(count == 1){
			color = "red";
		}
	%>
		<td style="color:<%= color%>"><%=d %></td>
	<%
		if( count == 7 ){
			out.print("</tr><tr>");
			count = 0;
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