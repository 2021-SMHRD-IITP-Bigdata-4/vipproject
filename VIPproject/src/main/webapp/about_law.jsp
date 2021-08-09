<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>법과 정책</title>
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
                            동물법과 정책 
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag1">------법------</a></li>
                            <li><a class="text-decoration-none" href="#tag1_1">동물보호법</a></li>
                            <li><a class="text-decoration-none" href="#tag1_2">동물보호법 시행령</a></li>
                            <li><a class="text-decoration-none" href="#tag1_3">동물보호법 시행규칙</a></li>
                            <li><a class="text-decoration-none" href="#tag2">------정책------</a></li>
                            <li><a class="text-decoration-none" href="#tag2_1">동물보호 복지대책</a></li>
                            <li><a class="text-decoration-none" href="#tag2_2">기타 정책</a></li>
                            <li><a class="text-decoration-none" href="#tag3">------지역별 정책------</a></li>
                            <li><a class="text-decoration-none" href="#tag3_1">광주광역시</a></li>
                            <li><a class="text-decoration-none" href="#tag3_2">기타 지역</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                	<div class="col-md-4">
                	<!-----------법과 정책 > 법------------>
                        <a name="tag1">법</a>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card-body">
                            	<a name="tag1_1">동물보호법 주요내용</a>
                            </div>
                            <div class="card-body">
                            제3조(동물보호의 기본원칙) 누구든지 동물을 사육ㆍ관리 또는 보호할 때에는 다음 각 호의 원칙을 준수하여야 한다.<br>  
                                <p class="doginfo_left">
                                <개정 2017. 3. 21.><br>
                                1. 동물이 본래의 습성과 신체의 원형을 유지하면서 정상적으로 살 수 있도록 할 것<br>
                                2. 동물이 갈증 및 굶주림을 겪거나 영양이 결핍되지 아니하도록 할 것<br>
                                3. 동물이 정상적인 행동을 표현할 수 있고 불편함을 겪지 아니하도록 할 것<br>
                                4. 동물이 고통ㆍ상해 및 질병으로부터 자유롭도록 할 것<br>
                                5. 동물이 공포와 스트레스를 받지 아니하도록 할 것
                                </p>
                             </div>
                             <div class="card-body">제13조(등록대상동물의 관리 등)
                             	<p class="doginfo_left">① 소유자등은 등록대상동물을 기르는 곳에서 벗어나게 하는 경우에는 소유자등의 연락처 등 농림축산식품부령으로 정하는 사항을 표시한 인식표를 등록대상동물에게 부착하여야 한다.<br>  
                                <개정 2013. 3. 23.><br>
                                ② 소유자등은 등록대상동물을 동반하고 외출할 때에는 농림축산식품부령으로 정하는 바에 따라 목줄 등 안전조치를 하여야 하며, 배설물(소변의 경우에는 공동주택의 엘리베이터ㆍ계단 등 건물 내부의 공용공간 및 평상ㆍ의자 등 사람이 눕거나 앉을 수 있는 기구 위의 것으로 한정한다)이 생겼을 때에는 즉시 수거하여야 한다.<br>  
                                <개정 2013. 3. 23., 2015. 1. 20.><br>
                                ③ 시ㆍ도지사는 등록대상동물의 유실ㆍ유기 또는 공중위생상의 위해 방지를 위하여 필요할 때에는 시ㆍ도의 조례로 정하는 바에 따라 소유자등으로 하여금 등록대상동물에 대하여 예방접종을 하게 하거나 특정 지역 또는 장소에서의 사육 또는 출입을 제한하게 하는 등 필요한 조치를 할 수 있다.
                            	<br><br>
                            	<a href="https://www.law.go.kr/LSW/lsInfoP.do?lsiSeq=214159&efYd=20210212&ancYnChk=0#0000" target="_blank">전체내용 보러가기</a>
                            	<br><br><br>
                            	</p>
                            </div>
                            <div class="card-body">
                            	<a name="tag1_2">동물보호법 시행령</a>
                            </div>
                            <div class="card-body">
                            제6조의2(보험의 가입) 법 제13조의2제4항에 따라 맹견의 소유자는 다음 각 호의 요건을 모두 충족하는 보험에 가입해야 한다.
                                <p class="doginfo_left">1. 다음 각 목에 해당하는 금액 이상을 보상할 수 있는 보험일 것<br>
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
                                <br><br>
                            	<a href="https://www.law.go.kr/LSW/lsInfoP.do?lsiSeq=233719&efYd=20210706&ancYnChk=0#0000" target="_blank">전체내용 보러가기</a>
                            	<br><br><br>
                            	</p>
                            </div>
                            <div class="card-body">
                            	<a name="tag1_3">동물보호법 시행규칙</a>
                            </div>
                            <div class="card-body">
                            제12조(안전조치)
                                <p class="doginfo_left">① 소유자등은 법 제13조제2항에 따라 등록대상동물을 동반하고 외출할 때에는 목줄 또는 가슴줄을 하거나 이동장치를 사용해야 한다. 다만, 소유자등이 월령 3개월 미만인 등록대상동물을 직접 안아서 외출하는 경우에는 해당 안전조치를 하지 않을 수 있다.  <개정 2021. 2. 10.><br>
                                ② 제1항 본문에 따른 목줄 또는 가슴줄은 2미터 이내의 길이여야 한다.  <개정 2021. 2. 10.><br>
                                ③ 등록대상동물의 소유자등은 법 제13조제2항에 따라 「주택법 시행령」 제2조제2호 및 제3호에 따른 다중주택 및 다가구주택, 같은 영 제3조에 따른 공동주택의 건물 내부의 공용공간에서는 등록대상동물을 직접 안거나 목줄의 목덜미 부분 또는 가슴줄의 손잡이 부분을 잡는 등 등록대상동물이 이동할 수 없도록 안전조치를 해야 한다.  <신설 2021. 2. 10.><br>
                                [전문개정 2019. 3. 21.]<br>
                                [시행일 : 2022. 2. 11.] 제12조제2항, 제12조제3항
                            	<br><br>
                            	<a href="https://www.law.go.kr/LSW/lsInfoP.do?lsiSeq=233301&efYd=20210617&ancYnChk=0#0000" target="_blank">전체내용 보러가기</a>
                            	<br><br><br>
                            	</p>
                            </div>
                            			                    <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                            	
                        </div>
                    </div>

            		<!----------법과 정책 > 정책 ------------->
            		<div class="col-md-4">
           				<a name="tag2">정책</a>
            			<div class="card mb-4 product-wap rounded-0">
            				<div class="card-body">
                            	<a name="tag2_1">동물보호 복지대책</a>
                            </div>
                            <div class="card-body">
                            > 주요정책 대상
                                <p class="doginfo_left">국민, 동물소유자, 동물실험관계자, 동물생산·판매 등 영업자 등</p>
                            </div>
                            <div class="card-body">
                            > 정책추진 배경
                                <p class="doginfo_left">1. 1인 가구의 증가, 저출산과 고령화 등으로 인한 반려동물 가구 수가 증가하고 있는 반면에 올바른 반려문화에 대한 인식 부족<br>
                                2. 반려동물 및 보유가구의 급격한 증가에 따른 관련 산업 육성 요구 증가<br>
                                3. 살충제 계란 파동 등으로 인해 밀식사육 등 축산 사육환경 개선 필요성 제기
                                <br><br>
                                </p>
                            </div>
                            <div class="card-body">
                            > 주요 추진 내용
	                            <p class="doginfo_left">1. 제도 개선<br>
	                            -반려견 목줄길이를 2m 이내로 제한하는 동물보호법 시행규칙 개정 시행(21.2.12.)<br>
	                            -맹견 소유자의 관리의무 신설 등 동물보호법 하위법령 개정 마련 시행(19.3.21.)<br>
	                            -맹견 소유자 책임보험 의무가입 관련 동물보호」 하위법령 개정 시행(21.2.12.)<br>
	                            -등록대상동물을 주택 준주택에서 기르거나 반려목적으로 기르는 2개월령 이상의 개로 확대하는 「동물보호법」 시행령 개정 시행(20.3.11.)<br>
	                            -고양이 소유자 중 등록을 원하는 경우 등록할 수 있도록 ‘고양이 동물등록 시범사업’ 실시(`18~)<br>
	                            -동물학대 행위에 대한 처벌 및 반려동물 관련 영업 관리 강화 등 「동물보호법」 하위법령 개정 마련 시행(18.3.22)<br>
	                            -동물생산업 신고제에서 허가제 전환(17.3.21) 및 동물 신규서비스업 등록시행(’18.3.22)<br>
	                            2. 동물보호 및 복지 교육홍보 추진<br>
	                            -동물보호를 통한 생명존중에 대한 올바른 가치관 형성을 위해 초등학생 대상 동물보호 교육 실시<br>
	                			-일반인과 반려인이 함께하는 동물보호 문화축제 개최(17: 대전, 18: 부산, 19: 제주, 20: 부산)<br>
	                            <br><br>
                            	<a href="https://www.mafra.go.kr/mafra/1374/subview.do" target="_blank">전체내용 보러가기</a>
                            	<br><br><br>
	                            </p>
                            </div>
                            <div class="card-body">
                           		<a name="tag2_2">기타 정책</a>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">-<br><br></p>
                            </div>
                            <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">맨 위로 </a>
                            	
                        </div>
                    </div>
                 	<!----------법과 정책 > 지역별 정책 ------------->
                	<div class="col-md-4">
                         <a name="tag3">지역별 정책</a>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card-body">
                            	<a name="tag3_1">광주광역시</a>
                            </div>
                            <div class="card-body">
                            제1장 총칙
                                <p class="doginfo_left">제1조(목적) 이 조례는 「동물보호법」에서 위임된 사항과 
                                동물보호 및 복지에 관한 사항을 규정함으로써 동물의 생명보호, 안전보장 및 복지증진을 도모하고, 
                                시민과 동물의 조화로운 공존에 기여함을 목적으로 한다.</p>
                          	</div>
                          	<div class="card-body">
                            제2조(정의) 이 조례에서 사용하는 용어의 뜻은 다음과 같다.
                                <p class="doginfo_left">1. "소유자등"이란 동물의 소유자와 일시적 또는 영구적으로 동물을 사육·관리 
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
                            	<br><br>
                            	<a href="https://www.law.go.kr/LSW/ordinInfoP.do?ordinSeq=1394303" target="_blank">전체내용 보러가기</a>
                            	<br><br><br>
                            	</p>
                          	</div>
                          	<div class="card-body">
                            	<a name="tag3_2">기타 지역</a>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">-<br><br></p>
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