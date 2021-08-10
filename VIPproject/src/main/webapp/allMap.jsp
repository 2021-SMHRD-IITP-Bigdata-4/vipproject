<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>vip애견</title>
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
    .faciti{
    	font-size: 15px;
    	padding-top: 10px;
    	text-align: left;
    }
    .faciti1{
    	font-size: 16px!important;
    	font-weight: bold;
    }
    table {
    	width: 330px;
    	border-collapse: collapse;
    }
   th{text-align:left;}
   td{
   padding: 5px;
   }
.address{
	font-size: 12px;
}
.copy{
	font-size: 12px;
}
.load{
	font-size: 15px;
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
                </div>
            </form>
        </div>
    </div>
    
    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-3">
                <table class="list-unstyled templatemo-accordion">
                	<tr>
                	  <th class="h2 pb-4"><span class="faciti1">애견동반시설</span></th>
                      <td style="float:left;margin-left:30px"><a id="room" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="roomMap.jsp"><span class="faciti">숙박</span></a></td>
                      <td style="float:left;margin-left:30px;"><a id="cafe" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="cafeMap.jsp"><span class="faciti">카페</span></a></td>
                      <td style="float:left;margin-left:30px;"><a id="rastaurant" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="rastaurantMap.jsp"><span class="faciti">식당</span></a></td>
                    </tr>
               </table>
            </div>
            <br>
	<div class="map" id="map" style="width:100%!important;height:600px; display:inline;"></div>
	</div>
	</div>
	
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
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a243ec3aa0d2e63578927b17e122deb3&libraries=clusterer"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a243ec3aa0d2e63578927b17e122deb3"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    	mapOption = { 
        center: new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
        level: 14 // 지도의 확대 레벨
    	};

		var map = new kakao.maps.Map(mapContainer, mapOption); 
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		
		var mapTypeControl = new kakao.maps.MapTypeControl();
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		
		$("#map").ready(function() {
			$.ajax({
				url : "allMap",//똑같은 프로젝트 폴더 내부에서는 url mapping값만 가지고 이동가능
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					console.log(data);
					
					var list = {data};
					//console.log(list);
					
					var markers = list.data.map(function(i, position) {
						
					/* console.log(i); //리스트
					console.log(position); //리스트 인덱스 번호 */
					
			            var maks = new kakao.maps.Marker({
			                position : new kakao.maps.LatLng(i.fac_lati, i.fac_long)
			            });
			            	//console.log(maks.position);
					
 			            var content ='<div style="width:150px;text-align:bottom;padding:4px 0;font-size:11px;"><span class="load">'
 			            +"도로명 주소"+'</span><br><span class="load">'+i.fac_address+'</span><br><a href ='+i.fac_intro+'><span class="load">상세정보</span></div>'; 
					 	
						var infowindow = new daum.maps.InfoWindow({
							content: content,
			                removable : true,
			            });
						
						daum.maps.event.addListener(maks, 'click', makeOverListener(map, maks, infowindow));
						
						return maks;
						
					 	
			        });
					
					var clusterer = new kakao.maps.MarkerClusterer({
				        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
				        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
				        minLevel: 10 // 클러스터 할 최소 지도 레벨 
				    });
					
					 	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
					        // 현재 지도 레벨에서 1레벨 확대한 레벨
					        var level = map.getLevel()-1;
					        // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
					        map.setLevel(level, {anchor: clusterer.getCenter()});
					    });
					 	
					 	clusterer.addMarkers(markers);
						
					 	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
					 	function makeOverListener(map, marker, infowindow) {
					        infowindow.close();
					        return function() {
					            infowindow.open(map, marker);
					        };
					    }
					 	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					 	function makeOutListener(infowindow) {
					        return function() {
					            infowindow.close();
					        };
					    }
				    }
				});
			});
		
		 	
	</script>
</body>
</html>