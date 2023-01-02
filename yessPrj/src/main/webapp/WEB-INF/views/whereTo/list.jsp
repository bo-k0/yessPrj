<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Where To :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />  
<link rel="stylesheet" type="text/css" href="${root}/resources/css/whereTo/whereTo.css">
</head>
<body>

    <%@ include file="../common/header.jsp" %>
    <div class="where-banner">
        <p>Where To YeSS</p>
        <img src="${root}/resources/img/whereTo/whereTo.jpg"/>
    </div>
    <div class="where-head">
        <p>Where to YeSS</p>
    </div>
    <div class="map_wrap">
        <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    </div>

    <%@ include file="../common/footer.jsp" %>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=54c1db7c3aaa1000c7e68e8a2dfb2f48&libraries=services,clusterer,drawing"></script>
    <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  
    
    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption); 
    
    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();
    
    // 주소 리스트 받기
    <c:forEach var="list" items="${list}" step="1">
        // 주소로 좌표를 검색합니다
        geocoder.addressSearch("${list.address}", function(result, status) {
            
            // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {

                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords
                });

                // 인포윈도우로 장소에 대한 설명을 표시합니다
                var infowindow = new kakao.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;">'+"${list.name}"+'</div>'
                });
                infowindow.open(map, marker);

                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);
            } 
        });  
    </c:forEach>
    </script>
    </body>
    </html>