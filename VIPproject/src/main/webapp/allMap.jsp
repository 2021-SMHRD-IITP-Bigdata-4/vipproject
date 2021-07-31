<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>위도경도</title>
	
</head>
<body>
	
	<div id="map" style="width:80%;height:500px;"></div>
	
	<input type="button" value="전국좌표">
	
	<script src="js/jquery-3.6.0.min.js"></script>
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
		
		var clusterer = new kakao.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
	        minLevel: 10 // 클러스터 할 최소 지도 레벨 
	    });
		
		$("input").on("click", function() {
			$.ajax({
				url : "allMap",//똑같은 프로젝트 폴더 내부에서는 url mapping값만 가지고 이동가능
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					//console.log(data);
					
					var list = {data};
					//console.log(list);
					
					var markers = list.data.map(function(i, position) {
						
					/* console.log(i); //리스트
					console.log(position); //리스트 인덱스 번호 */
					
			            var maks = new kakao.maps.Marker({
			                position : new kakao.maps.LatLng(i.fac_lati, i.fac_long)
			            });
			            	//console.log(maks.position);
					
 			            var content ='<div style="width:150px;text-align:bottom;padding:4px 0;font-size:11px;">'
 			            +"도로명 주소"+'<br>'+i.fac_address+'<br><a href ='+i.fac_intro+'>상세정보</div>'; 
					 	
						var infowindow = new daum.maps.InfoWindow({
							content: content,
			                removable : true,
			            });
						
						daum.maps.event.addListener(maks, 'click', makeOverListener(map, maks, infowindow));
						
						return maks;
					 	
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