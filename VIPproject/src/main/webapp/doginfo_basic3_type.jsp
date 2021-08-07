<%@page import="Model.DogInfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DogInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>about dog basic info</title>
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

<body>

<!-- 개 목록 이 페이지에서 보여주기 위해 생성 -->

<%
	DogInfoDAO dao = new DogInfoDAO();
	ArrayList<DogInfoDTO> list = dao.selectAll();

%>
	<!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand text-success logo h1 align-self-center" href="about_dogInfo.jsp">
                V.I.P.
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="about_dogInfo.jsp">애완견 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_law.jsp">동물법과 정책</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_rankOfProductByShop.jsp">잘 팔리는 용품</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="allMap.jsp">애완견 동반 서비스</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="boardMain.jsp">커뮤니티 게시판</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_dogInfo.jsp">내 반려견 캘린더</a>
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
    <div class="container py-5">
        <div class="row">
            
            <!-- 견종별 특징 목차  -->
            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            견종별 특징
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                        	
                        	<%for(int i = 0;i<list.size();i++){ %> 
                           	<li ><a class="text-decoration-none" id = "dogname" href="#tag_<%=i%>"><%=list.get(i).getT_type()%></a></li>
                            <%}%>
                            <li>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                            </li>
                        </ul>
                        
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li>	
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                            	
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="card mb-4 product-wap rounded-0">
                        <!-- 하나의 견종에 대한 특성을 보여줌 -->
                 		<%for(int i = 0;i<list.size();i++){ %> 
                        <div class="card-body" id = "tag_<%=i%>">
                        	<!-- 1 -->
                       		<%=list.get(i).getT_type()%>
                       		<br><br>
                       		<!-- 2 --> 
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">원산지</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_origin()%></p>
                            <br>
                            <!-- 3 --> 	
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">성격</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_personality()%></p>
                            <br>
                            <!-- 4 --> 	
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">크기</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_size()%></p>
                            <br>
                            <!-- weight -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">크기</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_weight()%></p>
                            <br>
                            <!-- 유전병 -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">유전병</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_disease()%></p>
                            <br>
                            <!-- 내한성 -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">내한성</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_resistance()%></p>
                            <br>
                            <!-- 운동량 -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="text-center mb-0">운동량</p>
                            </ul>
                            	<p class="text-center mb-0"><%=list.get(i).getT_workout()%></p>
                            <br>
				                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                       	<%}%>
                    </div>
				</div>                   
            </div>
        </div>
    </div>
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
                    <h2 class="h2 text-light border-bottom pb-3 border-light">다른 애완견 정보 보기</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="doginfo_basic1.jsp">기초 상식</a></li>
                        <li><a class="text-decoration-none" href="doginfo_basic2.jsp">건강 정보</a></li>
                        <li><a class="text-decoration-none" href="doginfo_basic3.jsp">견종별 특성</a></li>
                    </ul>
                </div>
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">애완견 종합정보</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="about_dogInfo.jsp">애완견 정보</a></li>
                        <li><a class="text-decoration-none" href="about_law.jsp">동물법과 정책</a></li>
                        <li><a class="text-decoration-none" href="about_rankOfProductByShop.jsp">잘 팔리는 용품</a></li>
                        <li><a class="text-decoration-none" href="allMap.jsp">애완견 동반 서비스</a></li>
                        <li><a class="text-decoration-none" href="boardMain.jsp">커뮤니티 게시판</a></li>
                        <li><a class="text-decoration-none" href="about_dogInfo.jsp">반려견 캘린더</a></li>
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
                            Copyright &copy; 2021 V.I.P.
                            | Designed by <a rel="sponsored" target="_blank">V.I.P.</a>
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