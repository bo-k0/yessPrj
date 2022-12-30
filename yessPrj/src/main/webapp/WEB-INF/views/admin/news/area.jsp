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
    <div class="news-banner">
		<p>News</p>
		<div><img src="${root}/resources/img/news/news.jpg"/></div>
	</div>
	<div class="news-sort">
		<a href="${root}/admin/news/news">Recycle News</a>
		<a style="color:black;">Recycle Area</a>
		<a href="${root}/admin/news/notice">Update Notice</a>
	</div>
    <p class="current-notice">
        Recycle Area
    </p>
    <form action="" method="get" id="searchForm">
    	<div class="news-search-wrap">
            <select name="deleteYn">
                <option value="N" <c:if test="${npvo.deleteYn eq 'N'}">selected</c:if>>게시</option>
                <option value="Y" <c:if test="${npvo.deleteYn eq 'Y'}">selected</c:if>>미게시</option>
            </select>        
            <input class="news-search-content" type="text" name="search" placeholder="검색어를 입력하세요." <c:if test="${npvo.search != null}">value='${npvo.search}'</c:if>>
            <button class="news-search-btn">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
    	</div>
   	</form>

	   <div class="news-list-whole">
		<div class="news-list-warp-page">
	    <div class="news-list-wrap">
	        <div class="news-list-write">
	            <span><a href="${root}/admin/news/write">글쓰기</a></span>
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
		            <p class="news-List-Date">${list.enrollDate}</p>
		        </div>
	        </c:forEach>
	
	    </div>
	<form action="" method="get" id="npForm">
		<input type="hidden" name="p" id="pNo">
		<c:if test="${npvo.search != null}">
			<input type="hidden" name="search" value="${npvo.search}">
		</c:if>
		<c:if test="${npvo.deleteYn == 'Y'}">
			<input type="hidden" name="search" value="Y">
		</c:if>
   	   <div class="page-number-wrap">
	    	<c:if test="${pv.startPage != 1}">
	    		<a href="#" onclick="return chk_form('1')"><i class="fa-solid fa-angles-left"></i></a>
	    		<a href="#" onclick="return chk_form('${pv.startPage-1}')"><i class="fa-solid fa-angle-left"></i></a>
	   		</c:if>
	    	<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
	    		<c:choose>
	    			<c:when test="${pv.currentPage == i}"><a id="currentPage">${i}</a></c:when>
	    			<c:otherwise><a href="#" onclick="return chk_form('${i}')">${i}</a></c:otherwise>
	    		</c:choose>	
	    	</c:forEach>
	    	<c:if test="${pv.endPage != pv.maxPage}">
	        	<a href="#" onclick="return chk_form('${pv.endPage+1}')"><i class="fa-solid fa-angle-right"></i></a>
	        	<a href="#" onclick="return chk_form('${pv.maxPage}')"><i class="fa-solid fa-angles-right"></i></a>
	       	</c:if>
	    </div>
	</form>  	
	</div>
</div>
    <%@ include file="../common/footer.jsp" %>   
    
    <script>
		function chk_form(p) {
			document.getElementById("pNo").value = p;
				
			document.getElementById('npForm').submit();
		}
	</script>
</body>
</html>