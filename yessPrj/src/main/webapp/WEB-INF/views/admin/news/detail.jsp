<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Admin :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<!-- 카카오 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=54c1db7c3aaa1000c7e68e8a2dfb2f48&libraries=services,clusterer,drawing"></script>

<style>
.current-notice{
    margin: auto;
    width: 140px;
    height: 80px;
    border-bottom: 2px solid #0096C6;

    display: flex;
    justify-content: center;
    align-items: center;

    font-weight: 700;
    font-size: 20px;
}
.news-detail-wrap{
    margin: auto;
    width: 700px;
    height: auto;

}
.news-detail-edit{
    height: 50px;
    font-weight: 700;
    font-size: 20px;
    padding-right: 15px;

    display: flex;
    flex-direction: row-reverse;
    align-items: center;
    gap: 15px;   
}
.news-detail-edit>a{
	color : rgb(172, 172, 172);
}
.news-detail-edit>a:hover{
	color : black;
}

.news-detail-title{
    height: 50px;
    background: #5C9AC1;
    
    
    padding: 0 20px 0 20px;

    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
}
#notice-title{
    font-weight: 600;
    font-size: 18px;
    color: white;
}
#notice-enroll-date{
    font-weight: 300;
    font-size: 13px;
    color: rgb(240, 240, 240);
}
.news-detail-content{
    min-height: 550px;
    height: auto;
    padding: 40px;
    border: 1px solid #5C9AC1;
}
.news-detail-btn{
    height: 80px;

    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}
.news-detail-btn>button{
    width: 80px;
    height: 30px;
    border: none;   
    background: #0096C6;
    color: white;
    cursor: pointer;
	outline: none;
	
}
.news-detail-btn>button:hover{
	top:-2px;
	position: relative;
	box-shadow: 1px 3px 0 rgb(0,0,0,0.5);
}
.news-detail-btn>button:active{
	box-shadow: 1px 1px 0 rgb(0,0,0,0.5);
	position: relative;
	top:2px;
}
.news-detail-whole{
    display: grid;
    grid-template-columns: 2fr 3fr 2fr;
    width: 1250px;
    margin: 0 auto 50px auto;
    gap: 30px;
}
.news-detail-map{
    display: flex;
    flex-direction: column;
    align-items: center;
}
.news-detail-map a{
    text-decoration: none; 
	outline: none;
    font-weight: 600;
	color : gray;
    font-size: 17px;
}
.news-detail-map a:hover{
    text-decoration: none;
    color : black;
}
.news-detail-ad{
    display: flex;
    flex-direction: column;
    gap: 30px;
    overflow: hidden;
    padding-top: 50px;
    width: 220px;
    height: auto;
}
.news-detail-ad>img{
    width: 100%;
}
#map{
    margin-top: 50px;
    width:220px;
    height:300px;
    overflow:hidden;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="news-banner">
        <p>News</p>
        <div><img src="${root}/resources/img/news/news.jpg"/></div>
    </div>
    <div class="news-sort">
        <a href="${root}/admin/news/news" <c:if test="${vo.newsTypeNo eq '1'}">style="color:black;"</c:if>>Recycle News</a>
        <a href="${root}/admin/news/area"<c:if test="${vo.newsTypeNo eq '2'}">style="color:black;"</c:if>>Recycle Area</a>
        <a href="${root}/admin/news/notice"<c:if test="${vo.newsTypeNo eq '3'}">style="color:black;"</c:if>>Update Notice</a>
    </div>
    <p class="current-notice">
        <c:choose>
        	<c:when test="${vo.newsTypeNo eq '1'}">Recycle News</c:when>
        	<c:when test="${vo.newsTypeNo eq '2'}">Recycle Area</c:when>
        	<c:otherwise>Update News</c:otherwise>
        </c:choose>
    </p>
    
    <div class="news-detail-whole">
        <div class="news-detail-map">
            <c:if test="${vo.newsTypeNo eq '2'}">
                <div id="map"></div>
                <a href="${root}/admin/whereTo?n=${vo.placeNo}#map">상세지도</a>
            </c:if>
        </div>
        <div class="news-detail-wrap">
            <div class="news-detail-edit">               
                <a href="${root}/admin/news/edit?no=${vo.no}">수정</a>
            </div>
            <div class="news-detail-title">
                <p id="notice-title">${vo.title}</p>
                <p id="notice-enroll-date">${vo.enrollDate}</p>
            </div>
            <div class="news-detail-content">
                ${vo.content}
            </div>
            <div class="news-detail-btn">
                <button type="button" onclick="location.href='${root}/news/${tName}'">List</button>
            </div>
        </div>
        <div class="news-detail-ad"></div>
    </div>
    <%@ include file="../common/footer.jsp" %>
	<script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3, // 지도의 확대 레벨
                draggable : false, //마우스 드래그 가능 여부
                scrollwheel : false, //마우스 휠 확대 축소 가능 여부
                disableDoubleClick : false, //더블클릭 이벤트, 확대 가능 여부
                disableDoubleClickZoom : false, //더블클릭 확대 가능 여부
                keyboardShortcuts : false // 키보드 이동, 확대 , 축소 가능여부
            };  

        // 지도를 생성합니다    
        var map = new kakao.maps.Map(mapContainer, mapOption); 

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 주소로 좌표를 검색합니다
        geocoder.addressSearch('${vo.address}', function(result, status) {

            // 정상적으로 검색이 완료됐으면 
            if (status === kakao.maps.services.Status.OK) {

                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords,
                    draggable: true
                });

                // 인포윈도우로 장소에 대한 설명을 표시합니다
                var infowindow = new kakao.maps.InfoWindow({
                    content: '<div style="width:150px;text-align:center;padding:6px 0;">${vo.name}</div>'
                });
                infowindow.open(map, marker);

                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);
            } 
        });    
	</script>
    
</body>
</html>