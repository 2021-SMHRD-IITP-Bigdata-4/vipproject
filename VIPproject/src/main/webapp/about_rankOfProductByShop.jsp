<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>애견 용품 순위</title>
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
                            <a class="nav-link" href="shop.jsp">반려견 캘린더</a>
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
                    	<div class="card-body" id="tag_2"><br>G마켓</div>
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
                    	<div class="card-body" id="tag_3"><br>쿠팡</div>
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
                    	<div class="card-body" id="tag_4"><br>코스트코</div>
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
    <script type="text/javascript">
     $("#egun").on("click",function(){
    	 alert("로그인을 하신 후 이용해 주시기 바랍니다")
     });
    </script>
    <!-- End Script -->
</body>

</html>