<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>VIP - Dog Information Page</title>
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

	<!--Start Banner -->
    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>애완견 정보</h1>
                    <p>
                        내가 기르는 반려견은 어떤 아이일까요?<br>
                        어떤걸 좋아하고 어떨때 행복할까요?<br>
                        우리는 서로 알아가는게 필요해요
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/dog1_aboutDog-removebg-preview.png" alt="About Hero">
                </div>
            </div>
        </div>
    </section>
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row">
            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center">
                    	<img src="assets/img/80dog1_aboutDog-removebg-preview.png" alt="About Hero">
                    </div>
                    <h2 class="h5 mt-4 text-center">기초 상식</h2>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center">
                    	<img src="assets/img/80dog1_aboutDog-removebg-preview.png" alt="About Hero">
                    </div>
                    <h2 class="h5 mt-4 text-center">건강 정보</h2>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center">
                    	<img src="assets/img/80dog1_aboutDog-removebg-preview.png" alt="About Hero">
                    </div>
                    <h2 class="h5 mt-4 text-center">견종별 특성</h2>
                </div>
            </div>
        </div>
    </section>
    <!-- End Section -->

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
                        <li><a class="text-decoration-none" href="#">애완견 정보</a></li>
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