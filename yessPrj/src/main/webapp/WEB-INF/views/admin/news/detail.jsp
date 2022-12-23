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
    width: 900px;
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
    font-size: 15px;
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
    padding: 20px;
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
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <%@ include file="common.jsp" %>
    <p class="current-notice">
        Recycle News
    </p>
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
            <button type="button">List</button>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>