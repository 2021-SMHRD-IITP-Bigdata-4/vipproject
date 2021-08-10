<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>반려견 정보 > 기초상식</title>
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
    
    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#tag1">
                            기초상식
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag1_1">개종류 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#tag1_2">용품 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#tag1_3">질병 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#tag1_4">기타 관련 용어</a></li>
                            <li><a class="text-decoration-none" href="#tag1_5">개의 피모와 컬러</a></li>
                            <li><a class="text-decoration-none" href="#tag1_6">개의 몸과 귀</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                <!-----------기초상식>개 종류 관련------------>
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         	<div class="card-body">
                         		<a name="tag1_1">개종류 관련 용어</a>
                         	</div>
                        	<div class="card rounded-0">
                            </div>
                            <div class="card-body">
                            컴페이언도그
                                <p class="doginfo_left">가정견으로 키우는 개.</p>
                            </div>
                            <div class="card-body">
                            토이 도그
                                <p class="doginfo_left">애완견.</p>
                            </div>
                            <div class="card-body">
                            하딩 도그
                            <div class="h1 text-success text-center"><img src="assets/img/dog/hadingdog.jpg" alt="About Hero"></div>
                                <p class="doginfo_left">목양견, 목축견, 호양견 등 목축에 이용되는 개의 총칭. 
                                콜리나 보더 콜리 등이 대표적인 견종. 하딩은 영어로 '가축들을 모은다'는 뜻이다.</p>
                            </div>
                            <div class="card-body">
                            목축견
                                <p class="doginfo_left">소나 돼지 등의 목축을 감시하거나 유도하는 개.</p>
                            </div>
                            <div class="card-body">
                            목양견
                                <p class="doginfo_left">양떼를 감시, 유도하는 개. 대표적인 견종으로 
                                콜리가 있다.</p>
                            </div>
                            <div class="card-body">
                            호양견
                                <p class="doginfo_left">해수나 적으로부터 양을 지키는 푸리나 코몬도르 등의 개. 
                                늑대에게도 맞서 싸울 만큼 용맹하다.</p>
                            </div>
                            <div class="card-body">
                            캐틀 도그
                                <p class="doginfo_left">소(영어로 캐틀)떼를 유도하는 개. 목축견.</p>
                            </div>
                            <div class="card-body">
                            건 독
                                <p class="doginfo_left">새를 쫓아내는 잉글리시 코커스패니얼이나 사냥감이 있는 
                                장소를 알리는 포인터나 세터, 사냥꾼이 쏜 사냥감을 회수하는 리트리버 등, 새사냥을 돕는 
                                조렵견을 뜻한다.</p>
                            </div>
                            <div class="card-body">
                            스피츠 계열
                            <div class="h1 text-success text-center"><img src="assets/img//dog/spitz.jpg" alt="About Hero"></div>
                                <p class="doginfo_left">스피츠나 시바견 등 뾰족하게 선 귀와 뾰족한 구문
                                (입 주변 전체)를 가진 견종.</p>
                            </div>
                            <div class="card-body">
                            테리어
                                <p class="doginfo_left">오소리나 여우, 쥐사냥 등에 이용되는 수렵견종의 총칭. 
                                땅굴 속에 숨어 있는 사냥감을 쫓아내거나 끌어내는 등 사냥을 돕는 데서 '땅'이라는 뜻을 가진 
                                라틴어 이름이 붙었다.</p>
                            </div>
                            <div class="card-body">
                            하운드
                                <p class="doginfo_left">사냥감을 추적하기 위해 만들어진 수렵견의 총칭.</p>
                            </div>
                            <div class="card-body">
                            센트 하운드
                                <p class="doginfo_left">후각을 이용해 사냥감의 냄새를 더듬어가는 하운드.</p>
                            </div>
                            <div class="card-body">
                            사이트 하운드
                                <p class="doginfo_left">멀리서 사냥감을 발견하면 전력질주해서 쫓는 시각형 
                                하운드. 스마트한 체형이다.</p>
                            </div>
                            <div class="card-body">
                            워킹 도그
                                <p class="doginfo_left">경비나 호위, 구조, 탐색, 하차인도, 썰매끌기 등 
                                사냥 외에도 인간을 위해서 일하는 개.</p>
                            </div>
                            <div class="card-body">
                            워터 도그
                                <p class="doginfo_left">바다나 강, 호수 등에서 수중작업을 하는 수영 실력이 
                                뛰어난 개.</p>
                            </div>
                            <div class="card-body">
                            마타기견
                                <p class="doginfo_left">일본에서 오래전부터 사냥에 이용된 개의 총칭. 아키타견 
                                등이 그 피를 이어받았다.</p>
                            </div>
                            <div class="card-body">
                            투견
                                <p class="doginfo_left">개끼리 싸움을 시키는 것. 토사견이나 옛날의 스태포드셔 
                                불 테리어 등이 유명.</p>
                            </div>
                            <div class="card-body">
                            군용견
                                <p class="doginfo_left">전령이나 감시 등의 군병 일을 돕는 개. 독일 셰퍼드 
                                도그나 도베르만, 그레이트 데인 등이 대표 견종.</p>
                            </div>
                            <div class="card-body">
                            경찰견
                                <p class="doginfo_left">경찰의 범죄수사에서 냄새를 추적하거나 순찰 등에 활약하는 
                                개. 한국에서는 독일 셰퍼드나 래브라도 리트리버 등 3견종이 이용된다.</p>
                            </div>
                            <div class="card-body">
                            마약견
                                <p class="doginfo_left">공항 등에서 화물에 숨겨진 마약류의 냄새를 맡고 찾아내는 
                                개.</p>
                            </div>
                            <div class="card-body">
                            화재구조견
                                <p class="doginfo_left">화재시 무너진 잔해에 깔린 생존자를 냄새로 탐색하고 
                                구조하는 개.</p>
                            </div>
                            <div class="card-body">
                            해상구조견
                                <p class="doginfo_left">해상재난을 당한 사람을 구조하는 개. 뉴펀들랜드가 
                                유명</p>
                            </div>
                            <div class="card-body">
                            맹도견
                                <p class="doginfo_left">시각장애인을 돕는 개. 래브라도 리트리버가 대표종.</p>
                            </div>
                            <div class="card-body">
                            청도견
                                <p class="doginfo_left">청각장애인을 돕는 개. 견종에 상관없이 애완견도 
                                청도견이 될 수 있다.</p>
                            </div>
                            <div class="card-body">
                            간호견
                                <p class="doginfo_left">신체장애인을 돕는 개.</p>
                            </div>
                            <div class="card-body">
                            세라피견
                                <p class="doginfo_left">의료나 복지현장에서 인간의 마음을 치유하는 애니멀 
                                세라피(동물치료요법)에 종사하는 개.</p>
                            </div>
                            <div class="card-body">
                            토착견
                                <p class="doginfo_left">옛날부터 그 지방에 서식하던 개.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                     </div>  
                    
                <!----------기초 > 용품관련 용어 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                          <div class="card rounded-0">
                          	<div class="card-body">
                          		<a name="tag1_2">용품 관련 용어</a>
                          	</div>
                          </div>
                          <div class="card-body">
                          서클
                              <p class="doginfo_left">철제나 플라스틱제 펜스를 뜻하며 주로 개를 실내 사육할 
                              때 사용한다. 평소 개가 머무는 공간을 둘러싸고 안에 하우스나 화장실, 식기 등을 넣어준다.</p>
                          </div>
                          <div class="card-body">
                          하우스
                              <p class="doginfo_left">개가 침대로 사용하는 사육용품. 개가 안심하고 지낼 수 
                              있는 동굴 모양이 좋다.</p>
                          </div>
                          <div class="card-body">
                          화장실
                              <p class="doginfo_left">화장실 시트를 고정할 수 있는 것이 좋다.</p>
                          </div>
                          <div class="card-body">
                          화장실 시트
                              <p class="doginfo_left">화장실에 까는 시트 형태의 종이. 강아지가 화장실 버릇을 
                              익힐 때까지 서클 전체에 깔아두고 아무 데서나 볼일을 봐도 괜찮도록 적응기간을 둔다.</p>
                          </div>
                          <div class="card-body">
                          펫히터
                              <p class="doginfo_left">펫 전용 전기히터. 방석 모양의 펫히터를 이불 밑에 깔고 
                              사용한다.</p>
                          </div>
                          <div class="card-body">
                          캐리어
                              <p class="doginfo_left">개를 안에 넣어 운반할 수 있는 용구. 캐스터가 달렸거나 
                              가방 모양, 등에 매는 모양, 케이지 모양, 연결해서 넓은 공간으로 사용할 수 있는 모양 등 여러 
                              가지 타입이 있다.</p>
                          </div>
                          <div class="card-body">
                          리드
                              <p class="doginfo_left">목줄. 벨트 모양이나 단면이 둥근 끈, 체인 등 여러 가지 
                              타입이 있다.</p>
                          </div>
                          <div class="card-body">
                          초커
                              <p class="doginfo_left">목걸이와 일체화된 타입의 리드. 뒤로 잡아당기면 목줄 부분이 
                              조이므로, 산책시 훈련에 이용하면 효과적이다.</p>
                          </div>
                          <div class="card-body">
                          솔 브러시
                              <p class="doginfo_left">돼지털 등으로 만든 브러시. 단모종을 빗질할 때 편리하며 털에 
                              윤기를 내준다.</p>
                          </div>
                          <div class="card-body">
                          슬리커 브러시
                          <div class="h1 text-success text-center"><img src="assets/img/dog/cob.jpg" alt="About Hero"></div>
                              <p class="doginfo_left">금속제로 바늘 모양의 핀을 심은 브러시. 빠진 털을 제거하거나 
                              엉킨 털을 풀거나 결을 정리하는 용도이며, 털이 부드러운 장모견에게 적합하다. 바늘이 개의 피부에 닿으면 
                              상처가 나므로 몸에는 닿지 않게 사용해야 한다.</p>
                          </div>
                          <div class="card-body">
                          핀 브러시
                              <p class="doginfo_left">끝이 둥근 핀을 심은 브러시. 오버코트에서 빠진 털을 제거하거나 
                              엉킨 장모의 결을 정돈한다. 피부에 자극을 주는 효과도 있다.</p>
                          </div>
                          <div class="card-body">
                          일자빗(comb)
                              <p class="doginfo_left">빠진 털 등을 제거하고 결을 정리해준다.</p>
                          </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                      </div>
                  </div>
                  <!----------기초 > 질병 관련 용어 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                          <div class="card rounded-0">
                          	<div class="card-body">
                          		<a name="tag1_3">질병 관련 용어</a>
                          	</div>
                          </div>
                          <div class="card-body">
                          기생충
                              <p class="doginfo_left">동물의 몸에 기생해 질병을 발생시키는 벌레. 벼룩이나 진드기 
                              등 몸의 외부에 기생하는 외부기생충과 개사상충(필라리아)이나 회충 등 심장이나 장내 등 내부에 기생하는 
                              것이 있다.</p>
                          </div>
                          <div class="card-body">
                          필라리아
                              <p class="doginfo_left">개사상충 등의 기생충이 혈관에 들어가 증식하면서 개의 몸을 
                              좀먹는 질병. 이 기생충의 매개인 모기가 발생하기 1개월 전부터, 보이지 않는 1개월 후까지 예방약을 
                              먹이면 대부분 막을 수 있다.</p>
                          </div>
                          <div class="card-body">
                          광견병
                              <p class="doginfo_left">일단 발병하면 치료방법이 없고, 거의 100퍼센트 사망에 이르는 
                              무서운 바이러스성 감염증. 신경이 망가지고 끔찍한 증상을 보이며 사람을 공격하기도 한다. 광견병바이러스는 
                              개뿐만 아니라 다른 동물에게서도 옮으며, 사람을 포함한 모든 포유류에게 감염된다. 때문에 주인은 봄·가을 
                              광견병 예방주사를 해주는 것이 좋다.</p>
                          </div>
                          <div class="card-body">
                          백신주사
                              <p class="doginfo_left">개의 전염병을 예방하는 주사. 연2회의 접종으로 전염병을 예방할 
                              수 있으니 맞히는 것이 좋다. 특히 새끼 때는 반드시 백신주사를 맞혀야 한다.</p>
                          </div>
                          <div class="card-body">
                          항문선
                              <p class="doginfo_left">냄새를 유발하는 원인이 집결되어 있는 취선으로 항문 옆에 있다. 
                              내버려두면 파열될 수 있으니 정기적으로 짜주는 것이 좋다.</p>
                          </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                      </div>
                  </div>
                  <!----------기초 > 기타 관련 용어 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                          <div class="card rounded-0">
                          	<div class="card-body">
		                       <a name="tag1_4">기타 관련 용어
                          	</div>
                          </div>
                          <div class="card-body">
                          트리밍
                              <p class="doginfo_left">개나 고양이의 외모를 깨끗하게 정돈해주기 위해서 털을 깎거나 
                              목욕시키는 것.</p>
                          </div>
                          <div class="card-body">
                          그루밍
                              <p class="doginfo_left">개가 스스로 하는 피모 손질로 브러싱이나 트리밍 효과가 있다.</p>
                          </div>
                          <div class="card-body">
                          당김운동
                              <p class="doginfo_left">개에게 리드를 달아서 도보나 자전거와 나란히 걷게 하는 운동.</p>
                          </div>
                          <div class="card-body">
                          자유운동
                              <p class="doginfo_left">개에게 리드를 달지 않고 자유롭게 달리거나 놀게 하는 운동. 
                              도그런 등에서 한다.</p>
                          </div>
                          <div class="card-body">
                          도그런
                              <p class="doginfo_left">리드를 풀어 개가 자유롭게 뛰어놀 수 있는 전용 운동장.</p>
                          </div>
                          <div class="card-body">
                          트리머
                              <p class="doginfo_left">개나 고양이 미용사.</p>
                          </div>
                          <div class="card-body">
                          브리더
                              <p class="doginfo_left">개나 고양이의 순종 번식가.</p>
                          </div>
                          <div class="card-body">
                          환모기(털갈이 시기)
                              <p class="doginfo_left">피모가 빠지고 새로 나는 시기로, 계절의 기온변화에 의해 
                              일어난다. 10~11월경 생겨난 언더코트는 겨울털이 되었다가 4~5월경 빠지기 시작한다.</p>
                          </div>
                          <div class="card-body">
                          패드
                              <p class="doginfo_left">발바닥의 육구. 다리에 가해지는 부담을 완화시키는 쿠션 역할을 
                              하며 미끄러짐 방지 효과도 있다.</p>
                          </div>
                          <div class="card-body">
                          늑대발톱
                              <p class="doginfo_left">개의 다리에 있는 발톱으로 퇴화된 엄지 부분에 있다. 오래 전 
                              늑대였을 때의 흔적으로 보통은 제거한다. 대개는 앞다리에 있는데, 그레이트 피레네는 뒷다리에도 있다.</p>
                          </div>
                          <div class="card-body">
                          단이
                              <p class="doginfo_left">도베르만이나 복서, 그레이트 데인 등 본래 늘어진 귀를 가진 
                              견종의 귀를 뾰족하게 선 귀로 만들기 위해서 생후 3~5개월경 마취시키고 귀의 일부를 절제하는 것이다. 
                              유럽 여러 나라에서는 금지시키며, 단이시킨 개는 아예 수입 금지되기도 한다.</p>
                          </div>
                          <div class="card-body">
                          단미
                              <p class="doginfo_left">외모를 정돈하기 위해서 생후 10일경 꼬리를 절단하는 것이다. 
                              유럽 여러 나라에서는 금지되어 있고, 단미시킨 개는 아예 수입 금지되기도 한다.</p>
                          </div>
                          <div class="card-body">
                          영역
                              <p class="doginfo_left">개는 영역을 표시하기 위해 산책할 때 여러 장소에 오줌을 눈다.</p>
                          </div>
                          <div class="card-body">
                          마킹
                              <p class="doginfo_left">주로 산책할 때 개가 여러 장소에 오줌을 눠 냄새를 묻히는 것. 
                              개의 두상이나 몸에 들어간 무늬를 가리키기도 한다.</p>
                          </div>
                          <div class="card-body">
                          헛울음
                              <p class="doginfo_left">경계할 필요가 없는데도 개가 주인의 제지를 듣지 않고 짖어대는 것.</p>
                          </div>
                          <div class="card-body">
                          스탠더드
                              <p class="doginfo_left">이상적인 견종의 형태를 규정한 견종표준. 체격의 크기나 모질색, 
                              두상의 형태 등 기준치 외에 결점에 관한 규정도 있다. 단체에 따라 조금씩 차이가 있다.</p>
                          </div>
                          <div class="card-body">
                          공인견종
                              <p class="doginfo_left">견종단체에 공인되어 있는 견종. 각국의 켄넬클럽이나 견종 단체에 
                              따라서 독자적으로 공인되어 있는 견종도 있지만, 본서에서는 FCI(국제축견연맹)에 공인되어 있는 개를 
                              '공인견종'으로 하고, FCI의 견종번호를 표기했다.</p>
                          </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                      </div>
                  </div>
                  <!----------기초 > 개의 피모와 컬러 ------------->
              	<div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                       <div class="card rounded-0">
                          	 <div class="card-body">
		                          <a name="tag1_5">개의 피모와 컬러
                          	 </div>
                          </div>
                          <div class="card rounded-0">
                          	 <div class="card-body">
		                          > 모질타입
                          	 </div>
                          </div>
                          <div class="card-body">
                          와이어
                              <p class="doginfo_left">철사처럼 뻣뻣하고 거친 모질 타입. 와이어 헤어드라고도 한다.</p>
                          </div><div class="card-body">
                          롱
                              <p class="doginfo_left">장모 타입. 롱헤어라고도 한다.</p>
                          </div>
                          <div class="card-body">
                          스무스
                              <p class="doginfo_left">단모 타입. 쇼트헤어라고도 한다.</p>
                          </div>
                          <div class="card-body">
                          헤어리스
                              <p class="doginfo_left">피모가 없는 타입. 차이니즈 크레스티드 도그나 멕시칸 헤어리스 
                              도그가 유명.</p>
                          </div>
                          <div class="card-body">
                          오버코트
                              <p class="doginfo_left">개의 몸 표면에 있는 털을 가리키는데 상모, 강모, 병모라고도 
                              한다. 언더코트와 달리 뻣뻣.</p>
                          </div>
                          <div class="card-body">
                          언더코트
                              <p class="doginfo_left">오버코트 아래의 조밀하게 난 부드러운 털로 하모라고도 한다. 
                              몸을 보온하거나 방수하는 역할을 하고, 가을에 생기기 시작해서 초여름에는 빠진다. 언더코트가 없는 견종도 있다.</p>
                          </div>
                          <div class="card-body">
                          싱글코트
                              <p class="doginfo_left">언더코트 없이 오버코트만 가진 피모.</p>
                          </div>
                          <div class="card-body">
                          더블코트
                              <p class="doginfo_left">오버코트와 언더코트로 된 이중코트의 피모.</p>
                          </div>
                          <div class="card-body">
                          얼룩털
                              <p class="doginfo_left">오버코트 위로 드문드문 돋아난 다른 빛깔의 피모.</p>
                          </div>
                          <div class="card-body">
                          장식털
                              <p class="doginfo_left">주로 귀나 사지, 꼬리 등에 있는 긴 피모.</p>
                          </div>
                          
                          <div class="card-body">
                          장식털
                              <p class="doginfo_left">주로 귀나 사지, 꼬리 등에 있는 긴 피모.</p>
                          </div>
                          <div class="card-body">
                          반점
                              <p class="doginfo_left">바탕색과는 다른 색깔이나 짙은 무늬가 띄엄띄엄 흩어진 것. 
                              마킹이라고도 한다.</p>
                          </div>
                          <div class="card-body">
                          스폿
                              <p class="doginfo_left">작은 무늬. 콤비네이션을 이루는 두 가지 다른 색의 조합.</p>
                          </div>
                          <div class="card-body">
                          댑플
                              <p class="doginfo_left">여러 가지 색으로 무늬를 이루는 피모 타입.</p>
                          </div>
                          <div class="card-body">
                          블레이즈
                              <p class="doginfo_left">개의 두 눈 사이를 지나는 하얀 무늬.</p>
                          </div>
                          <div class="card-body">
                          마스크
                              <p class="doginfo_left">입이나 이마 앞부분의 피모 색깔이 진한 부분으로, 복서나 
                              마스티프 등의 견종에게서 보이는 특징. 피모색이 거뭇한 것은 블랙마스크라고 한다.</p>
                          </div>
                          <div class="card rounded-0">
                          	<div class="card-body">
	                          > 개의 여러가지 컬러
                          	</div>
                          </div>
                          <div class="card-body">
                          애플리코트
                              <p class="doginfo_left">살구색. 붉은 기가 있는 노랑색.</p>
                          </div>
                          <div class="card-body">
                          옐로우
                              <p class="doginfo_left">옅은 갈색. 래브라도 리트리버가 대표.</p>
                          </div>
                          <div class="card-body">
                          휘튼
                              <p class="doginfo_left">보리색. 옅은 노란색을 띈 색.</p>
                          </div>
                          <div class="card-body">
                          크림
                              <p class="doginfo_left">크림</p>
                          </div>
                          <div class="card-body">
                          그레이
                              <p class="doginfo_left">회색. 진한 다크 그레이에서 옅은 실버 그레이 등 농담은 다양.</p>
                          </div>
                          <div class="card-body">
                          골든
                              <p class="doginfo_left">황금색.</p>
                          </div>
                          <div class="card-body">
                          세이블
                              <p class="doginfo_left">옅은 기본색에 검은 털이 섞인 것.</p>
                          </div>
                          <div class="card-body">
                          쵸콜릿
                              <p class="doginfo_left">진한 적갈색이나 고동색.</p>
                          </div>
                          <div class="card-body">
                          트라이 컬러
                              <p class="doginfo_left">흰색과 검은색, 턴(황갈색)의 삼색에서 비롯된 모색. 와이어 
                              폭스 테리어가 유명.</p>
                          </div>
                          <div class="card-body">
                          파티 컬러
                              <p class="doginfo_left">흰색 바탕에 뚜렷한 색깔의 무늬가 있는 것.</p>
                          </div>
                          <div class="card-body">
                          헐크인
                              <p class="doginfo_left">흰색 바탕에 검은색이나 청회색 무늬가 들어 있는 것.</p>
                          </div>
                          <div class="card-body">
                          퓨어 화이트(백)
                              <p class="doginfo_left">순백색.</p>
                          </div>
                          <div class="card-body">
                          폰
                              <p class="doginfo_left">황금색을 띤 갈색. 농담은 다양.</p>
                          </div>
                          <div class="card-body">
                          블랙 앤 탄
                              <p class="doginfo_left">검은색 바탕에 눈 위나 다리, 가슴 등에 규칙적인 턴(황갈색) 
                              무늬가 들어 있다.</p>
                          </div>
                          <div class="card-body">
                          블랙
                              <p class="doginfo_left">검은색</p>
                          </div>
                          <div class="card-body">
                          브린들
                              <p class="doginfo_left">기본 바탕색에 다른 컬러가 섞인 것.</p>
                          </div>
                          <div class="card-body">
                          블루
                              <p class="doginfo_left">청. 농담은 다양.</p>
                          </div>
                          <div class="card-body">
                          블루론
                              <p class="doginfo_left">파란색 바탕에 흰색 털이 살짝 섞인 모색.</p>
                          </div>
                          <div class="card-body">
                          페퍼
                              <p class="doginfo_left">청색을 띈 흑호마에서 옅은 그레이.</p>
                          </div>
                          <div class="card-body">
                          레드
                              <p class="doginfo_left">붉은색. 붉은색을 띤 갈색.</p>
                          </div>
                          <div class="card-body">
                          레드 앤 화이트
                              <p class="doginfo_left">적갈색과 흰색의 두 가지 색.</p>
                          </div>
                          <div class="card-body">
                          리바
                              <p class="doginfo_left">진한 적갈색.</p>
                          </div>
                          <div class="card-body">
                          적
                              <p class="doginfo_left">일본견 특유의 색. 황갈색에서 비적(緋赤)까지 폭넓다.</p>
                          </div>
                          <div class="card-body">
                          적호마
                              <p class="doginfo_left">붉은 바탕에 검은색이 얼룩처럼 들어 있는 무늬.</p>
                          </div>
                          <div class="card-body">
                          적호(赤虎)
                              <p class="doginfo_left">붉은 털에 검은 줄무늬가 들어 있는 것.</p>
                          </div>
                          <div class="card-body">
                          이자벨라
                              <p class="doginfo_left">옅은 밤색털.</p>
                          </div>
                          <div class="card-body">
                          울프 그레이
                              <p class="doginfo_left">다갈회색이나 황회색의 털끝이 검게 되는 것.</p>
                          </div>
                          <div class="card-body">
                          오렌지
                              <p class="doginfo_left">적황색이나 옅은 턴(황갈색)의 피모. 포메라니안이 유명.</p>
                          </div>
                          <div class="card-body">
                          그리즐
                              <p class="doginfo_left">그레이에 블루를 띄는 색.</p>
                          </div>
                          <div class="card-body">
                          흑호마
                              <p class="doginfo_left">호마보다 전체적으로 검은색이 더 많은 것.</p>
                          </div>
                          <div class="card-body">
                          흑호(黑虎)
                              <p class="doginfo_left">검은 바탕에 붉은 털의 줄무늬가 들어간 피모. 호(虎)보다 검은 
                              부분이 많아 몸 전체가 검게 보인다.</p>
                          </div>
                          <div class="card-body">
                          호마
                              <p class="doginfo_left">흰색과 검은색이 반반 들어간 무늬.</p>
                          </div>
                          <div class="card-body">
                          샌디
                              <p class="doginfo_left">모래색. 진한 샌디 옐로우 등도 있다.</p>
                          </div>
                          <div class="card-body">
                          실버
                              <p class="doginfo_left">거의 그레이에 가까운 은색.</p>
                          </div>
                          <div class="card-body">
                          슬레이트 블루
                              <p class="doginfo_left">회색을 띤 블루.</p>
                          </div>
                          <div class="card-body">
                          솔리드
                              <p class="doginfo_left">단색.</p>
                          </div>
                          <div class="card-body">
                          탄
                              <p class="doginfo_left">황갈색.</p>
                          </div>
                          <div class="card-body">
                          체스트넛
                              <p class="doginfo_left">밤색이나 적갈색.</p>
                          </div>
                          <div class="card-body">
                          호
                              <p class="doginfo_left">일본견 특유의 모색. 흰 바탕에 검은 줄무늬가 들어 있다.</p>
                          </div>
                          <div class="card-body">
                          비버
                              <p class="doginfo_left">브라운과 그레이가 섞인 모색.</p>
                          </div>
                          <div class="card-body">
                          비스킷
                              <p class="doginfo_left">옅은 크림색.</p>
                          </div>
                          <div class="card-body">
                          팔로
                              <p class="doginfo_left">옅은 노란색.</p>
                          </div>
                          <div class="card-body">
                          브라운
                              <p class="doginfo_left">갈색 혹은 다갈색.</p>
                          </div>
                          <div class="card-body">
                          블루머를
                              <p class="doginfo_left">블루나 검정, 회색이 섞인 대리석 같은 무늬.</p>
                          </div>
                          <div class="card-body">
                          마호가니
                              <p class="doginfo_left">적갈색에 가까운 밤색.</p>
                          </div>
                          <div class="card-body">
                          러스티 레드
                              <p class="doginfo_left">붉은 기를 띤 녹슨 색.</p>
                          </div>
                          <div class="card-body">
                          루비
                              <p class="doginfo_left">진한 체스트넛.</p>
                          </div>
                          <div class="card-body">
                          로운
                              <p class="doginfo_left">바탕색에 흰색 털이 살짝 섞인 모색.</p>
                          </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                      </div>
                  </div>
                    
                  <!----------기초 > 개의 몸과 귀 ------------->
                  <div class="col-md-4">
                      <div class="card mb-4 product-wap rounded-0">
                      	  <div class="card rounded-0">
                          	 <div class="card-body">
                          		<a name="tag1_6">개의 몸과 귀
                          	 </div>
                          </div>
                          <div class="card rounded-0">
                          	<div class="card-body">
	                          > 몸
                          	</div>
                          </div>
                          <div class="card rounded-0">
                          	<img class="card-img rounded-0 img-fluid" src="assets/img/dogBody.jpg">
                          </div>
                          <div class="card rounded-0">
                          	<div class="card-body">
	                          > 귀
                          	</div>
                          </div>
                          <div class="card-body">
                          직립 귀(프릭 이어)
                              <p class="doginfo_left">시바견이나 셰퍼드 등의 견종에게서 볼 수 있는 직립 귀의 형태. 
                              선 귀라고도 한다. 귀를 잘라 늘어진 귀를 세우는 그레이트 데인이나 도베르만 같은 견종도 있지만, 현재 
                              유럽에서는 단이가 금지되어 있다.</p>
                          </div>
                          <div class="card-body">
                          반직립 귀(세미프릭 이어)
                              <p class="doginfo_left">직립 귀 끝의 4분의 1 정도가 늘어져 있는 귀. 러프 콜리나 
                              셰틀랜드 십독 등이 대표적. 로즈 귀나 V자형 귀도 반직립 귀에 포함된다.</p>
                          </div>
                          <div class="card-body">
                          버튼 귀
                              <p class="doginfo_left">늘어진 귀의 일종으로 귓불 끝이 늘어지고 귀의 동굴을 막고 있는 
                              형태의 귀. 에어데일 테리어가 전형적인 버튼 귀.</p>
                          </div>
                          <div class="card-body">
                          V자형 귀
                              <p class="doginfo_left">삼각형 귀. 시베리안 허스키 같은 직립 타입과 불 마스티프 같은 
                              늘어진 귀 등 두 가지 타입이 있다.</p>
                          </div>
                          <div class="card-body">
                          로즈 귀(로즈 이어)
                              <p class="doginfo_left">반직립 귀의 일종으로 귀를 재우거나 접으면 외이 안의 요철이 
                              보이는 형태. 요철 부분이 장미 꽃잎처럼 보여 로즈 귀라고 불린다. 불독의 귀가 전형적인 형태.</p>
                          </div>
                          <div class="card-body">
                          박쥐 귀(배트 이어)
                              <p class="doginfo_left">직립 귀의 일종으로 귀의 폭이 넓고 끝이 둥글어 박쥐의 날개처럼 
                              보인다. 프렌치 불독의 귀가 전형적인 형태.</p>
                          </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                      </div>
                  </div>
        	</div>            
        </div>
    </div>
    <!-- End Content -->`

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