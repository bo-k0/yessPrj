<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Main :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<style>
.news-main-box{
    width: 900px;
    height: 800px;
    margin: auto;
    margin-bottom: 50px;

    display: flex;
    flex-direction: row;
    gap: 40px;
    
}
.news-notice-box{
    width: 620px;

    display: flex;
    flex-direction: column;
    justify-content: space-between;
}
.news-notice-sort{
    height: 90px;
}
.news-notice-sort>p{
    border-bottom: 2px solid #0096C6;
    height: 60px;
    width: 160px;
    display: flex;
    justify-content: center;
    align-items: center;

    font-weight: 700;
    font-size: 18px;
    line-height: 22px;
    color: black;
}
.news-notice-title>p{
    height: 35px;
    border-bottom: 1px solid #c0c0c0;
    padding-left: 50px;

    font-weight: 300;
    font-size: 15px;
    line-height: 35px;
}
.news-rank-box{
    width: 220px;
    display: flex;
    flex-direction: column;
    justify-content: space-around;


}
.rank-box{
    border: 2px solid #0096C6;
    border-radius: 15px;
}
.rank-box>p{
    height: 60px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 600;
    font-size: 20px;
}
.rank{
    height: 300px;
    display: grid;
    grid-template-rows: repeat(10, 1fr);
    grid-template-columns: 1fr 3fr;
}
.rank-number{
    display: flex;
    justify-content: center;
}
.ranker-name{
    padding-left: 20px;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<%@ include file="common.jsp" %>
    <div class="news-main-box">
        <div class="news-notice-box">
            <div class="news-notice">
                <div class="news-notice-sort">
                    <p>Recycle News</p>
                </div>
                <div class="news-notice-title">
                    <p>공지사항1</p>
                    <p>공지사항2</p>
                    <p>공지사항3</p>
                    <p>공지사항4</p>
                    <p>공지사항5</p>
                </div>
            </div>
            <div class="news-notice">
                <div class="news-notice-sort">
                    <p>Recycle Area</p>
                </div>
                <div class="news-notice-title">
                    <p>공지사항1</p>
                    <p>공지사항2</p>
                    <p>공지사항3</p>
                    <p>공지사항4</p>
                    <p>공지사항5</p>
                </div>
            </div>
            <div class="news-notice">
                <div class="news-notice-sort">
                    <p>Update Notice</p>
                </div>
                <div class="news-notice-title">
                    <p>공지사항1</p>
                    <p>공지사항2</p>
                    <p>공지사항3</p>
                    <p>공지사항4</p>
                    <p>공지사항5</p>
                </div>
            </div>
        </div>
        <div class="news-rank-box">
            <div class="rank-box">
                <p>이달의 지키미</p>
                <div class="rank">
                    <p class="rank-number">1등</p><p class="ranker-name">피카츄</p>
                    <p class="rank-number">2등</p><p class="ranker-name">라이츄</p>
                    <p class="rank-number">3등</p><p class="ranker-name">파이리</p>
                    <p class="rank-number">4등</p><p class="ranker-name">꼬부기</p>
                    <p class="rank-number">5등</p><p class="ranker-name">버터플</p>
                    <p class="rank-number">6등</p><p class="ranker-name">야도란</p>
                    <p class="rank-number">7등</p><p class="ranker-name">피죤투</p>
                    <p class="rank-number">8등</p><p class="ranker-name">또가스</p>
                    <p class="rank-number">9등</p><p class="ranker-name">이브이</p>
                    <p class="rank-number">10등</p><p class="ranker-name">토게피</p>
                </div>
            </div>
            <div class="rank-box">
                <p>지키미 명예의 전당</p>
                <div class="rank">
                    <p class="rank-number">1등</p><p class="ranker-name">피카츄</p>
                    <p class="rank-number">2등</p><p class="ranker-name">라이츄</p>
                    <p class="rank-number">3등</p><p class="ranker-name">파이리</p>
                    <p class="rank-number">4등</p><p class="ranker-name">꼬부기</p>
                    <p class="rank-number">5등</p><p class="ranker-name">버터플</p>
                    <p class="rank-number">6등</p><p class="ranker-name">야도란</p>
                    <p class="rank-number">7등</p><p class="ranker-name">피죤투</p>
                    <p class="rank-number">8등</p><p class="ranker-name">또가스</p>
                    <p class="rank-number">9등</p><p class="ranker-name">이브이</p>
                    <p class="rank-number">10등</p><p class="ranker-name">토게피</p>
                </div>
            </div>
        </div>
    </div>	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>