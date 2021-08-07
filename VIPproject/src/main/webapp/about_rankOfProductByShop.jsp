<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

<body>
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
            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            쇼핑몰별 랭킹보기
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag_1">11번가</a></li>
                            <li><a class="text-decoration-none" href="#tag_2">G마켓</a></li>
                            <li><a class="text-decoration-none" href="#tag_3">쿠팡</a></li>
                            <li><a class="text-decoration-none" href="#tag_4">코스트코</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                
                	<!-- 쇼핑몰 전체 -->
                	<!-- 11번가 -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_1">11번가</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">이나바 챠오츄르 고양이 마약간식 특별구성 모음전</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>32,500원</li>
                                </ul>
                                <p class="text-center mb-0">1위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">11번가 단독판매]커피빈 한정판 보냉백 세트(퍼플/블루) / 보냉가방 / 헤이즐넛라떼</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>21,900원</li>
                                </ul>
                                <p class="text-center mb-0">2위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">로얄캐닌 강아지 사료 견종별 포메라니안/푸들/말티즈/인도어/미디엄/치와와/라이트/비숑/라브라도</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,800원</li>
                                </ul>
                                <p class="text-center mb-0">3위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">BEST11번가대표 강아지간식 네츄럴코어 애견간식 강아지껌 껌 시저 애견사사미</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>1,980원</li>
                                </ul>
                                <p class="text-center mb-0">4위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">로얄캐닌 강아지 사료 견종별 포메라니안/푸들/말티즈/인도어/미디엄/치와와/라이트/비</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,800dnjs</li>
                                </ul>
                                <p class="text-center mb-0">5위</p>
                            </div>
                        </div>
                           	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                    </div>
                   
                    <!-- G마켓 -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_2"><br><br>G마켓</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[정직한패드]20g X 400매 정직한 애견패드 강아지패드 배변패드</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>24,750원</li>
                                </ul>
                                <p class="text-center mb-0">1위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[정직한패드]정직한패드 20g x 400매 애견패드 배변 강아지패드</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>23,900원</li>
                                </ul>
                                <p class="text-center mb-0">2위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[파우파우]맛있는 간식 300g X6개 강아지 실중량150g 파우파우</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>11,900원</li>
                                </ul>
                                <p class="text-center mb-0">3위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[정직한패드]초대형패드 160매 큰패드 애견패드 배변 강아지패드</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>26,790원</li>
                                </ul>
                                <p class="text-center mb-0">4위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[템테이션]템테이션 메가팩 BEST 맛 180g 4종</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>22,000원</li>
                                </ul>
                                <p class="text-center mb-0">5위</p>
                            </div>
                        </div>
                           	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                    </div>
                    
                    <!-- 쿠팡 -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_3"><br><br>쿠팡</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">터키츄 반려견 간식 본타입 S, 칠면조 + 소고기 혼합맛, 20개</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,600원</li>
                                </ul>
                                <p class="text-center mb-0">1위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">탐사 베이직 배변패드, 3개, 100매</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,970원</li>
                                </ul>
                                <p class="text-center mb-0">2위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">굿데이 건강한육포 반려견간식 300g, 오리가슴살 스틱, 1개</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>12,000원</li>
                                </ul>
                                <p class="text-center mb-0">3위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">수제의여왕 강아지 간식, 소고기큐브, 5개</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>14,900</li>
                                </ul>
                                <p class="text-center mb-0">4위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">요고 퓨레스틱 짜먹는 츄르 고양이간식 12g, 연어와황태, 연어와오리안심살, 닭가슴살과흰살생선, 닭가슴살과참치, 닭가슴살과고등어, 50개입</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>16,800원</li>
                                </ul>
                                <p class="text-center mb-0">5위</p>
                            </div>
                        </div>
                           	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                    </div>
                    
                    <!-- 코스트코 -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_4"><br><br>코스트코</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">커클랜드 시그니춰 프리미엄 애견 사료 15.87kg</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>48,990원</li>
                                </ul>
                                <p class="text-center mb-0">1위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">커클랜드 시그니춰 고양이 사료 11.3kg</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>32,190원</li>
                                </ul>
                                <p class="text-center mb-0">2위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">네츄럴 코어 치킨&연어 애견사료 7kg x 2</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>68,900원</li>
                                </ul>
                                <p class="text-center mb-0">3위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">네츄럴 코어 천연 오리가슴살 700g</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,490원</li>
                                </ul>
                                <p class="text-center mb-0">4위</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">닥터할리펫밀크바닐라200ml x 10 /최소구매 2</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>12,990원</li>
                                </ul>
                                <p class="text-center mb-0">5위</p>
                            </div>
                        </div>
                            <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                    </div>
                    
                    <!-- 쇼핑몰 끝 -->
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
                    <h2 class="h2 text-light border-bottom pb-3 border-light">다른 쇼핑몰 랭킹</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#tag_1">11번가</a></li>
                        <li><a class="text-decoration-none" href="#tag_2">G마켓</a></li>
                        <li><a class="text-decoration-none" href="#tag_3">쿠팡</a></li>
                        <li><a class="text-decoration-none" href="#tag_4">코스트코</a></li>
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