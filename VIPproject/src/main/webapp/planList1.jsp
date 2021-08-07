<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Calendar"%>

<%@ include file="../include/dbCon.jsp"%> <!-- stmt 오류뜨는게 이게 include가 안돼서임 근데 include 어떻게 하지 -->
<%@ include file="../main/certificate.jsp" %>

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
String yy = request.getParameter("year");    
String mm = request.getParameter("month");    

Calendar cal = Calendar.getInstance();    

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
<html lang="en">

<head>
    <title>VIP - product Ranking Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

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
		alert("로그인 이후에 이용할 수 있습니다.")
		location="../member/loginWrite.jsp"; //로그인페이지 확인해서 경로 바꿔주기
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
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                V.I.P.
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">애완견 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">동물법과 정책</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">잘 팔리는 용품</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">애완견 동반 서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">커뮤니티 게시판</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">내 반려견 캘린더</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->


    <!-- Start Content -->
    
    <form name="frm" method="post" action="planList1.jsp">

	<select name = "year">
		<%
		for(int y1=2001; y1<=2041; y1++ ) {
			
			String chk1 = "";
			//if( y1 == Integer.parseInt(yy)) { chk1 = " selected"; } 이거때문에 오류떠서 주석처리함.
			
		%>
		<option value = "<%=y1 %>" <%=chk1 %> ><%=y1%>년</option>
		<%
		}
		%>
	</select>
	<select name= "month">
		<%
		for( int m1=1; m1<=12; m1++){
				String chk2 = "";
				//if( m1 == Integer.parseInt(mm)) { chk2 = "selected";} 이거때문에 오류떠서 주석처리함. 
			%>
				<option value="<%=m1 %>" <%=chk2 %>><%=m1 %>월</option>
			<%
		    }
			%>
		
	</select>

<input type="submit" value="달력보기">
</form>

<br><br>


	<div style="width:600px;">
	    <div class="t_div1">&nbsp;</div>
		<div class="t_div2">
			<%=y %>년<%=m+1 %>월
		</div>
		<div class="t_div3">
			<button type="button" onclick="fn_planWrite()"> 일정등록</button>
			<button type="button" onclick="location='planList1.jsp?year=<%=b_y %>&month=<%=b_m %>'" >이전</button>
			<button type="button" onclick="location='planList1.jsp?year=<%=n_y %>&month=<%=n_m %>'" >다음</button>
		</div>
</div>

	
<table>
	<tr>	
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>
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
	    //개행을 위한 설정
		if( count == 7 ){
			out.print("</tr><tr>");
			count = 0; //변수초기화
		}
	}
	while( count < 7) {
		out.print("<td></td>");
		count++;
	}
	
	%>
	</tr>

</table>
    
    
    <!-- End Content -->

    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">V.I.P</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            우리팀은 광주에서 활동해요
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="vip@info.com">vip@info.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">다른 쇼핑몰 용품 트랜드</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">11번가</a></li>
                        <li><a class="text-decoration-none" href="#">G마켓</a></li>
                        <li><a class="text-decoration-none" href="#">쿠팡</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">더 많은 V.I.P. 서비스 보기</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="about_dogInfo.jsp">애완견 정보</a></li>
                        <li><a class="text-decoration-none" href="#">동물법과 정책</a></li>
                        <li><a class="text-decoration-none" href="#">잘 팔리는 용품</a></li>
                        <li><a class="text-decoration-none" href="#">애완견 동반 서비스</a></li>
                        <li><a class="text-decoration-none" href="#">커뮤니티 게시판</a></li>
                        <li><a class="text-decoration-none" href="#">반려견 캘린더</a></li>
                    </ul>
                </div>
            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a rel="nofollow" class="text-light text-decoration-none" target="_blank" href="http://fb.com/templatemo"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2021 V.I.P.
                            | Designed by <a rel="sponsored" href="https://templatemo.com/page/1" target="_blank">V.I.P.</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>