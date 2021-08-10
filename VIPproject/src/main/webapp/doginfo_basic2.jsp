<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>반려견 정보 > 건강 정보</title>
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

    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            건강정보
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag_1">식사관리</a></li>
                            <li><a class="text-decoration-none" href="#tag_2">먹으면 안되는 음식물</a></li>
                            <li><a class="text-decoration-none" href="#tag_3">질병</a></li>
                            <li><a class="text-decoration-none" href="#tag_4">임신과 출산</a></li>
                            <li><a class="text-decoration-none" href="#tag_5">강아지의 성장</a></li>
                            <li><a class="text-decoration-none" href="#tag_6">개의 훈련</a></li>
                            <li><a class="text-decoration-none" href="#tag_7">애견 예방접종</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                <!-----------건강 정보>식사관리------------>
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                        	<div class="card-body" id="tag_1">
	                        	식사관리
                        	</div>
                            <div class="card rounded-0">
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">동물체의 주요한 구성성분은 수분, 단백질, 지방, 광물질 
                                그리고 극히 소량의 탄수화물이며, 각각의 구성비율은 동물품종, 연령, 성별 및 동물의 상태에 따라 다르다.
                                지방이나 소화관의 내용물을 제외하고는 동물체의 조성은 거의 물이 75%, 단백질 20%, 광물질 5% 및 
                                탄수화물이 1% 이하로 되어 있다. 음식물은 에너지를 공급하는 고유의 음식물(탄수화물, 지방 및 단백질)과 
                                생명에는 반드시 필요하나 에너지를 공급하지 않는 수분, 무기 염류 및 비타민으로 분류한다. 음식물은 다른 
                                영양소와 함께 에너지를 공급해야 되는데, 에너지는 근육운동과 체온을 유지시킬 뿐 아니라 호흡이나 심장기능의 
                                유지 등에도 필요하다. 한편, 에너지가 많은 음식물을 다량으로 섭취하면 체내에 체지방이 축적되어 비만의 
                                원인이 되기 쉽고 반대로 필요량에 부족하게 되면 성장이 불량하거나, 체중이 감소되어 야위고 쉽게 병에 
                                걸리게 된다. 개는 엄격한 의미에서 육식성 동물이 아니므로 육류만으로는 생존할 수 없다.</p>
                            </div>
                                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                    </div>
                <!----------건강 정보>반려견이 먹으면 안되는 음식물 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                            	<div class="card-body" id="tag_2">
		                        	반려견이 먹으면 안되는 음식물
                            	</div>
                            </div>
                            <div class="card-body">
                            양파
                                <p class="doginfo_left">어떤 식으로 요리해도 양파의 독성은 없어지지 않는다. 양파의 
                                강한 독성은 개나 고양이의 적혈구를 녹여 버리며, 심한 경우에는 급성 빈혈을 일으켜 죽기도 한다.</p>
                            </div>
                            <div class="card-body">
                            초콜렛
                                <p class="doginfo_left">초콜렛은 중독을 일으킨다. 섭취 시 지나치게 활동적이거나 
                                흥분상태를 보이기도 하고, 다른 음식은 먹지도 않아도 구토를 자주 하게 되고 노란색의 점액질을 토해낸다.</p>
                            </div>
                            <div class="card-body">
                            우유
                                <p class="doginfo_left">우유에는 모유에는 없는 유당이 함유되어 있으나, 강아지는 
                                선천적으로 유당을 분해할 수 있는 효소가 없다. 어린 강아지에게 설사를 일으키는 원인이 되기도 하며 
                                설사는 2차 감염원이 되기도 하므로 특별한 경우가 아니면 급여를 삼가해야 한다.</p>
                            </div>
                            <div class="card-body">
                            생선
                                <p class="doginfo_left">등푸른 생선에는 DHA가 많이 함유되어 있지만 어린강아지는
                                 DHA를 분해하는 효소가 없어서 소화가 되지 않고 바로 배설된다. 그리고 생선가시는 소화되지 않고 
                                 소화기관에 상처나 염증을 유발 할 수도 있다. 기름이 많이 함유된 생선통조림은 설사와 구토를 일으키고 
                                 많은 양의 기름은 강아지에게 소화장애를 일으키므로 급여를 삼가해야 한다.</p>
                            </div>
                            <div class="card-body">
                            닭뼈
                                <p class="doginfo_left">소화가 되었을 때 뼈가 날카롭게 분해되면서 소화기관에 상처를 
                                내어 염증이나 혈변, 심한 경우에는 죽음에 이르게 할 수 있다.</p>
                            </div>
                            <div class="card-body">
                            마른 오징어
                                <p class="doginfo_left">개들은 음식을 씹지 않고 바로 소화기관으로 넘기므로 오징어나 
                                쥐포 등을 먹으면 입과 식도, 위까지 손상될 수 있으므로 주지 않는다.</p>
                            </div>
                            <div class="card-body">
                            채소류의 과잉섭취
                                <p class="doginfo_left">어느 정도의 채소류의 섭취는 섬유질이 있어 소화흡수에 도움이 
                                되지만, 많은 양의 채소류는 공급과잉이 되며 체외로 배출되므로 적당량을 준다.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                    </div>
                    <!----------건강 정보>반려견의 질병 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                        	<div class="card rounded-0">
                            	<div class="card-body" id="tag_3">
                            		반려견의 질병
                            	</div>
                            </div>
                         
                            <div class="card rounded-0">
                            	<div class="card-body">
                            		> 병의 종류
                            	</div>
                            </div>
                            <div class="card-body">
                            호흡기
                                <p class="doginfo_left">콧물, 계속되는 재채기, 기침, 구역질, 호흡 곤란, 심한코골이</p>
                            </div>
                            <div class="card-body">
                            눈
                                <p class="doginfo_left">눈의 분비물, 시력 감퇴, 염증, 감염으로 인한 출혈, 흐린 
                                테가 끼는 경우</p>
                            </div>
                            <div class="card-body">
                            귀
                                <p class="doginfo_left">귀 고름, 머리를 흔들어 대는 경우, 귀가 부어 오르는 경우, 
                                균형상실, 난청</p>
                            </div>
                            <div class="card-body">
                            입
                                <p class="doginfo_left">침을 질질 흘리는 경우, 식욕 저하, 잇몸의 염증, 구취, 
                                이빨이 부러지거나 흔들리는 경우</p>
                            </div>
                            <div class="card-body">
                            외부기생충
                                <p class="doginfo_left">지나치게 핥는 경우, 기생충이 발견되는 경우, 비듬, 탈모, 
                                긁적거림</p>
                            </div>
                            <div class="card-body">
                            피와 심장
                                <p class="doginfo_left">지나친 기침, 빈혈, 무기력증, 지나친 기침, 운동을 기피하는 
                                경우</p>
                            </div>
                            <div class="card-body">
                            뼈, 근육, 관절
                                <p class="doginfo_left">감염된 부분의 부어 오름, 다리를 만지면 통증을 느끼는 경우, 
                                마비, 절룩거림</p>
                            </div>
                            <div class="card-body">
                            신경성
                                <p class="doginfo_left">발작이나 경련, 비틀거리는 걸음걸이 일부 또는 전신 마비</p>
                            </div>
                            <div class="card-body">
                            소화기
                                <p class="doginfo_left">행동상의 변화, 균형의 상실, 체중의 과도한 변화, 식욕 상실, 
                                변비, 설사 구토</p>
                            </div>
                            <div class="card-body">
                            피부 및 털
                                <p class="doginfo_left">갑자기 씹어 대거나 핥는 경우, 염증 또는 종양, 탈모, 계속 
                                긁어 대는 경우</p>
                            </div>
                            <div class="card-body">
                            생식기
                                <p class="doginfo_left">유방의 통증, 생식 불능, 유산, 출산 후의 이상, 이상 분비물</p>
                            </div>
                            <div class="card-body">
                            비뇨기
                                <p class="doginfo_left">배뇨가 힘든 경우, 혈뇨, 대소변 실금, 소변량의 증가, 배뇨의 
                                감소</p>
                            </div>
                            <div class="card-body">
                            기생충
                                <p class="doginfo_left">분비물에서 기생충을 발견하는 경우, 배가 부어 오르는 경우, 
                                설사, 항문에서 이 물질을 발견 하는 경우, 체중 감소</p>
                            </div>
                         
                         
                            <div class="card rounded-0">
                            	<div class="card-body">
                         			> 응급처치방법
                            	</div>
                            </div>
                           <!--  -->
                            <div class="card-body">
                                <p class="doginfo_left">반려견의 교통사고, 일사병, 골절이나 화상, 급한 호흡의 곤란 
                                등으로 인한 경우 빠르게 대응하여 애견을 사고로부터 구할 수 있다. 이런 사고를 당한 반려견은 쇼크나 
                                통증으로 사납고 난폭해지므로 인간의 신체에 해가 가지 않게 해야한다. 특히 물지 못하도록 기본적인 
                                안전장치를 한 다음 애견에 적절한 응급치료나 적당한 방법으로 병원으로 데려간다. 부상당한 장소가 
                                복잡하거나 위험에 노출된 장소이면 곧 바로 안전한 장소로 이동 시킨다. 운반할 때는 개의 신체가 심하게 
                                흔들리거나 또 다른 충격을 받지 않도록 한다. 흥분하거나 쇼크 상태이기 때문에 침착하게 개에게 말을 
                                걸어 주의를 끌어 안심시키고, 많은 사람들의 접근을 막는다. 쇼크나 통증으로 주인도 물 수 있으므로 
                                항상 주의를 요한다. 적당한 보호장치와 같은 조치를 취해 물지 못하도록 방지한다. 또한 응급처치나 운
                                반을 할 때는 장갑이나 수건을 이용하여 개의 몸을 감싸여 이동한다. 응급처치는 신속하게 정확하게 한다. 
                                긴 타월을 이용해 개의 복부를 타월로 감싸고 목 부분을 묶은 뒤 개를 안아서 운반한다. 판자나 두꺼운 
                                시트를 들 것 대용으로 이용할 경우, 개를 바닥으로 미끄러지듯이 부드럽게 이동시킨다.</p>
                            </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                       	</div>
                        
                    </div>
                    <!----------건강 정보>임신과 출산 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         	<div class="card rounded-0">
                            	<div class="card-body" id="tag_4">
                            		임신과 출산
                            	</div>
                            </div>
                            <div class="card rounded-0">
                            	<div class="card-body">
                            		> 발정과 교배
                            	</div>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">발정은 품종, 개체, 발육 정도에 따라 차이가 있으나 조숙한 
                                소형견은 5~7개월, 중형견은 8~10개월, 대형견은 1년 이상이 지나야 시작된다. 발정증상은 외음부가 
                                팽창되고 혈액이 섞인 액체가 배출되며, 개가 안정적이지 못하고 외음부를 자주 핥는다. 발정주기는 난포의 
                                발육, 성숙, 배란, 황체 형성 등에 따라 4기로 구분한다.</p>
                            </div>
                            <div class="card-body">
                            발정전기
                                <p class="doginfo_left">개가 안정적이지 못하고 배뇨회수가 증가하며 외음부가 점차 붓기 
                                시작하면서 충혈되며 출혈이 보이기도 한다.</p>
                            </div>
                            <div class="card-body">
                            발정기
                                <p class="doginfo_left">외음부의 붓기가 최고에 달하고 출혈의 색이 점차 엷어져서, 
                                보통의 분비물로 변한다. 발정이 처음 시작된 후 12일 정도 지난 시기에 배란이 일어나고, 이 시기가 
                                교배의 적기 이다.</p>
                            </div>
                            <div class="card-body">
                            발정후기
                                <p class="doginfo_left">교배 시켜서 임신이 된 경우는 분비물 배출은 빨리 멈추지만, 
                                임신이 되지 않은 경우에는 오랫동안 소량으로 분비된다. 점차 외음부가 작아져서 원래의 모양대로 돌아간다. 
                                말기에는 위임신의 증세를 나타내는 개체도 있다. 그러나 발정후기가 끝난 후 확실한 증거를 볼 수 없다.</p>
                            </div>
                            <div class="card-body">
                            발정 휴지기
                                <p class="doginfo_left">발정횟수는 이 기간의 장단에 따라서 달라지는데, 대체적으로 개는 
                                일년에 두번 발정을 일으키며 한 발정기가 한 3주 정도이다. 개체에 따라서 이보다 더 긴 경우도 있다.</p>
                            </div>
                            <div class="card rounded-0">
                            	<div class="card-body">
		                            > 임신의 경과
                            	</div>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">모든 교배가 다 성공적으로 연결되는 것은 아니다. 교배 후에 임신 
                                여부를 확인해야 하는데 실제로 임신의 징후가 나타나는것은 5주가 넘어서부터이다. 9주의 임신 기간 중 
                                제일 먼저 나타나는 징후는 2주 정도부터 외음부의 이완, 유선의 적은 덩어리 등이 생기는 것이며 입덧으로 
                                식욕이 떨어진다.그리고 3주부터는 복부가 약간 볼록해지며 위에서 보면 양쪽으로 늘어져서 재보면 배 둘레가 
                                늘어난 것을 알 수 있다. 젖 중에는 아래쪽 4쌍의 8개의 유선이 발달하여 새끼에게 젖을 주기 위해 그 주위의 
                                털이 빠진다. 4주에 접어들면 생식기에서 점액질의 분비물이 나오며 식후에는 복부가 현저하게 커진다. 6주에는
                                 신체의 변화가 두드러지는데, 복부의 팽창이 눈으로 확인되며 임신의 유무를 이 시기에 하는 것을 기준으로 
                                 하는 것이 상식이다. 복부의 털이 빠짐과 동시에 젖이 커지고 특히 아래쪽 2쌍 4개는 붉어 진다. 7주부터는
                                  미약한 움직임이 시작되며, 본능적으로 출산 준비를 위해 굴을 파거나 어두운 곳을 찾기 시작한다. 이 시기
                                   부터는 복부가 압박되기 시작해 소변을 자주 본다. 8주에 접어 들면 움직임이 활발해져 손으로 만져 보지
                                    않더라도 편안히 누워 있는 개의 배를 보면 여기저기서 움직이는것을 볼 수 있다.</p>
                            </div>
                            <div class="card-body">
                            임신 기간
                                <p class="doginfo_left">개의 임신 기간은 평균 9주(63일)로 이 기간 중 아래쪽 젖에서 
                                연한 초유가 분비되며 점점 짙어진다. 출산이 가까워지면 불안한 상태가 된다.
                                교배일을 정확히 알면 그 교배일로부터 분만 예정일을 알 수 있다. 새끼의 발육 상태에 따라 2~3일의 편차는 있다.</p>
                            </div>
                            <div class="card-body">
                            출산 시 신체변화
                                <p class="doginfo_left">일정하지는 않지만 개의 품종이나 체격의 크기에 따라서 5~6 마리를
                                 낳는 중형견을 표준으로 할 때 배 둘레가 60% 정도 커진다.</p>
                            </div>
                            <div class="card-body">
                            임신 중인 반려견 관리
                                <p class="doginfo_left">임신 중인 개에게는 적당한 영양 섭취와 적당한 운동 및 산책이 
                                중요하다. 너무 무리하게 운동을 시키거나 많은 양의 사료를 급여해서는 안된다. 이는 난산이나 유산의 원인이
                                 되기도 한다. 적당한 영양섭취를 시켜 강아지가 비대해지지 않도록 한다. 임신 중인 개는 평소보다 많은 
                                 양의 에너지가 필요하므로 영양을 충분히 섭취 할 수 있도록 급여하면 된다. 사료의 양은 평소의 30%까지
                                  늘려 급여한다. 적당한 운동도 필수적이다. 계단 오르내리기, 문턱 넘어가기 등 복부에 자극이 될 만한 
                                  행동은 금한다.</p>
                            </div>
                            <div class="card-body">
                            분만의 준비
                                <p class="doginfo_left">가급적이면 평소에 익숙해진 장소나 길들여진 개 집에서 분만하도록
                                 한다. 분만 전후에는 신경이 예민해지고 경계심이 강해지고 공격적이어서 소란스럽거나
                                 사람의 왕래가 많은 곳은 피해야 한다.</p>
                            </div>
                            <div class="card-body">
                            분만의 경과
                                <p class="doginfo_left">분만이 다가온 개는 어두운 곳으로 들어가려 한다. 이러한 증상이
                                 12시간이나 24시간 계속되다가 진통 때 신음을 하게 되며, 호흡 간격이 10분마다 하다가 차차 그 주기가
                                  짧아진다.호흡이 거칠어지고 몸을 떠는 개도 있다. 첫 강아지가 산도로 내려오기 때문에 뒷다리에 힘을 
                                  주며 뻗는데, 그 후 태반을 쓰고 움직이는 것이 나타난다. 본능적으로 어미개는 태반을 물어 뜯고 강아지의 
                                  전신을 핥아준다. 그리고 탯줄은 새끼의 몸에서 2~3cm 되는 위치에서 물어 뜯는다. 출산의 모든 것은 
                                  개가 본능적으로 하므로 어미 개에게 맡겨 두고 사람은 손을 대지 않는 것이 좋다. 다만 초산인 경우라 
                                  잘하지 못 할 때에는 사람이 태반을 벗겨주고 실로 탯줄을 묶은 후 가위로 잘라준다. 어미 개의 몸도 
                                  신문지나 마른 천을 이용하여 닦아주어 물기를 제거한다.</p>
                            </div>
                            <div class="card-body">
                            출산견의 건강상태
                                <p class="doginfo_left">어미 개의 체온은 분만 24시간 전에 일시적으로 37도 정도로 
                                떨어지나 분만 후에는 다시 정상 체온으로 돌아온다. 맥박은 평소보다 20 이상을 넘지만 분만 후에는 
                                조금 떨어지고 수유하는 초기에는 높게 유지한다. 분만 후에는 자궁 등에 상처가 있어 2일 후에 열이 
                                나는 수가 있다. 이 때 체온이 40도까지 올라가나 일주일쯤 지나면 정상으로 돌아온다.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                    </div>
                    <!----------건강 정보>강아지의 성장 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         	<div class="card rounded-0">
                         		<div class="card-body" id="tag_5">
                         			강아지의 성장
                         		</div>
                            </div>
                         	<div class="card-body">
                                <p class="doginfo_left">출생에서 3주까지 건강한 강아지는 대체로 평온하다. 강아지는 
                                90%의 시간은 잠을 자고 10%의 시간은 젖을 빨며 젖꼭지를 차지하기 위해 경쟁한다. 처음 이틀 동안은 
                                머리를 밑으로 묻고 잠을 잔다. 자는 동안 강아지는 놀라기도 하고 소리에 반응을 나타내는데, 이것을 
                                활동하는 잠이라고 한다. 활동 잠은 강아지들이 하는 유일한 운동 방법이고 후에 쓸 근육을 발달을 돕기도 
                                하기 때문에 지극히 정상적이다.</p>
                            </div>
                            <div class="card-body">
                            분만~2주령
                                <p class="doginfo_left">눈을 뜨지 못함. 5~6일 뒤 귀 들림. 5~6일 탯줄 떨어짐. 
                                추위에 약함</p>
                            </div>
                            <div class="card-body">
                            3주령~4주령
                                <p class="doginfo_left">젖니 생성. 움직임 활발. 14~17일 눈뜸. 20시간 이상 수면</p>
                            </div>
                            <div class="card-body">
                            5주령~2개월령
                                <p class="doginfo_left">젖니 모두 생성. 장난이 심함. 젖을 뗌. 체형의 완성. 전엽병 
                                쉽게 노출</p>
                            </div>
                            <div class="card-body">
                            3개월~5개월령
                                <p class="doginfo_left">만 2개월 지나면 어미로부터 독립생활 가능</p>
                            </div>
                            <div class="card-body">
                            9개월~12개월령
                                <p class="doginfo_left">성견의 80% 도달. 전체적인 균형 형성. 암캐의 경우 첫 발정시기</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                    </div>
                    <!----------건강 정보>개의 훈련 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                            	<div class="card-body" id="tag_6">
                            		개의 훈련
                            	</div>
                            </div>
                            <div class="card-body">
                            훈련 시기
                                <p class="doginfo_left">훈육은 생후 2~3 개월부터 시작하는데, 처음에는 쉽고 간단하고 
                                단시간에 끝낼 수 있는 배설요령 식사요령 등을 교육한다. 생후 7~8 개월이 되면 신체의 성장과 행동범위가 
                                넓어지므로 본격적으로 훈련을 시작한다. 훈련은 훈육보다는 더 많은 시간과 노력이 필요하며 개도 더 많은 
                                체력과 힘이 요구된다.</p>
                            </div>
                            <div class="card-body">
                            사회화
                                <p class="doginfo_left">생후 3주령에서 13주령까지의 시기로 이 시기에는 가능한 많은 
                                사람과 접촉시키고, 여러 소리나 상황을 경험 시키는 것이 환경에 잘 적응하는 개로 성장시킨다. 강아지도 
                                실수를 할 수도 있다는 사실을 알아야하고 그 것으로 화내지는 말아야한다. 나쁜 습관은 나중에 고치려 하기 
                                보다는 처음부터 갖지 않도록 하는 것이 좋다.강아지와 함께 시간을 보내고 같이 놀아주고, 말도 걸고, 
                                쓰다듬어 주면서 정을 주며 키운다.강아지에게 해도 되는 것과 하지 말아야 할 것을 꾸준히 가르쳐 주어야 
                                한다.</p>
                            </div>
                            <div class="card-body">
                            훈육 및 훈련 시기
                                <p class="doginfo_left">훈육은 생후 2~3개월부터 시작하는데 처음에는 쉽고 간단하며 단시간에 
                                끝낼 수 있는 배설요령, 식사요령 등을 교육한다.생후 7~8 개월이 되면 신체의 성장과 행동범위가 넓어지므로 
                                본격적으로 훈련을 시작한다.훈련은 훈육보다는 더 많은 시간과 노력이 필요하며 개에게도 더 많은 체력과 
                                힘이 요구된다.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                        </div>
                    </div>
                    <!----------건강 정보>애견 예방 접종 ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                            	<div class="card-body" id="tag_7">
                            		애견 예방 접종
                            	</div>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">예방접종을 한 후에는 열, 침울, 통증, 종창 등의 접종반응이 나타날 
                                수 있지만 대부분의 경우에 하루 정도 조용한 곳에 두면 자연히 괜찮아진다.
                                그러나 증상이 심할 경우나 이상증상이 나타날 경우에는 담당 수의사에게 문의하는 것이 좋다.</p>
                            </div>
                            <div class="card-body">
                            혼합예방주사 (DHPPL)
                                <p class="doginfo_left">기초접종 : 생후 6 ~ 8주에 1차 접종</p>
                                <p class="doginfo_left">추가접종 : 1차 접종 후 2 ~ 4주 간격으로 2 ~ 4회</p>
                                <p class="doginfo_left">보강접종 : 추가접종 후 매년 1회 주사</p>
                            </div>
                            <div class="card-body">
                            코로나바이러스성 장염(Coronavirus)
                                <p class="doginfo_left">기초접종 : 생후 6 ~ 8주에 1차 접종</p>
                                <p class="doginfo_left">추가접종 : 1차 접종 후 2 ~ 4주 간격으로 1 ~ 2회</p>
                                <p class="doginfo_left">보강접종 : 추가접종 후 매년 1회 주사</p>
                                <p class="doginfo_left"></p>
                            </div>
                            <div class="card-body">
                            기관ㆍ기관지염 (Kennel Cough)
                                <p class="doginfo_left">기초접종 : 생후 6 ~ 8주에 1차 접종</p>
                                <p class="doginfo_left">추가접종 : 1차 접종 후 2 ~ 4주 간격으로 1 ~ 2회</p>
                                <p class="doginfo_left">보강접종 : 추가접종 후 매년 1회 주사</p>
                            </div>
                            <div class="card-body">
                            광견병
                                <p class="doginfo_left">기초접종 : 생후 3개월 이상 1회 접종</p>
                                <p class="doginfo_left">보강접종 : 6개월 간격으로 주사</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
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