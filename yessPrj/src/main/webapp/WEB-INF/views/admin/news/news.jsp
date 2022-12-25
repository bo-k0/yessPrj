<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Admin :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/list.css">
<style>

</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <%@ include file="common.jsp" %>
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
        
        <c:forEach var="list" items="${list}" begin="0" end="10" step="1">
	        <div class="news-list-body">
	            <p>${list.listNo}</p>
	            <p class="news-list-body-title"><a href="${root}/admin/news/detail?no=${list.no}">${list.title}</a></p>
	            <p>${list.enrollDate}</p>
	        </div>
        </c:forEach>

    </div>
    <div class="page-number-wrap">
    	<c:if test="${pv.startPage != 1}">
    		<a href="${root}/admin/news/news?p=1"><i class="fa-solid fa-angles-left"></i></a>
    		<a href="${root}/admin/news/news?p=${pv.startPage-1}"><i class="fa-solid fa-angle-left"></i></a>
   		</c:if>
    	<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
    		<c:choose>
    			<c:when test="${pv.currentPage == i}"><a id="currentPage">${i}</a></c:when>
    			<c:otherwise><a href="${root}/admin/news/news?p=${i}">${i}</a></c:otherwise>
    		</c:choose>	
    	</c:forEach>
    	<c:if test="${pv.endPage != pv.maxPage}">
        	<a href="${root}/admin/news/news?p=${pv.endPage+1}"><i class="fa-solid fa-angle-right"></i></a>
        	<a href="${root}/admin/news/news?p=${pv.maxPage}"><i class="fa-solid fa-angles-right"></i></a>
       	</c:if>
    </div>
    <%@ include file="../common/footer.jsp" %>   
</body>
</html>