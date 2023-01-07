<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/list.css">
<style>
* {
	color: #454545;
}

.mypage-banner{
    position: relative;
    width: auto;
    height: 600px;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
}
.mypage-banner>img{
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.mypage-banner>p{
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
    width: 800px;
    height: auto;
}
.mypage-title{
    border-bottom: 2px solid black;
    height: 100px;
    display: flex;
    align-items: center;
    font-size: 40px;
    font-weight: 600;
}
.mypage-title{
    padding-left: 20px;
}
.mypage-form-wrap{
    width: 800px;
    height: auto;
    display: grid;
    grid-template-columns: 1fr 3fr;
}

.marketBtn > *{
	margin-top: 20px;
	margin-right: 10px;
	border: 0px;
	width: 80px;
	height: 28px;
	background: #ACE8E5;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.25);
	cursor: pointer;
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


</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="mypage-banner">
        <p>My Page</p>
        <img src="${root}/resources/img/news/news.jpg"/>
    </div>
    <div class="body-warp">
        <div class="mypage-warp">
            <div class="mypage-category">
                <span><a href="${root}/mypage/pwCheck">Profile</a></span>
                <span>Point</span>
                <span>My Mall</span>
                <span><a href="${root}/mypage/market">My Market</a></span>
                <span>My Community</span>
                <span>QnA</span>
            </div>
            <div class="mypage-content-box">
                <div class="mypage-title">
                    <p>YeSS Market 이용내역</p>
                </div>
                <div class="marketBtn">
					<button>내가 쓴 글</button> <button>내가 쓴 댓글</button>
                </div>
                
                <div class="list">
					<div>
						<div class="list-top">번호</div>
						<div class="list-top">유형</div>
						<div class="list-top">제목</div>
						<div class="list-top">작성일자</div>
						<div class="list-top">조회수</div>
					</div>
						
					<c:forEach var="market" items="${voList}" begin="0" end="10" step="1">
					<div>
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
								
								<a href="${root}/admin/market/detail?no=${market.no}">
									${ market.title } 
									<c:if test="${market.cmtCnt != 0}">
									<span class="cmt-cnt">&nbsp; [${market.cmtCnt}]</span>
									</c:if>
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
            </div>
        </div>
    </div>

    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>