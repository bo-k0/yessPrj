<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage Sample</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/list.css">
<style>
.news-banner{
    position: relative;
    width: auto;
    height: 600px;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
}
.news-banner>img{
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.news-banner>p{
    z-index: 1;
    position: absolute;
    font-weight: 700;
    font-size: 130px;

    color: #FFFFFF;

    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.8);
}
.body-warp{
    background-color: rgb(226, 226, 226);
}
.mypage-warp{
    background-color: white;
    width: 1200px;
    height: auto;
    margin: 0 auto;
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 50px;
}
.mypage-category{
    width: 900px;
    height: 100px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;   
    align-items: center;
}
.mypage-category>span{
    font-size: 20px;
    font-weight: 600;
}
.mypage-content-box{
    width: 900px;
    height: 600px;
}
.mypage-title{
    border-bottom: 2px solid black;
    height: 100px;
    display: flex;
    align-items: center;
    font-size: 35px;
    font-weight: 600;
}
.mypage-title{
    padding-left: 20px;
}

</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="news-banner">
        <p>Mypage</p>
        <img src="${root}/resources/img/news/news.jpg"/>
    </div>
    <div class="body-warp">
        <div class="mypage-warp">
            <div class="mypage-category">
                <span>Profile</span>
                <span>Point</span>
                <span>My Mall</span>
                <span>My Market</span>
                <span>My Point</span>
                <span>QnA</span>
            </div>
            <div class="mypage-content-box">
                <div class="mypage-title">
                    <p>회원정보</p>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>