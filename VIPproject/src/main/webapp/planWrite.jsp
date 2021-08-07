<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>일정등록</title>
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
  </script>

<style>
body {
	font-size:9pt;
	font-family:맑은 고딕;
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

<form name="frm" method="post" action="planWritesave.jsp">
	<table>
	<caption>일정등록</caption>
		<tr>
		<th width="20%">날짜</th>
		<td width="80%"><input type="text" name= "pdate" id= "pdate" style="width:98%"></td>
		</tr>
		<tr>
		<th>제목</th>
		<td><input type="text" name= "title" style="width:98%"></td>
		</tr>
		<tr>
		<th>내용</th>
		<td><textarea name= "content" style="width:98%; height: 150px;"></textarea></td>
		</tr>

	</table>
<div class = "div1">
	<button type="submit">저장</button>
	<button type="button" onclick="self.close();">닫기</button>
</div>

</form>

</body>
</html>