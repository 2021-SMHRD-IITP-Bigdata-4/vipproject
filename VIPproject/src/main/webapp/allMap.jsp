<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����浵</title>
	
</head>
<body>
	
	<div id="map" style="width:80%;height:500px;"></div>
	
	<input type="button" value="������ǥ">
	
	<script src="js/jquery-3.6.0.min.js"></script>
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
		
		var clusterer = new kakao.maps.MarkerClusterer({
	        map: map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
	        averageCenter: true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
	        minLevel: 10 // Ŭ������ �� �ּ� ���� ���� 
	    });
		
		$("input").on("click", function() {
			$.ajax({
				url : "allMap",//�Ȱ��� ������Ʈ ���� ���ο����� url mapping���� ������ �̵�����
				dataType : "json",
				contentType : "application/json; charset=utf-8",
				success : function(data) {
					//console.log(data);
					
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