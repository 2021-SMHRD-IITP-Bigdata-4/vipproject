<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Zay Shop - About Page</title>
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
    	.btn-success{
    		margin-top: 1.5rem!important;
    		margin : 5px;
    	}
    	.row.text-center.pt-5.pb-3{
    		    padding-top: 1rem!important;
    	}
    	.form-login{
    			padding-bottom : 3rem!important;	
    	}
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
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
<% VipMemberDTO info = (VipMemberDTO)session.getAttribute("info"); %>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp" style ="display: inline-block; width:150px; height:70px;">
                <img src = "./img/gil.png" style = "width:100%; height:100%;">
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

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



  
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row text-center pt-5 pb-3">
            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                VIP
            </a>
            <div class="col-lg-6 m-auto">
    <div class="form-group">
<fieldset>
  <form action = "JoinService" method = "post">
   <!-- 회원정보수정 -->
    <div class="form-group">
      <input type="text" name = "id" class="form-control" id="exampleInputEmail1"  aria-describedby="emailHelp" placeholder="Enter ID">
    </div>
    <div>
    <font id = "checkId" size = "4"></font>
    </div>
   <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4"></label>
      <input type = "password" name = "pw" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4"></label>
      <input type = "password" name = "pw2" class="form-control" id="exampleInputPassword2" placeholder="Password check">
    </div>
    <div>
    <font id = "checkPw" size = "4"></font>
    </div>
   	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault"></label>
  		<input type="text" name = "name" class="form-control" placeholder="이름" id="inputDefault">
	</div>
   	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault"></label>
  		<input type="text" name = "display_name" class="form-control" placeholder="닉네임" id="inputDefault">
	</div>
   	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault"></label>
  		<input type="text" name = "phone" class="form-control" placeholder="전화번호" id="inputDefault">
	</div>
   	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault"></label>
  		<input type="text" name = "address" class="form-control" placeholder="주소" id="inputDefault">
	</div>
   </fieldset>
   
   <!-- 강아지 소유 여부 체크 -->
   <fieldset class="form-group">
      <legend class="mt-4">강아지 소유 여부</legend>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="have_dog" id="optionsRadios1" value="Yes">
          Yes
        </label>
      </div>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="have_dog" id="optionsRadios2" value="No">
          No
        </label>
      </div>
    </fieldset>
    
    <div class = "form-update">
    	<input type="submit" class="btn btn-success" value = "가입하기">
    </form>
    </div>
            </div>
        </div>
 
    </section>
    <!-- End Section -->

    <!-- Start Brands -->

    <!--End Brands-->


    <!-- Start Footer -->
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
    <script src = "js/jquery-3.6.0.min.js"></script>
	<script>
		$('.form-control').focusout(function(){
			let pass1 = $("#exampleInputPassword1").val();
			let pass2 = $("#exampleInputPassword2").val();
			
			if (pass1 != "" || pass2 !=""){
				if (pass1 == pass2){
					$("#checkPw").html('일치');
					$("#checkPw").attr('color','green');
				} else {
					$("#checkPw").html('불일치')
					$("#checkPw").attr('color','red');
										
				}
			}
			
		})		
		
				
		$('#exampleInputEmail1').focusout(function(){
			let userId = $('#exampleInputEmail1').val(); // input_id에 입력되는 값
			
			$.ajax({
				url : "IdCheckService",
				type : "post",
				data : {userId: userId},
				dataType : 'json',
				success : function(result){
					if(result == 0){
						$("#checkId").html('사용할 수 없는 아이디입니다.');
						$("#checkId").attr('color','red');
					} else{
						$("#checkId").html('사용할 수 있는 아이디입니다.');
						$("#checkId").attr('color','green');
					} 
				},
				error : function(){
					alert("서버요청실패");
				}
			})
			 
		})
	</script>
    <!-- End Script -->
</body>

</html>