<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
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
    min-height: 500px;
    font-size:15px;
    height: auto;
    padding: 50px;
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

</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    	<div class="news-banner">
		    <p>News</p>
		    <div><img src="${root}/resources/img/news/news.jpg"/></div>
		</div>
		<div class="news-sort">
		    <a href="${root}/news/news" <c:if test="${vo.newsTypeNo eq '1'}">style="color:black;"</c:if>>Recycle News</a>
		    <a href="${root}/news/area"<c:if test="${vo.newsTypeNo eq '2'}">style="color:black;"</c:if>>Recycle Area</a>
		    <a href="${root}/news/notice"<c:if test="${vo.newsTypeNo eq '3'}">style="color:black;"</c:if>>Update Notice</a>
		</div>
    <p class="current-notice">
        <c:choose>
        	<c:when test="${vo.newsTypeNo eq '1'}">Recycle News</c:when>
        	<c:when test="${vo.newsTypeNo eq '2'}">Recycle Area</c:when>
        	<c:otherwise>Update News</c:otherwise>
        </c:choose>
    </p>
    <div class="news-detail-whole">
        <div></div>
        <div class="news-detail-wrap">
            <div class="news-detail-edit">

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
        <div class="news-detail-ad">
			<img src="${root}/resources/img/community/community_banner.png" alt="">
			<img src="${root}/resources/img/community/community_banner_photo_event2.png" alt="">
		</div>
    </div>  
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>