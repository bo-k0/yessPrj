<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: MY PAGE</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
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


#myComment{
	background-color: rgb(92, 154, 193);
	border: 0px;
	color: white;
	height: 28px;
  	width: 100px;
  	font-size: 15px;
  	margin-top: 10px;
  	margin-left: 20px;
  	font-weight: 500;
}

#myComment:hover{
	background-color: #ACE8E5;
	border: 0px;
	color: rgb(45,45,45);
	height: 28px;
  	width: 100px;
  	font-size: 15px;
  	margin-left: 20px;
  	font-weight: 500;
}

.list {
	grid-template-rows: 1.5fr repeat(5, 3fr);
/* 	place-items: center; */
	text-align: center;
}

.list > div {
	display: grid;
	height: 70px;
	grid-template-columns: 1fr 2fr 5fr 5fr 2fr;
	border-bottom: 1px solid #454545;
}

.list-top{
	margin-top : 30px;
}

.list-content {
	margin: auto;
}

.cmt-cnt{
	color : #5C9AC1;
	margin-bottom: 10px;
	font-weight: bold;
}

#paging{
	margin-top: 10px;
	height: 50px;
}

.finish {
	margin: 5px;
	width: 70px;
	height: 25px;
	background: #5C9AC1;
	box-shadow: 0px 2px 2 px rgba(0, 0, 0, 0.25);
}
.finish>a{
	color: #ffffff;
}

</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="mypage-banner">
        <p>My Page</p>
         <img src="${root}/resources/img/mypage/mypage_main_img.png"/>
    </div>
    <div class="body-warp">
        <div class="mypage-warp">
            <div class="mypage-category">
                <span><a id = "mypage-menu" href="${root}/mypage/main">Profile</a></span>
                <span><a id = "mypage-menu" href="${root}/mypage/point">Point</a></span>
                <span><a id = "mypage-menu" href="${root}/mypage/mymall">My Mall</a></span>
                <span><a id = "mypage-menu" href="${root}/mypage/market">My Market</a></span>
                <span><a id = "mypage-menu" href="${root}/mypage/myCommunity">My Community</a></span>
                <span><a id = "mypage-menu" href="${root}/mypage/qna">QnA</a></span>
            </div>
            <div class="mypage-content-box">
                <div class="mypage-title">
                    <p>YeSS Market 이용내역</p>
                </div>
                <div class="marketBtn">
					<a href="/yess/mypage/market"><input id="myComment" type="button" value="내가 쓴 글"></a>
                </div>
                
                <div class="list">
					<div class="list-top-div">
						<div class="list-top">번호</div>
						<div class="list-top">유형</div>
						<div class="list-top">제목</div>
						<div class="list-top">댓글내용</div>
						<div class="list-top">비밀댓글</div>
					</div>
						
					<c:forEach var="market" items="${voList}" begin="0" end="9" step="1">
					<div>
						<div class="list-content">
								<a href="${root}/market/detail?no=${market.no}">
									${ market.no }
								</a>
							</div>
							<div class="list-content">
								<c:if test="${market.tradeYn eq 'Y'}"> 
									<div class="finish">
										<a href="${root}/market/detail?no=${market.no}">거래완료</a>
									</div>
								 </c:if>
								<a href="${root}/market/detail?no=${market.no}"> 
									${ market.marketType } 
								</a>
							</div>
							
							<div class="list-content">
								
								<a href="${root}/market/detail?no=${market.no}">
									${ market.title } 
									<c:if test="${market.cmtCnt != 0}">
									<span class="cmt-cnt">&nbsp; [${market.cmtCnt}]</span>
									</c:if>
								</a>
							</div>
							
							<div class="list-content">
								<a href="${root}/market/detail?no=${market.no}">${ market.cmt }</a>
							</div>
							
							
							<div class="list-content">
								<a href="${root}/market/detail?no=${market.no}">${ market.secretYn }</a>
							</div>
					</div>
					</c:forEach>	
					
					<form id="searchForm">
					
					<div id="paging">
					    	<a><i class="fa-solid fa-chevron-left"></i></a>
					    	<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
					    		<a id="page-btn" href="${root}/mypage/market?p=${i}">${i}</a>
					    	</c:forEach>
					        <a><i class="fa-solid fa-chevron-right"></i></a>
			          </div>
					
					</form>				
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>