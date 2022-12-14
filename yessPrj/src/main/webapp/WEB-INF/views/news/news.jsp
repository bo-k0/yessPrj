<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycle News :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/list.css">
<style>

</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="news-banner">
        <p>News</p>
        <img src="${root}/resources/img/news/news.jpg"/>
    </div>
    <div class="news-sort">
        <a href="/yess/news/news">Recycle News</a>
        <a href="/yess/news/area">Recycle Area</a>
        <a href="/yess/news/notice">Update Notice</a>
    </div>
    <p class="current-notice">
        Recycle News
    </p>
    <div class="news-search-wrap">
        <form action="" method="get">
            <select name="noticeSort">
                <option value="recycleNews">Recycle News</option>
                <option value="recycleArea">Recycle Area</option>
                <option value="updateNotice">Update News</option>
            </select>        
            <input class="news-search-content" type="text" name="noticeSearch" placeholder="검색어를 입력하세요.">
            <button type="submit" class="news-search-btn">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
    </div>
    <div class="news-list-wrap">
        <div class="news-list-write">
            <span>글쓰기</span>
        </div>
        <div class="news-list-head">
            <p>번호</p>
            <p>제목</p>
            <p>날짜</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        

    </div>
    <div class="page-number-wrap">
        <a>1</a>
        <a>2</a>
        <a>3</a>
        <a>4</a>
        <a>5</a>
    </div>
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>