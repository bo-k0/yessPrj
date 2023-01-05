<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Where To :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/whereTo/whereTo.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=54c1db7c3aaa1000c7e68e8a2dfb2f48&libraries=services,clusterer,drawing"></script>
</head>
<body>

	<%@ include file="../common/header.jsp"%>
	<div class="where-banner">
		<p>Where To YeSS</p>
		<img src="${root}/resources/img/whereTo/whereTo.jpg" />
	</div>
	<div class="where-head">
		<p>Where to YeSS</p>
	</div>
	<div class="map_wrap">
        <!-- 지도 div -->
		<div name="map" id="map"style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
	</div>

	<%@ include file="../common/footer.jsp"%>
	<script>
        var map;
		const n = "${n}";

		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 -> 현재 위치 얻기
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				//message = '<div style="width:150px;text-align:center;padding:6px 0;">내 장소</div>'; // 인포윈도우에 표시될 내용입니다

                createMap(locPosition);

			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(37.49919469526778, 127.03278432869432);
            
            createMap(locPosition);
		}

        //지도 생성
        function createMap(locPosition) {
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : locPosition, // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨
				};
				// 지도를 생성합니다
				var map = new kakao.maps.Map(mapContainer, mapOption);
                
                // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                var markerImage = markerImg();

                //지도 컨트롤러 생성
                mapBtnControll(map);

				//지도 클러스터러 생성
				var clusterer = clustererSet(map);

				//마크 리스트
				markList(map, markerImage,clusterer);
				
        		// 현재 위치 마커 생성, 이동
				displayMarker(locPosition, map);
        }

        function markerImg(){

            var imageSrc = "${root}/resources/img/whereTo/marker.png", // 마커이미지의 주소입니다    
            imageSize = new kakao.maps.Size(40, 45), // 마커이미지의 크기입니다
            imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
            
            // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

            return markerImage;
        }

        //지도 컨트롤러
        function mapBtnControll(map){
            // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
            var mapTypeControl = new kakao.maps.MapTypeControl();

            // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
            // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

            // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
        }

		//지도 클러스터러 생성
		function clustererSet(map){
			var clusterer = new kakao.maps.MarkerClusterer({
				map: map,
				gridSize: 35,
				averageCenter: true,
				minLevel: 6,
				disableClickZoom: true,
				styles: [{
					width : '53px', height : '52px',
					background: 'url(cluster.png) no-repeat',
					color: '#fff',
					textAlign: 'center',
					lineHeight: '54px'
				}]
			});
			return clusterer;
		}

        //지도 리스트 마커 생성
		function markList(map, markerImage,clusterer) {		
			

			<c:forEach var="list" items="${list}" step="1" varStatus="status">

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();
			geocoder.addressSearch("${list.address}",function(result, status) {

                // 정상적으로 검색이 완료됐으면 
                if (status === kakao.maps.services.Status.OK) {

                    var coords = new kakao.maps.LatLng(
                            result[0].y, result[0].x);

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                        map : map,
                        position : coords,
                        image : markerImage
                    });

					clusterer.addMarker(marker);

					// 커스텀 오버레이 내용
					var content = '<div class="overlay-wrap">'
								+ '    <a href="${root}/news/detail?no=${list.newsNo}">'
								+ '		<span><i class="fa-solid fa-location-dot"></i></span>'
								+ '		<span>${list.name}</span>'	
								+ '		<span><i class="fa-solid fa-chevron-right"></i></span>'		
								+ '    </a>'
								+ '    <div class="overlay-addr">'
								+ '        <img src="${root}/resources/img/common/eLogo.png">'
								+ '        <div class="address-box">'
								+ '        	<span>${list.address}</span>'
								+ '        	<span>${list.addrDetail}</span>'
								+ '   		</div>'
								+ '    </div>'
								+ '</div>';
					
					// 커스텀 오버레이를 생성합니다
					var overlay = new daum.maps.CustomOverlay({
						position: coords,
						content: content,
						xAnchor: 0.5, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
						yAnchor: 1.7 // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다
					});

					// 커스텀 오버레이를 지도에 표시합니다
					//mapCustomOverlay.setMap(map);

					// 마커에 클릭 이벤트를 등록한다
					kakao.maps.event.addListener(marker, 'click', function() {
						overlay.setMap(null);
						 map.panTo(coords);
						 //infoContent.open(map,marker);
						 overlay.setMap(map);
					});

					// 지도에 클릭 이벤트를 등록한다
					// kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
					// 	overlay.setMap(null);
					// });

					// 지도에 드래그 이벤트를 등록한다
					kakao.maps.event.addListener(map, 'dragstart', function() {
						overlay.setMap(null);
					});

					// 마커에 우클릭 이벤트를 등록한다
					kakao.maps.event.addListener(marker, 'rightclick', function() {
						overlay.setMap(null);
					});

					// 지도 확대 레벨
					kakao.maps.event.addListener(map, 'zoom_changed', function() {        
						
						// 지도의 현재 레벨을 얻어옵니다
						var level = map.getLevel();
						
						if(level >= 7){
							overlay.setMap(null);
							
						}
					});

					
					// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
					if(n == "${list.no}"){
						map.setCenter(coords);
						overlay.setMap(map);
					}

					// 마커에 mouseover 이벤트를 등록한다
					// kakao.maps.event.addListener(marker, 'mouseover', function() {
					// 	infoTitle.open(map, marker);
					// });

					// 마커에 mouseout 이벤트 등록한다.
					// kakao.maps.event.addListener(marker, 'mouseout', function() {
					// 	infoTitle.close();
					// });

                    }
                });

			</c:forEach>
		}

	
        // 현재 위치 마커 생성, 이동
		function displayMarker(locPosition, map) {

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});

			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			if(n == 0){
				map.setCenter(locPosition);
			}
		}
	</script>
</body>
</html>