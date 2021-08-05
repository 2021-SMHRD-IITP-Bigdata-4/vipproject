<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>vip�ְ�</title>
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
    
    
    </style>
</head>
<body>
	<% 
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info"); 
	%>
	
	
	<!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">vip</a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a id="allMap"class="nav-link" href="allMap.jsp">�ְߵ��ݽü�</a>
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
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <%if (info != null){ %>                   
                    	<a href = "userUpdate.jsp">������������</a> <br>                  	
                    	<a href = "Logout">�α׾ƿ�</a>
                    <%} else {%>
                    <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
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
                	  <th class="h2 pb-4"><span class="faciti1">�ְߵ��ݽü�</span></th>
                      <td style="float:left;margin-left:30px"><a id="room" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="roomMap.jsp"><span class="faciti">����</span></a></td>
                      <td style="float:left;margin-left:30px;"><a id="cafe" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="cafeMap.jsp"><span class="faciti">ī��</span></a></td>
                      <td style="float:left;margin-left:30px;"><a id="rastaurant" class="collapsed d-flex justify-content-between h3 text-decoration-none" href="rastaurantMap.jsp"><span class="faciti">�Ĵ�</span></a></td>
                    </tr>
               </table>
            </div>
            <br>
	<div class="map" id="map" style="width:100%!important;height:600px; display:inline;"></div>
	</div>
	</div>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a243ec3aa0d2e63578927b17e122deb3&libraries=clusterer"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a243ec3aa0d2e63578927b17e122deb3"></script>
	<script>
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    	mapOption = { 
        center: new kakao.maps.LatLng(36.2683, 127.6358), // ������ �߽���ǥ
        level: 14 // ������ Ȯ�� ����
    	};

		var map = new kakao.maps.Map(mapContainer, mapOption); 
		// ������ ǥ���� div��  ���� �ɼ�����  ������ �����մϴ�
		
		var mapTypeControl = new kakao.maps.MapTypeControl();
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
		
		$("#map").ready(function() {
			$.ajax({
				url : "allMap",//�Ȱ��� ������Ʈ ���� ���ο����� url mapping���� ������ �̵�����
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					console.log(data);
					
					var list = {data};
					//console.log(list);
					
					var markers = list.data.map(function(i, position) {
						
					/* console.log(i); //����Ʈ
					console.log(position); //����Ʈ �ε��� ��ȣ */
					
			            var maks = new kakao.maps.Marker({
			                position : new kakao.maps.LatLng(i.fac_lati, i.fac_long)
			            });
			            	//console.log(maks.position);
					
 			            var content ='<div style="width:150px;text-align:bottom;padding:4px 0;font-size:11px;">'
 			            +"���θ� �ּ�"+'<br>'+i.fac_address+'<br><a href ='+i.fac_intro+'>������</div>'; 
					 	
						var infowindow = new daum.maps.InfoWindow({
							content: content,
			                removable : true,
			            });
						
						daum.maps.event.addListener(maks, 'click', makeOverListener(map, maks, infowindow));
						
						return maks;
						
					 	
			        });
					
					var clusterer = new kakao.maps.MarkerClusterer({
				        map: map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
				        averageCenter: true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
				        minLevel: 10 // Ŭ������ �� �ּ� ���� ���� 
				    });
					
					 	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
					        // ���� ���� �������� 1���� Ȯ���� ����
					        var level = map.getLevel()-1;
					        // ������ Ŭ���� Ŭ�������� ��Ŀ�� ��ġ�� �������� Ȯ���մϴ�
					        map.setLevel(level, {anchor: clusterer.getCenter()});
					    });
					 	
					 	clusterer.addMarkers(markers);
						
					 	// ���������츦 ǥ���ϴ� Ŭ������ ����� �Լ��Դϴ� 
					 	function makeOverListener(map, marker, infowindow) {
					        infowindow.close();
					        return function() {
					            infowindow.open(map, marker);
					        };
					    }
					 	// ���������츦 �ݴ� Ŭ������ ����� �Լ��Դϴ� 
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