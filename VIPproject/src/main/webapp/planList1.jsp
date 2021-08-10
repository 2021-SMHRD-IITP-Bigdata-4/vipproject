<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Calendar"%>

<%@ include file="certificate.jsp" %>
<%@ include file="DbCon.jsp" %>

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
.t_div1 {
	float:left;
	width:31%;
}
.t_div2 {
	margin-top: 8px;
    float: left;
    margin-left: 12px;
    background-color: White;
}
.t_div3 {
float:right;
width:40%;
text-align:right;
}
.tables{
	width:100%;
	
}

</style>
<style type="text/css">
.p-text{
	margin-top: 25px;
	text-aline:center;
	padding-bottom: 1rem;
}
.ptag1{
	padding-bottom: 1rem;
	text-aline:center;
}
.ptag2{
	margin-top: 25px;
	padding-bottom: 1rem;
	text-aline:center;
}
.con{
	padding-bottom: 3rem!important; 
	width: 100%;
    padding-right: var(--bs-gutter-x,.75rem);
    padding-left: var(--bs-gutter-x,.75rem);
    margin-right: auto;
    margin-left: auto;
}
.in{
	font-size: 19px;
	font-weight: bold;
}
.cate{
	font-size: 18px;
	font-weight: bold;
}
.img{
	width: 100%;
	height: 100%;
}
.categori{
	height: 260px;
}
.img-fluids{
	max-width: 100%;
    height: 200px;
}
.img-fluid1{
	max-width: 100%;
    height: 205px;
}
.text{
	font-size: 15px;
}
.btn.btn-dark{
	font-size: 12px!important;
	float: right;
}
.address{
	font-size: 12px;
}
.copy{
	font-size: 12px;
}
</style>
</head>



<script>
function fn_planWrite(){
	
	
	}else {
	
		var w = (window.screen.width/2) - 200;
		var h = (window.screen.height/2) - 200;
		var url = "planWrite.jsp";
		window.open(url,"planWrite","width = 400, height = 400, left="+w+",top="+h);
	<%
	
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
<% 
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info"); 
	%>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                VIP
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
			
			
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="about_dogInfo.jsp"><span>반려견 정보</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_law.jsp">법과 정책</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_rankOfProductByShop.jsp">애견용품순위</a>
                        </li>
                        <li class="nav-item">
                        <%if (info != null){  %>
                            <a class="nav-link" href="allMap.jsp">애견동반시설</a>
                            <%}else{ %>
                            <a class="nav-link" id="egun"href="login.jsp">애견동반시설</a>
                            <%} %>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="boardMain.jsp">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="planList1.jsp">반려견 캘린더</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <%if (info != null){ %>                   
                    	<a href = "userUpdate.jsp">개인정보수정</a> <br>                  	
                    	<a href = "Logout">로그아웃</a>
                    <%} else {%>
                    <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                        <span>로그인</span><!--숫자표현  전체수정-->
                    </a>
                    <%}%>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->
    <br></br>
    <a><span style="font-size: 1.5em">내 반려견 캘린더</span></a>	
    <br></br>

    <!-- Start Content -->
    
    <form name="frm" method="post" action="planList1.jsp">

	<select name = "year">
		<%
		for(int y1=2021; y1<=2041; y1++ ) {
			
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

<input type="submit" class="btn btn-outline-success" value="달력보기">
<br></br>
	
</form>

	<div style="width:350px;">
	    <div class="t_div1">&nbsp;</div>
		<div class="t_div2">
			<%=y %>년<%=m+1 %>월
		</div>
		<div class="t_div3">
			<button type="button" class="btn btn-outline-success" onClick="location.href='planWrite1.jsp'">일정등록</button>
		</div>
</div>
	
<table class="tables">
<br></br>
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
    <!-- End Content -->

    <!-- Start Footer -->
    <br></br>
    <br></br>
    <br></br>
     <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">VIP</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <span class="address">동구 예술길 31-15 스마트인재개발원</span><br>
                            <span class="address">대표자 : VIP</span><br>
                            <span class="address">사업자등록번호 : 000-00-00000</span><br>
                            <span class="address">개인정보관리책임자 : 정세연</span><br>
                            <span class="address">고객센터 : 062-655-3509</span><br>
                            <span class="address">이메일 : vip_korea@vip.com</span>
                        </li>
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
                            <a rel="nofollow" class="text-light text-decoration-none" target="_blank"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
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
                            <span class="copy">Copyright &copy; 2021 V.I.P.
                            | Designed by VIP</span>
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
    <script>
function fn_planWrite(){
	
}

function fn_defail(v){
	var w = (window.screen.width/2) - 200;
	var h = (window.screen.height/2) - 200;
	var url = "planView.jsp?pdate="+v;
	window.open(url,"planview", "width = 400, height = 400, left="+w+",top="+h);
}


</script>
</body>

</html>