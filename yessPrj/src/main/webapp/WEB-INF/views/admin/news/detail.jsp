<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Detail :: YeSS</title>
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
            <a>삭제</a>
            <a>수정</a>
        </div>
        <div class="news-detail-title">
            <p id="notice-title">공지사항 101</p>
            <p id="notice-enroll-date">2122-11-30  11:30</p>
        </div>
        <div class="news-detail-content">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

        </div>
        <div class="news-detail-btn">
            <button type="button">List</button>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>