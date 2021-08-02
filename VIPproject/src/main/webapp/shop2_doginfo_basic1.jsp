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
                <h1 class="h2 pb-4">애완견 정보 분류</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            기초상식
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">개종류 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#">용품 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#">질병 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#">기타 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#">개의 피모와 컬러</a></li>
                            <li><a class="text-decoration-none" href="#">개의 몸과 귀</a></li>
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            건강정보
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">식사관리</a></li>
                            <li><a class="text-decoration-none" href="#">먹으면 안되는 음식물</a></li>
                            <li><a class="text-decoration-none" href="#">질병</a></li>
                            <li><a class="text-decoration-none" href="#">임신과 출산</a></li>
                            <li><a class="text-decoration-none" href="#">강아지의 성장</a></li>
                            <li><a class="text-decoration-none" href="#">개의 훈련</a></li>
                            <li><a class="text-decoration-none" href="#">애견 예방접종</a></li>
                            
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            견종별 특성
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">닥스훈트</a></li>
                            <li><a class="text-decoration-none" href="#">치와와</a></li>
                            <li><a class="text-decoration-none" href="#">등등....</a></li>
                            <li><a class="text-decoration-none" href="#">-이름 총 147개 되게-</a></li>
                            
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                <!-----------기초상식>개 종류 관련------------>
                	<div class="col-md-4">
                    기초 상식
                        <div class="card mb-4 product-wap rounded-0">
                         개종류 관련 용어
                            <div class="card rounded-0">
                            </div>
                            <div class="card-body">
                            컴페이언도그
                                <p class="text-center mb-0">가정견으로 키우는 개.</p>
                            </div>
                            <div class="card-body">
                            토이 도그
                                <p class="text-center mb-0">애완견.</p>
                            </div>
                            <div class="card-body">
                            하딩 도그
                                <p class="text-center mb-0">목양견, 목축견, 호양견 등 목축에 이용되는 개의 총칭. 콜리나 보더 콜리 등이 대표적인 견종. 하딩은 영어로 '가축들을 모은다'는 뜻이다.</p>
                            </div>
                            <div class="card-body">
                            목축견
                                <p class="text-center mb-0">소나 돼지 등의 목축을 감시하거나 유도하는 개.</p>
                            </div>
                            <div class="card-body">
                            목양견
                                <p class="text-center mb-0">양떼를 감시, 유도하는 개. 대표적인 견종으로 콜리가 있다.</p>
                            </div>
                            <div class="card-body">
                            호양견
                                <p class="text-center mb-0">해수나 적으로부터 양을 지키는 푸리나 코몬도르 등의 개. 늑대에게도 맞서 싸울 만큼 용맹하다.</p>
                            </div>
                            <div class="card-body">
                            캐틀 도그
                                <p class="text-center mb-0">소(영어로 캐틀)떼를 유도하는 개. 목축견.</p>
                            </div>
                            <div class="card-body">
                            건 독
                                <p class="text-center mb-0">새를 쫓아내는 잉글리시 코커스패니얼이나 사냥감이 있는 장소를 알리는 포인터나 세터, 사냥꾼이 쏜 사냥감을 회수하는 리트리버 등, 새사냥을 돕는 조렵견을 뜻한다.</p>
                            </div>
                            <div class="card-body">
                            스피츠 계열
                                <p class="text-center mb-0">스피츠나 시바견 등 뾰족하게 선 귀와 뾰족한 구문(입 주변 전체)를 가진 견종.</p>
                            </div>
                            <div class="card-body">
                            테리어
                                <p class="text-center mb-0">오소리나 여우, 쥐사냥 등에 이용되는 수렵견종의 총칭. 땅굴 속에 숨어 있는 사냥감을 쫓아내거나 끌어내는 등 사냥을 돕는 데서 '땅'이라는 뜻을 가진 라틴어 이름이 붙었다.</p>
                            </div>
                            <div class="card-body">
                            하운드
                                <p class="text-center mb-0">사냥감을 추적하기 위해 만들어진 수렵견의 총칭.</p>
                            </div>
                            <div class="card-body">
                            센트 하운드
                                <p class="text-center mb-0">후각을 이용해 사냥감의 냄새를 더듬어가는 하운드.</p>
                            </div>
                            <div class="card-body">
                            사이트 하운드
                                <p class="text-center mb-0">멀리서 사냥감을 발견하면 전력질주해서 쫓는 시각형 하운드. 스마트한 체형이다.</p>
                            </div>
                            <div class="card-body">
                            워킹 도그
                                <p class="text-center mb-0">경비나 호위, 구조, 탐색, 하차인도, 썰매끌기 등 사냥 외에도 인간을 위해서 일하는 개.</p>
                            </div>
                            <div class="card-body">
                            워터 도그
                                <p class="text-center mb-0">바다나 강, 호수 등에서 수중작업을 하는 수영 실력이 뛰어난 개.</p>
                            </div>
                            <div class="card-body">
                            마타기견
                                <p class="text-center mb-0">일본에서 오래전부터 사냥에 이용된 개의 총칭. 아키타견 등이 그 피를 이어받았다.</p>
                            </div>
                            <div class="card-body">
                            투견
                                <p class="text-center mb-0">개끼리 싸움을 시키는 것. 토사견이나 옛날의 스태포드셔 불 테리어 등이 유명.</p>
                            </div>
                            <div class="card-body">
                            군용견
                                <p class="text-center mb-0">전령이나 감시 등의 군병 일을 돕는 개. 독일 셰퍼드 도그나 도베르만, 그레이트 데인 등이 대표 견종.</p>
                            </div>
                            <div class="card-body">
                            경찰견
                                <p class="text-center mb-0">경찰의 범죄수사에서 냄새를 추적하거나 순찰 등에 활약하는 개. 한국에서는 독일 셰퍼드나 래브라도 리트리버 등 3견종이 이용된다.</p>
                            </div>
                            <div class="card-body">
                            마약견
                                <p class="text-center mb-0">공항 등에서 화물에 숨겨진 마약류의 냄새를 맡고 찾아내는 개.</p>
                            </div>
                            <div class="card-body">
                            화재구조견
                                <p class="text-center mb-0">화재시 무너진 잔해에 깔린 생존자를 냄새로 탐색하고 구조하는 개.</p>
                            </div>
                            <div class="card-body">
                            해상구조견
                                <p class="text-center mb-0">해상재난을 당한 사람을 구조하는 개. 뉴펀들랜드가 유명</p>
                            </div>
                            <div class="card-body">
                            맹도견
                                <p class="text-center mb-0">시각장애인을 돕는 개. 래브라도 리트리버가 대표종.</p>
                            </div>
                            <div class="card-body">
                            청도견
                                <p class="text-center mb-0">청각장애인을 돕는 개. 견종에 상관없이 애완견도 청도견이 될 수 있다.</p>
                            </div>
                            <div class="card-body">
                            간호견
                                <p class="text-center mb-0">신체장애인을 돕는 개.</p>
                            </div>
                            <div class="card-body">
                            세라피견
                                <p class="text-center mb-0">의료나 복지현장에서 인간의 마음을 치유하는 애니멀 세라피(동물치료요법)에 종사하는 개.</p>
                            </div>
                            <div class="card-body">
                            토착견
                                <p class="text-center mb-0">옛날부터 그 지방에 서식하던 개.</p>
                            </div>
                        </div>
                     </div>  
                    
                <!----------기초 > 용품관련 용어 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                       용품 관련 용어
                          <div class="card rounded-0">
                          </div>
                          <div class="card-body">
                          서클
                              <p class="text-center mb-0">철제나 플라스틱제 펜스를 뜻하며 주로 개를 실내 사육할 때 사용한다. 평소 개가 머무는 공간을 둘러싸고 안에 하우스나 화장실, 식기 등을 넣어준다.</p>
                          </div>
                          <div class="card-body">
                          하우스
                              <p class="text-center mb-0">개가 침대로 사용하는 사육용품. 개가 안심하고 지낼 수 있는 동굴 모양이 좋다.</p>
                          </div>
                          <div class="card-body">
                          화장실
                              <p class="text-center mb-0">화장실 시트를 고정할 수 있는 것이 좋다.</p>
                          </div>
                          <div class="card-body">
                          화장실 시트
                              <p class="text-center mb-0">화장실에 까는 시트 형태의 종이. 강아지가 화장실 버릇을 익힐 때까지 서클 전체에 깔아두고 아무 데서나 볼일을 봐도 괜찮도록 적응기간을 둔다.</p>
                          </div>
                          <div class="card-body">
                          펫히터
                              <p class="text-center mb-0">펫 전용 전기히터. 방석 모양의 펫히터를 이불 밑에 깔고 사용한다.</p>
                          </div>
                          <div class="card-body">
                          캐리어
                              <p class="text-center mb-0">개를 안에 넣어 운반할 수 있는 용구. 캐스터가 달렸거나 가방 모양, 등에 매는 모양, 케이지 모양, 연결해서 넓은 공간으로 사용할 수 있는 모양 등 여러 가지 타입이 있다.</p>
                          </div>
                          <div class="card-body">
                          리드
                              <p class="text-center mb-0">목줄. 벨트 모양이나 단면이 둥근 끈, 체인 등 여러 가지 타입이 있다.</p>
                          </div>
                          <div class="card-body">
                          초커
                              <p class="text-center mb-0">목걸이와 일체화된 타입의 리드. 뒤로 잡아당기면 목줄 부분이 조이므로, 산책시 훈련에 이용하면 효과적이다.</p>
                          </div>
                          <div class="card-body">
                          솔 브러시
                              <p class="text-center mb-0">돼지털 등으로 만든 브러시. 단모종을 빗질할 때 편리하며 털에 윤기를 내준다.</p>
                          </div>
                          <div class="card-body">
                          슬리커 브러시
                              <p class="text-center mb-0">금속제로 바늘 모양의 핀을 심은 브러시. 빠진 털을 제거하거나 엉킨 털을 풀거나 결을 정리하는 용도이며, 털이 부드러운 장모견에게 적합하다. 바늘이 개의 피부에 닿으면 상처가 나므로 몸에는 닿지 않게 사용해야 한다.</p>
                          </div>
                          <div class="card-body">
                          핀 브러시
                              <p class="text-center mb-0">끝이 둥근 핀을 심은 브러시. 오버코트에서 빠진 털을 제거하거나 엉킨 장모의 결을 정돈한다. 피부에 자극을 주는 효과도 있다.</p>
                          </div>
                          <div class="card-body">
                          일자빗(comb)
                              <p class="text-center mb-0">빠진 털 등을 제거하고 결을 정리해준다.</p>
                          </div>
                      </div>
                  </div>
                  <!----------기초 > 질병 관련 용어 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                       질병 관련 용어
                          <div class="card rounded-0">
                          </div>
                          <div class="card-body">
                          기생충
                              <p class="text-center mb-0">동물의 몸에 기생해 질병을 발생시키는 벌레. 벼룩이나 진드기 등 몸의 외부에 기생하는 외부기생충과 개사상충(필라리아)이나 회충 등 심장이나 장내 등 내부에 기생하는 것이 있다.</p>
                          </div>
                          <div class="card-body">
                          필라리아
                              <p class="text-center mb-0">개사상충 등의 기생충이 혈관에 들어가 증식하면서 개의 몸을 좀먹는 질병. 이 기생충의 매개인 모기가 발생하기 1개월 전부터, 보이지 않는 1개월 후까지 예방약을 먹이면 대부분 막을 수 있다.</p>
                          </div>
                          <div class="card-body">
                          광견병
                              <p class="text-center mb-0">일단 발병하면 치료방법이 없고, 거의 100퍼센트 사망에 이르는 무서운 바이러스성 감염증. 신경이 망가지고 끔찍한 증상을 보이며 사람을 공격하기도 한다. 광견병바이러스는 개뿐만 아니라 다른 동물에게서도 옮으며, 사람을 포함한 모든 포유류에게 감염된다. 때문에 주인은 봄·가을 광견병 예방주사를 해주는 것이 좋다.</p>
                          </div>
                          <div class="card-body">
                          백신주사
                              <p class="text-center mb-0">개의 전염병을 예방하는 주사. 연2회의 접종으로 전염병을 예방할 수 있으니 맞히는 것이 좋다. 특히 새끼 때는 반드시 백신주사를 맞혀야 한다.</p>
                          </div>
                          <div class="card-body">
                          항문선
                              <p class="text-center mb-0">냄새를 유발하는 원인이 집결되어 있는 취선으로 항문 옆에 있다. 내버려두면 파열될 수 있으니 정기적으로 짜주는 것이 좋다.</p>
                          </div>
                      </div>
                  </div>
                  <!----------기초 > 기타 관련 용어 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                       기타 관련 용어
                          <div class="card rounded-0">
                          </div>
                          <div class="card-body">
                          트리밍
                              <p class="text-center mb-0">개나 고양이의 외모를 깨끗하게 정돈해주기 위해서 털을 깎거나 목욕시키는 것.</p>
                          </div>
                          <div class="card-body">
                          그루밍
                              <p class="text-center mb-0">개가 스스로 하는 피모 손질로 브러싱이나 트리밍 효과가 있다.</p>
                          </div>
                          <div class="card-body">
                          당김운동
                              <p class="text-center mb-0">개에게 리드를 달아서 도보나 자전거와 나란히 걷게 하는 운동.</p>
                          </div>
                          <div class="card-body">
                          자유운동
                              <p class="text-center mb-0">개에게 리드를 달지 않고 자유롭게 달리거나 놀게 하는 운동. 도그런 등에서 한다.</p>
                          </div>
                          <div class="card-body">
                          도그런
                              <p class="text-center mb-0">리드를 풀어 개가 자유롭게 뛰어놀 수 있는 전용 운동장.</p>
                          </div>
                          <div class="card-body">
                          트리머
                              <p class="text-center mb-0">개나 고양이 미용사.</p>
                          </div>
                          <div class="card-body">
                          브리더
                              <p class="text-center mb-0">개나 고양이의 순종 번식가.</p>
                          </div>
                          <div class="card-body">
                          환모기(털갈이 시기)
                              <p class="text-center mb-0">피모가 빠지고 새로 나는 시기로, 계절의 기온변화에 의해 일어난다. 10~11월경 생겨난 언더코트는 겨울털이 되었다가 4~5월경 빠지기 시작한다.</p>
                          </div>
                          <div class="card-body">
                          패드
                              <p class="text-center mb-0">발바닥의 육구. 다리에 가해지는 부담을 완화시키는 쿠션 역할을 하며 미끄러짐 방지 효과도 있다.</p>
                          </div>
                          <div class="card-body">
                          늑대발톱
                              <p class="text-center mb-0">개의 다리에 있는 발톱으로 퇴화된 엄지 부분에 있다. 오래 전 늑대였을 때의 흔적으로 보통은 제거한다. 대개는 앞다리에 있는데, 그레이트 피레네는 뒷다리에도 있다.</p>
                          </div>
                          <div class="card-body">
                          단이
                              <p class="text-center mb-0">도베르만이나 복서, 그레이트 데인 등 본래 늘어진 귀를 가진 견종의 귀를 뾰족하게 선 귀로 만들기 위해서 생후 3~5개월경 마취시키고 귀의 일부를 절제하는 것이다. 유럽 여러 나라에서는 금지시키며, 단이시킨 개는 아예 수입 금지되기도 한다.</p>
                          </div>
                          <div class="card-body">
                          단미
                              <p class="text-center mb-0">외모를 정돈하기 위해서 생후 10일경 꼬리를 절단하는 것이다. 유럽 여러 나라에서는 금지되어 있고, 단미시킨 개는 아예 수입 금지되기도 한다.</p>
                          </div>
                          <div class="card-body">
                          영역
                              <p class="text-center mb-0">개는 영역을 표시하기 위해 산책할 때 여러 장소에 오줌을 눈다.</p>
                          </div>
                          <div class="card-body">
                          마킹
                              <p class="text-center mb-0">주로 산책할 때 개가 여러 장소에 오줌을 눠 냄새를 묻히는 것. 개의 두상이나 몸에 들어간 무늬를 가리키기도 한다.</p>
                          </div>
                          <div class="card-body">
                          헛울음
                              <p class="text-center mb-0">경계할 필요가 없는데도 개가 주인의 제지를 듣지 않고 짖어대는 것.</p>
                          </div>
                          <div class="card-body">
                          스탠더드
                              <p class="text-center mb-0">이상적인 견종의 형태를 규정한 견종표준. 체격의 크기나 모질색, 두상의 형태 등 기준치 외에 결점에 관한 규정도 있다. 단체에 따라 조금씩 차이가 있다.</p>
                          </div>
                          <div class="card-body">
                          공인견종
                              <p class="text-center mb-0">견종단체에 공인되어 있는 견종. 각국의 켄넬클럽이나 견종 단체에 따라서 독자적으로 공인되어 있는 견종도 있지만, 본서에서는 FCI(국제축견연맹)에 공인되어 있는 개를 '공인견종'으로 하고, FCI의 견종번호를 표기했다.</p>
                          </div>
                      </div>
                  </div>
                  <!----------기초 > 개의 피모와 컬러 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                       개의 피모와 컬러
                          <div class="card rounded-0">
                          > 모질타입
                          </div>
                          <div class="card-body">
                          와이어
                              <p class="text-center mb-0">철사처럼 뻣뻣하고 거친 모질 타입. 와이어 헤어드라고도 한다.</p>
                          </div><div class="card-body">
                          롱
                              <p class="text-center mb-0">장모 타입. 롱헤어라고도 한다.</p>
                          </div>
                          <div class="card-body">
                          스무스
                              <p class="text-center mb-0">단모 타입. 쇼트헤어라고도 한다.</p>
                          </div>
                          <div class="card-body">
                          헤어리스
                              <p class="text-center mb-0">피모가 없는 타입. 차이니즈 크레스티드 도그나 멕시칸 헤어리스 도그가 유명.</p>
                          </div>
                          <div class="card-body">
                          오버코트
                              <p class="text-center mb-0">개의 몸 표면에 있는 털을 가리키는데 상모, 강모, 병모라고도 한다. 언더코트와 달리 뻣뻣.</p>
                          </div>
                          <div class="card-body">
                          언더코트
                              <p class="text-center mb-0">오버코트 아래의 조밀하게 난 부드러운 털로 하모라고도 한다. 몸을 보온하거나 방수하는 역할을 하고, 가을에 생기기 시작해서 초여름에는 빠진다. 언더코트가 없는 견종도 있다.</p>
                          </div>
                          <div class="card-body">
                          싱글코트
                              <p class="text-center mb-0">언더코트 없이 오버코트만 가진 피모.</p>
                          </div>
                          <div class="card-body">
                          더블코트
                              <p class="text-center mb-0">오버코트와 언더코트로 된 이중코트의 피모.</p>
                          </div>
                          <div class="card-body">
                          얼룩털
                              <p class="text-center mb-0">오버코트 위로 드문드문 돋아난 다른 빛깔의 피모.</p>
                          </div>
                          <div class="card-body">
                          장식털
                              <p class="text-center mb-0">주로 귀나 사지, 꼬리 등에 있는 긴 피모.</p>
                          </div>
                          
                          <div class="card-body">
                          장식털
                              <p class="text-center mb-0">주로 귀나 사지, 꼬리 등에 있는 긴 피모.</p>
                          </div>
                          <div class="card-body">
                          반점
                              <p class="text-center mb-0">바탕색과는 다른 색깔이나 짙은 무늬가 띄엄띄엄 흩어진 것. 마킹이라고도 한다.</p>
                          </div>
                          <div class="card-body">
                          스폿
                              <p class="text-center mb-0">작은 무늬. 콤비네이션을 이루는 두 가지 다른 색의 조합.</p>
                          </div>
                          <div class="card-body">
                          댑플
                              <p class="text-center mb-0">여러 가지 색으로 무늬를 이루는 피모 타입.</p>
                          </div>
                          <div class="card-body">
                          블레이즈
                              <p class="text-center mb-0">개의 두 눈 사이를 지나는 하얀 무늬.</p>
                          </div>
                          <div class="card-body">
                          마스크
                              <p class="text-center mb-0">입이나 이마 앞부분의 피모 색깔이 진한 부분으로, 복서나 마스티프 등의 견종에게서 보이는 특징. 피모색이 거뭇한 것은 블랙마스크라고 한다.</p>
                          </div>
                          <div class="card rounded-0">
                          > 개의 여러가지 컬러
                          </div>
                          <div class="card-body">
                          애플리코트
                              <p class="text-center mb-0">살구색. 붉은 기가 있는 노랑색.</p>
                          </div>
                          <div class="card-body">
                          옐로우
                              <p class="text-center mb-0">옅은 갈색. 래브라도 리트리버가 대표.</p>
                          </div>
                          <div class="card-body">
                          휘튼
                              <p class="text-center mb-0">보리색. 옅은 노란색을 띈 색.</p>
                          </div>
                          <div class="card-body">
                          크림
                              <p class="text-center mb-0">크림</p>
                          </div>
                          <div class="card-body">
                          그레이
                              <p class="text-center mb-0">회색. 진한 다크 그레이에서 옅은 실버 그레이 등 농담은 다양.</p>
                          </div>
                          <div class="card-body">
                          골든
                              <p class="text-center mb-0">황금색.</p>
                          </div>
                          <div class="card-body">
                          세이블
                              <p class="text-center mb-0">옅은 기본색에 검은 털이 섞인 것.</p>
                          </div>
                          <div class="card-body">
                          쵸콜릿
                              <p class="text-center mb-0">진한 적갈색이나 고동색.</p>
                          </div>
                          <div class="card-body">
                          트라이 컬러
                              <p class="text-center mb-0">흰색과 검은색, 턴(황갈색)의 삼색에서 비롯된 모색. 와이어 폭스 테리어가 유명.</p>
                          </div>
                          <div class="card-body">
                          파티 컬러
                              <p class="text-center mb-0">흰색 바탕에 뚜렷한 색깔의 무늬가 있는 것.</p>
                          </div>
                          <div class="card-body">
                          헐크인
                              <p class="text-center mb-0">흰색 바탕에 검은색이나 청회색 무늬가 들어 있는 것.</p>
                          </div>
                          <div class="card-body">
                          퓨어 화이트(백)
                              <p class="text-center mb-0">순백색.</p>
                          </div>
                          <div class="card-body">
                          폰
                              <p class="text-center mb-0">황금색을 띤 갈색. 농담은 다양.</p>
                          </div>
                          <div class="card-body">
                          블랙 앤 탄
                              <p class="text-center mb-0">검은색 바탕에 눈 위나 다리, 가슴 등에 규칙적인 턴(황갈색) 무늬가 들어 있다.</p>
                          </div>
                          <div class="card-body">
                          블랙
                              <p class="text-center mb-0">검은색</p>
                          </div>
                          <div class="card-body">
                          브린들
                              <p class="text-center mb-0">기본 바탕색에 다른 컬러가 섞인 것.</p>
                          </div>
                          <div class="card-body">
                          블루
                              <p class="text-center mb-0">청. 농담은 다양.</p>
                          </div>
                          <div class="card-body">
                          블루론
                              <p class="text-center mb-0">파란색 바탕에 흰색 털이 살짝 섞인 모색.</p>
                          </div>
                          <div class="card-body">
                          페퍼
                              <p class="text-center mb-0">청색을 띈 흑호마에서 옅은 그레이.</p>
                          </div>
                          <div class="card-body">
                          레드
                              <p class="text-center mb-0">붉은색. 붉은색을 띤 갈색.</p>
                          </div>
                          <div class="card-body">
                          레드 앤 화이트
                              <p class="text-center mb-0">적갈색과 흰색의 두 가지 색.</p>
                          </div>
                          <div class="card-body">
                          리바
                              <p class="text-center mb-0">진한 적갈색.</p>
                          </div>
                          <div class="card-body">
                          적
                              <p class="text-center mb-0">일본견 특유의 색. 황갈색에서 비적(緋赤)까지 폭넓다.</p>
                          </div>
                          <div class="card-body">
                          적호마
                              <p class="text-center mb-0">붉은 바탕에 검은색이 얼룩처럼 들어 있는 무늬.</p>
                          </div>
                          <div class="card-body">
                          적호(赤虎)
                              <p class="text-center mb-0">붉은 털에 검은 줄무늬가 들어 있는 것.</p>
                          </div>
                          <div class="card-body">
                          이자벨라
                              <p class="text-center mb-0">옅은 밤색털.</p>
                          </div>
                          <div class="card-body">
                          울프 그레이
                              <p class="text-center mb-0">다갈회색이나 황회색의 털끝이 검게 되는 것.</p>
                          </div>
                          <div class="card-body">
                          오렌지
                              <p class="text-center mb-0">적황색이나 옅은 턴(황갈색)의 피모. 포메라니안이 유명.</p>
                          </div>
                          <div class="card-body">
                          그리즐
                              <p class="text-center mb-0">그레이에 블루를 띄는 색.</p>
                          </div>
                          <div class="card-body">
                          흑호마
                              <p class="text-center mb-0">호마보다 전체적으로 검은색이 더 많은 것.</p>
                          </div>
                          <div class="card-body">
                          흑호(黑虎)
                              <p class="text-center mb-0">검은 바탕에 붉은 털의 줄무늬가 들어간 피모. 호(虎)보다 검은 부분이 많아 몸 전체가 검게 보인다.</p>
                          </div>
                          <div class="card-body">
                          호마
                              <p class="text-center mb-0">흰색과 검은색이 반반 들어간 무늬.</p>
                          </div>
                          <div class="card-body">
                          샌디
                              <p class="text-center mb-0">모래색. 진한 샌디 옐로우 등도 있다.</p>
                          </div>
                          <div class="card-body">
                          실버
                              <p class="text-center mb-0">거의 그레이에 가까운 은색.</p>
                          </div>
                          <div class="card-body">
                          슬레이트 블루
                              <p class="text-center mb-0">회색을 띤 블루.</p>
                          </div>
                          <div class="card-body">
                          솔리드
                              <p class="text-center mb-0">단색.</p>
                          </div>
                          <div class="card-body">
                          탄
                              <p class="text-center mb-0">황갈색.</p>
                          </div>
                          <div class="card-body">
                          체스트넛
                              <p class="text-center mb-0">밤색이나 적갈색.</p>
                          </div>
                          <div class="card-body">
                          호
                              <p class="text-center mb-0">일본견 특유의 모색. 흰 바탕에 검은 줄무늬가 들어 있다.</p>
                          </div>
                          <div class="card-body">
                          비버
                              <p class="text-center mb-0">브라운과 그레이가 섞인 모색.</p>
                          </div>
                          <div class="card-body">
                          비스킷
                              <p class="text-center mb-0">옅은 크림색.</p>
                          </div>
                          <div class="card-body">
                          팔로
                              <p class="text-center mb-0">옅은 노란색.</p>
                          </div>
                          <div class="card-body">
                          브라운
                              <p class="text-center mb-0">갈색 혹은 다갈색.</p>
                          </div>
                          <div class="card-body">
                          블루머를
                              <p class="text-center mb-0">블루나 검정, 회색이 섞인 대리석 같은 무늬.</p>
                          </div>
                          <div class="card-body">
                          마호가니
                              <p class="text-center mb-0">적갈색에 가까운 밤색.</p>
                          </div>
                          <div class="card-body">
                          러스티 레드
                              <p class="text-center mb-0">붉은 기를 띤 녹슨 색.</p>
                          </div>
                          <div class="card-body">
                          루비
                              <p class="text-center mb-0">진한 체스트넛.</p>
                          </div>
                          <div class="card-body">
                          로운
                              <p class="text-center mb-0">바탕색에 흰색 털이 살짝 섞인 모색.</p>
                              
                          </div>
                      </div>
                  </div>
                    
                  <!----------기초 > 개의 몸과 귀 ------------->
                  <div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                       개의 몸과 귀
                          <div class="card rounded-0">
                          > 몸
                          </div>
                          <div class="card rounded-0">
                          	<img class="card-img rounded-0 img-fluid" src="assets/img/dogBody.jpg">
                          </div>
                          <div class="card rounded-0">
                          > 귀
                          </div>
                          <div class="card-body">
                          직립 귀(프릭 이어)
                              <p class="text-center mb-0">시바견이나 셰퍼드 등의 견종에게서 볼 수 있는 직립 귀의 형태. 선 귀라고도 한다. 귀를 잘라 늘어진 귀를 세우는 그레이트 데인이나 도베르만 같은 견종도 있지만, 현재 유럽에서는 단이가 금지되어 있다.</p>
                          </div>
                          <div class="card-body">
                          반직립 귀(세미프릭 이어)
                              <p class="text-center mb-0">직립 귀 끝의 4분의 1 정도가 늘어져 있는 귀. 러프 콜리나 셰틀랜드 십독 등이 대표적. 로즈 귀나 V자형 귀도 반직립 귀에 포함된다.</p>
                          </div>
                          <div class="card-body">
                          버튼 귀
                              <p class="text-center mb-0">늘어진 귀의 일종으로 귓불 끝이 늘어지고 귀의 동굴을 막고 있는 형태의 귀. 에어데일 테리어가 전형적인 버튼 귀.</p>
                          </div>
                          <div class="card-body">
                          V자형 귀
                              <p class="text-center mb-0">삼각형 귀. 시베리안 허스키 같은 직립 타입과 불 마스티프 같은 늘어진 귀 등 두 가지 타입이 있다.</p>
                          </div>
                          <div class="card-body">
                          로즈 귀(로즈 이어)
                              <p class="text-center mb-0">반직립 귀의 일종으로 귀를 재우거나 접으면 외이 안의 요철이 보이는 형태. 요철 부분이 장미 꽃잎처럼 보여 로즈 귀라고 불린다. 불독의 귀가 전형적인 형태.</p>
                          </div>
                          <div class="card-body">
                          박쥐 귀(배트 이어)
                              <p class="text-center mb-0">직립 귀의 일종으로 귀의 폭이 넓고 끝이 둥글어 박쥐의 날개처럼 보인다. 프렌치 불독의 귀가 전형적인 형태.</p>
                          </div>
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