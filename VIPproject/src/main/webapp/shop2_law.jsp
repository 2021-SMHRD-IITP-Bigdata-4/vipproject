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
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
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
                            <a class="nav-link" href="shop.jsp">요즘 트랜드</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">법과 정책</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">동반 서비스 업체</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">쇼핑몰별 잘팔리는 용품</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">커뮤니티 게시판</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">반려견 캘린더</a>
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
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    
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



    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">법과 정책 분류</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            법
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">동물보호법</a></li>
                            <li><a class="text-decoration-none" href="#">동물보호법 시행령</a></li>
                            <li><a class="text-decoration-none" href="#">동물보호법 시행규칙</a></li>
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            정책
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">정책</a></li>
                        </ul>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">기타 정책</a></li>
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            지역별 정책
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">광주광역시</a></li>
                        </ul>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">기타 지역</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                	<div class="col-md-4">
                    이전보다 더 반려동물과 반려개에 대한 권리를 생각하는 사람들이 많아졌어요.<br> 
                    그래서 많은 법들과 정책들도 덩달아 생겨나고 있어요.<br> 
                    이곳에서 최근에 개정된 내용을 확인하세요<br> 
                    업데이트일시 : 2021.08.02<br>
                	<!-----------법과 정책 > 법------------>
                        <div class="card mb-4 product-wap rounded-0">
                         법
                            <div class="card rounded-0">
                            > 동물보호법 주요내용
                            </div>
                            <div class="card-body">
                            제3조(동물보호의 기본원칙) 누구든지 동물을 사육ㆍ관리 또는 보호할 때에는 다음 각 호의 원칙을 준수하여야 한다.<br>  
                                <개정 2017. 3. 21.>
                                <p class="text-center mb-0">
                                1. 동물이 본래의 습성과 신체의 원형을 유지하면서 정상적으로 살 수 있도록 할 것<br>
                                2. 동물이 갈증 및 굶주림을 겪거나 영양이 결핍되지 아니하도록 할 것<br>
                                3. 동물이 정상적인 행동을 표현할 수 있고 불편함을 겪지 아니하도록 할 것<br>
                                4. 동물이 고통ㆍ상해 및 질병으로부터 자유롭도록 할 것<br>
                                5. 동물이 공포와 스트레스를 받지 아니하도록 할 것
                                </p>
                             </div>
                             <div class="card-body">제13조(등록대상동물의 관리 등)
                             	<p class="text-center mb-0">① 소유자등은 등록대상동물을 기르는 곳에서 벗어나게 하는 경우에는 소유자등의 연락처 등 농림축산식품부령으로 정하는 사항을 표시한 인식표를 등록대상동물에게 부착하여야 한다.<br>  
                                <개정 2013. 3. 23.><br>
                                ② 소유자등은 등록대상동물을 동반하고 외출할 때에는 농림축산식품부령으로 정하는 바에 따라 목줄 등 안전조치를 하여야 하며, 배설물(소변의 경우에는 공동주택의 엘리베이터ㆍ계단 등 건물 내부의 공용공간 및 평상ㆍ의자 등 사람이 눕거나 앉을 수 있는 기구 위의 것으로 한정한다)이 생겼을 때에는 즉시 수거하여야 한다.<br>  
                                <개정 2013. 3. 23., 2015. 1. 20.><br>
                                ③ 시ㆍ도지사는 등록대상동물의 유실ㆍ유기 또는 공중위생상의 위해 방지를 위하여 필요할 때에는 시ㆍ도의 조례로 정하는 바에 따라 소유자등으로 하여금 등록대상동물에 대하여 예방접종을 하게 하거나 특정 지역 또는 장소에서의 사육 또는 출입을 제한하게 하는 등 필요한 조치를 할 수 있다.
                            	<br>
                            	<br>
                            	전체내용 보러가기
                            	<br>
                            	</p>
                            </div>
                            <div class="card rounded-0">
                            > 동물보호법 시행령
                            </div>
                            <div class="card-body">
                            제6조의2(보험의 가입) 법 제13조의2제4항에 따라 맹견의 소유자는 다음 각 호의 요건을 모두 충족하는 보험에 가입해야 한다.
                                <p class="text-center mb-0">1. 다음 각 목에 해당하는 금액 이상을 보상할 수 있는 보험일 것<br>
                                가. 사망의 경우에는 피해자 1명당 8천만원<br>
                                나. 부상의 경우에는 피해자 1명당 농림축산식품부령으로 정하는 상해등급에 따른 금액<br>
                                다. 부상에 대한 치료를 마친 후 더 이상의 치료효과를 기대할 수 없고 그 증상이 고정된 상태에서 그 부상이 원인이 되어 신체의 장애(이하 “후유장애”라 한다)가 생긴 경우에는 피해자 1명당 농림축산식품부령으로 정하는 후유장애등급에 따른 금액<br>
                                라. 다른 사람의 동물이 상해를 입거나 죽은 경우에는 사고 1건당 200만원<br>
                                2. 지급보험금액은 실손해액을 초과하지 않을 것. 다만, 사망으로 인한 실손해액이 2천만원 미만인 경우의 지급보험금액은 2천만원으로 한다.<br>
                                3. 하나의 사고로 제1호가목부터 다목까지의 규정 중 둘 이상에 해당하게 된 경우에는 실손해액을 초과하지 않는 범위에서 다음 각 목의 구분에 따라 보험금을 지급할 것<br>
                                가. 부상한 사람이 치료 중에 그 부상이 원인이 되어 사망한 경우에는 제1호가목 및 나목의 금액을 더한 금액<br>
                                나. 부상한 사람에게 후유장애가 생긴 경우에는 제1호나목 및 다목의 금액을 더한 금액<br>
                                다. 제1호다목의 금액을 지급한 후 그 부상이 원인이 되어 사망한 경우에는 제1호가목의 금액에서 같은 호 다목에 따라 지급한 금액 중 사망한 날 이후에 해당하는 손해액을 뺀 금액<br>
                                [본조신설 2021. 2. 9.]
                                <br>
                                <br>
                            	전체내용 보러가기
                            	<br>
                            	</p>
                            </div>
                            <div class="card rounded-0">
                            > 동물보호법 시행규칙
                            </div>
                            <div class="card-body">
                            제12조(안전조치)
                                <p class="text-center mb-0">① 소유자등은 법 제13조제2항에 따라 등록대상동물을 동반하고 외출할 때에는 목줄 또는 가슴줄을 하거나 이동장치를 사용해야 한다. 다만, 소유자등이 월령 3개월 미만인 등록대상동물을 직접 안아서 외출하는 경우에는 해당 안전조치를 하지 않을 수 있다.  <개정 2021. 2. 10.><br>
                                ② 제1항 본문에 따른 목줄 또는 가슴줄은 2미터 이내의 길이여야 한다.  <개정 2021. 2. 10.><br>
                                ③ 등록대상동물의 소유자등은 법 제13조제2항에 따라 「주택법 시행령」 제2조제2호 및 제3호에 따른 다중주택 및 다가구주택, 같은 영 제3조에 따른 공동주택의 건물 내부의 공용공간에서는 등록대상동물을 직접 안거나 목줄의 목덜미 부분 또는 가슴줄의 손잡이 부분을 잡는 등 등록대상동물이 이동할 수 없도록 안전조치를 해야 한다.  <신설 2021. 2. 10.><br>
                                [전문개정 2019. 3. 21.]<br>
                                [시행일 : 2022. 2. 11.] 제12조제2항, 제12조제3항
                            	<br>
                            	<br>
                            	전체내용 보러가기
                            	<br>
                            	</p>
                            </div>
                        </div>
                    </div>
            		<!----------법과 정책 > 정책 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         정책
                            <div class="card rounded-0">
                            > 동물보호 복지대책
                            </div>
                            <div class="card-body">
                            양파
                                <p class="text-center mb-0"> 버리며, 심한 경우에는 급성 빈혈을 일으켜 죽기도 한다.</p>
                            </div>
                            <div class="card rounded-0">
                            > 기타 정책
                            </div>
                            <div class="card-body">
                            주요내용
                                <p class="text-center mb-0">다.</p>
                            </div>
                        </div>
                    </div>
                 	<!----------법과 정책 > 지역별 정책 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         지역별 정책
                            <div class="card rounded-0">
                            > 광주광역시
                            </div>
                            <div class="card-body">
                            제1장 총칙
                                <p class="text-center mb-0">제1조(목적) 이 조례는 「동물보호법」에서 위임된 사항과 
                                동물보호 및 복지에 관한 사항을 규정함으로써 동물의 생명보호, 안전보장 및 복지증진을 도모하고, 
                                시민과 동물의 조화로운 공존에 기여함을 목적으로 한다.</p>
                          	</div>
                          	<div class="card-body">
                            제2조(정의) 이 조례에서 사용하는 용어의 뜻은 다음과 같다.
                                <p class="text-center mb-0">1. "소유자등"이란 동물의 소유자와 일시적 또는 영구적으로 동물을 사육·관리 
                                또는 보호하는 사람을 말한다.<br>
                                2. "유실·유기동물"이란 도로·공원 등의 공공장소에서 소유자나 일시적 또는 영구적으로 동물을 사육·관리 또는 
                                보호하는 사람 없이 배회하거나 내버려진 동물을 말한다.<br>
                                3. "보호조치"란 「동물보호법」(이하 "법"이라 한다) 제7조에 따른 동물의 치료·보호에 필요한 조치를 말한다.<br>
                                4. "등록대상동물"이란 동물의 보호, 유실·유기방지, 질병의 관리, 공중위생상의 위해 방지 등을 위하여 등록이
                                 필요한 다음 각 목의 어느 하나에 해당하는 월령 3개월 이상인 개를 말한다.<br>
                                 가. 「주택법」 제2조제1호 및 제4호에 따른 주택·준주택에서 기르는 개<br>
                                 나. 가목에 따른 주택·준주택 외의 장소에서 반려 목적으로 기르는 개<br>
                                5. "맹견"이란 도사견, 핏불테리어, 로트와일러 등 사람의 생명이나 신체에 위해를 가할 우려가 있는 개로서 법 
                                시행규칙 제1조의2의 어느 하나에 해당하는 개를 말한다.<br>
                                6. "길고양이"란 도심지나 주택가에서 자연적으로 번식하여 자생적으로 살아가는 고양이를 말한다.<br>
                                7. "반려동물"이란 사람이 정서적으로 의지하고자 가까이 두고 기르는 개, 고양이 등의 동물을 말한다.<br>
                                8. "반려동물 놀이시설"이란 반려동물이 소유자와 함께 자유롭게 활동할 수 있도록 일정한 공간에 울타리 
                                등을 둘러 만든 시설을 말한다.<br>
                                9. "반려동물 장묘시설"이란 다음 각 목 중 어느 하나 이상에 해당하는 시설을 말한다.<br>
                                  가. 반려동물 전용 장례식장<br>
                                  나. 반려동물의 사체 또는 유골을 불에 태우는 방법으로 처리하는 시설 또는 건조·멸균분쇄의 방법으로 처리하는 시설<br>
                                  다. 반려동물 전용 봉안시설
                                <br>
                            	<br>
                            	전체내용 보러가기
                            	<br>
                            	</p>
                          	</div>
                          	<div class="card rounded-0">
                            > 기타 지역
                            </div>
                            <div class="card-body">
                            호흡기
                                <p class="text-center mb-0">콧물,</p>
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
                            <a class="text-decoration-none" href="bigdatadallie@gmail.com">bigdatadallie@gmail.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">다른 애완견 정보 보기</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">기초 상식</a></li>
                        <li><a class="text-decoration-none" href="#">건강 정보</a></li>
                        <li><a class="text-decoration-none" href="#">견종별 특성</a></li>
                   

                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">더 많은 V.I.P. 서비스 보기</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">애완견 정보</a></li>
                        <li><a class="text-decoration-none" href="#">요즘 트랜드</a></li>
                        <li><a class="text-decoration-none" href="#">법과 정책</a></li>
                        <li><a class="text-decoration-none" href="#">동반 서비스 업체</a></li>
                        <li><a class="text-decoration-none" href="#">쇼핑몰별 잘팔리는 애완용품</a></li>
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
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
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