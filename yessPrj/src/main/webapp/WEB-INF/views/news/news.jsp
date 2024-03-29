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
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/list.css">
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
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
	    <a style="color:black;">Recycle News</a>
	    <a href="${root}/news/area">Recycle Area</a>
	    <a href="${root}/news/notice">Update Notice</a>
	</div>
    <p class="current-notice">
        환경 뉴스
    </p>  
	
		
	<div class="news-list-whole">
		<div class="news-list-ad">
			<a href="${root}/whereTo"><img src="${root}/resources/img/community/community_banner_whereToYess.png" alt=""></a>
		</div>
		<div class="news-list-warp-page">	
			<div class="news-list-wrap">
				<div class="news-list-write">

			
				</div>
				<div class="news-list-head">
					<p>번호</p>
					<p>제목</p>
					<p>날짜</p>
				</div>
				
				<c:forEach var="list" items="${list}" begin="0" end="10" step="1">
					<div class="news-list-body">
						<p>${list.listNo}</p>
						<p class="news-list-body-title"><a href="${root}/news/detail?no=${list.no}">${list.title}</a></p>
						<p class="news-List-Date">${list.enrollDate}</p>
					</div>
				</c:forEach>
				

			</div>
			<form action="" method="get" id="searchForm">
				<div class="news-search-wrap">
					<select name="sort">
						<option value="T" <c:if test="${npvo.sort eq 'T'}">selected</c:if>>제목</option>
						<option value="C" <c:if test="${npvo.sort eq 'C'}">selected</c:if>>내용</option>
					</select>        
					<input class="news-search-content" type="text" name="search" placeholder="검색어를 입력하세요." <c:if test="${npvo.search != null}">value='${npvo.search}'</c:if>>
					<button class="news-search-btn">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</form>
			
			<form action="" method="get" id="npForm">
				<input type="hidden" name="p" id="pNo">
				<c:if test="${npvo.search != null}">
					<input type="hidden" name="search" value="${npvo.search}">
				</c:if>
				<c:if test="${npvo.sort == 'C'}">
					<input type="hidden" name="sort" value="C">
				</c:if>
				<c:if test="${npvo.sort == 'T'}">
					<input type="hidden" name="sort" value="T">
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
		<div class="news-list-ad">
			<a href="${root}/howtoYeSS/home"><img src="${root}/resources/img/community/community_banner.png" alt=""></a>
			<a href="${root}/mypage/point"><img src="${root}/resources/img/community/community_banner_photo_event2.png" alt=""></a>
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