<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS ADMIN MARKET</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

a, a:hover{
	color: #454545;
}

.main1 {
	width: auto;
	height: 600px;
	overflow: hidden;
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #454545;
}

.main1 > img {
	--position: absolute;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.main1 > p {
	position: absolute;
	font-size: 130px;
	font-weight: 700;
	text-align: center;
	line-height: 600px;
	color: #FFFFFF;
	text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.5);
	z-index: 5;
}

.main2 {
	--height: 1800px;
	display: grid;
	place-items: center;
}

.main2>* {
	width: 1200px;
}

.title {
	padding-top: 1px;
	font-size: 40px;
	font-weight: 600;
	border-bottom: 1px solid #454545;
	padding-bottom: 30px;
	position: relative;
}

a, a:hover{
	color: #454545;
	text-decoration: none;
}


.write-btn {
	font-size: 15px;
	bottom: 10px;
	right: 0;
	border: 0px;
	width: 100px;
	height: 32px;
	background: #454545;
	color: #ffffff;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	position: absolute;
}
.list > .hide{
	display: none;
}

.list {
	--height: 1280px;
	grid-template-rows: 1.5fr repeat(10, 3fr);
	place-items: center;
	text-align: center;
}

.list > div {
	display: grid;
	grid-template-columns: 1fr 1fr 2.5fr 4fr 1fr 1.5fr 1fr;
	border-bottom: 1px solid #454545;
}

.list-top {
	padding-top: 82px;
	margin-bottom: 5px;
}

.list-content {
	margin: auto;
}
.cmt-cnt{
	color : #5C9AC1;
	margin-bottom: 10px;
	font-weight: bold;
}
.finish {
	margin: 5px;
	width: 70px;
	height: 25px;
	background: #5C9AC1;
	box-shadow: 0px 2px 2 px rgba(0, 0, 0, 0.25);
}

.finish > a{
	color: #FFFFFF;
}

.list-content>div>img {
	display: block;
	width: 150px;
	height: 100px;
	margin: 5px;
}

.form-check {
	font-size: 15px;
	width: 200px;
	margin-left: 1120px;
}

.form-check>* {
	cursor: pointer;
}

.page {
	width: 200px;
	margin: auto;
}

.search-form{
	width: 400px;
}

.search-field {
	margin-bottom: 100px;
	width: 400px;
	border-radius: 50px;
	border: 0px;
	background-color: #454545;
}

.select {
	margin-left: 10px;
	font-size: 18px;
	color: #ffffff;
}
.select > *{
	color: #ffffff;
}

.search-field>* {
	cursor: pointer;
	border: 0px;
	background-color: #454545;
	outline: none;
}

.search {
	width: 260px;
	height: 45px;
	cursor: text;
}

.bi-search::before {
    content: "\f52a";
    color: #ffffff;
}

input[type=submit] > i{
	font-size: 20px;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="main">
		
    	<div class="main1">
        	<p>YeSS Market</p>
        </div>

		<div class="main2">
			<div class="title"><a href="${root}/admin/market/list">YeSS Market</a>
				<div><button class="write-btn" onclick="location.href='${root}/admin/market/write'">관리자 글작성</button></div>		
			</div>
					
			<div class="list">
				<div>
					<div class="list-top">번호</div>
					<div class="list-top">유형</div>
					<div class="list-top">사진</div>
					<div class="list-top">제목</div>
					<div class="list-top">작성자</div>
					<div class="list-top">작성일자</div>
					<div class="list-top">조회수</div>
				</div>
		
				<c:forEach var="market" items="${voList}" begin="0" end="10" step="1">
					<c:if test="${market.tradeYn eq 'N'}"></c:if>
					<div class="finish-list">
						<div class="list-content">
							<a href="${root}/admin/market/detail?no=${market.no}">
								${ market.no }
							</a>
						</div>
						<div class="list-content">
							<c:if test="${market.tradeYn eq 'Y'}"> 
								<div class="finish">
									<a href="${root}/admin/market/detail?no=${market.no}">거래완료</a>
								</div>
							 </c:if>
							<a href="${root}/admin/market/detail?no=${market.no}"> ${ market.marketType } </a>
						</div>
						<div class="list-content">
							<div>
							<img src="<c:url value='/resources/upload/market/${market.changeName}'/>" onerror="<c:url value='/resources/img/market/default_img.png'/>"></div>
						</div>
						
						<div class="list-content">
							
							<a href="${root}/admin/market/detail?no=${market.no}">
								${ market.title } 
								<c:if test="${market.cmtCnt != 0}">
								<span class="cmt-cnt">&nbsp; [${market.cmtCnt}]</span>
								</c:if>
							</a>
						</div>
						
						<div class="list-content">
						<a href="${root}/admin/market/detail?no=${market.no}">
						${ market.nick }
						</a>
						</div>
						
						<div class="list-content">
						<a href="${root}/admin/market/detail?no=${market.no}">
						${ market.enrollDate }
						</a>
						</div>
						
						<div class="list-content">${ market.hit }</div>
					</div>
				</c:forEach>
				
	    	</div>
	    	<form action="" method="get" id="searchForm">
	    	
	    	<input type="hidden" name="p" id="p">
			<c:if test="${map.tradeName != null}">
					<input type="hidden" name="tradeType" value="${map.tradeType}">
					<input type="hidden" name="tradeName" value="${map.tradeName}">
			</c:if>

		    <div class="page">
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
			
			<script>
				function chk_form(p) {
					document.getElementById("p").value = p;
						
					document.getElementById('searchForm').submit();
				}
			</script>
				
		
			<div class="form-check form-switch">
				<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" name="trade-check" value="1" onclick="chk()">
	         <label class="form-check-label" for="flexSwitchCheckChecked">거래완료 제외</label>
			</div>

		<script>	
		// 거래완료 제외
		function chk(){
			 const finish = document.querySelectorAll('.finish');

			 finish.forEach(target => {
				
				const as = target.closest('.finish-list');
				as.classList.toggle('hide');
			});	
		} 
		
		</script>

		
			<form action="" method="get" class="search-form">
		        <fieldset class="search-field">
		            <select class="select" name="tradeType">
		            	<option value="0">전체</option>
		                <option value="1">팔아요</option>
		                <option value="2">구해요</option>
		                <option value="3">나눠요</option>
		                <option value="4">바꿔요</option>
		            </select>
		            <input type="text" class="search" name="tradeName">
		            <button type="submit"><i class="bi bi-search bi"></i></button>
		        </fieldset>
	        </form>
    	</div>
    </div>    
	<%@ include file="../common/footer.jsp"%>
				
</body>
</html>