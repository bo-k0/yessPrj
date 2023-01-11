<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
</head>
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

/**주문확인**/
.mall{
    width: 800px;
    margin: auto;
    text-align: center;
}
.top{
    font-weight: 600;
    font-size: 40px;
    line-height: 40px;
    color: rgb(41, 41, 41);
    height: 150px;
    line-height: 150px;
}

.main{
    border-top: 3px solid #ACE8E5;
    border-bottom: 3px solid #ACE8E5;
}
#list-top{
    color: #0096C6;
    font-weight: 600;
    border-bottom: 3px solid #ACE8E5;
}

.cartlist{
    text-align: center;
    display: grid;
	grid-template-columns: 2fr 1fr 1fr 1fr 2fr 1fr;
    align-content: center;
    border-top: 1px solid #ACE8E5;
    height: 50px;
    line-height: 50px;
}
#list, #list-top{
    height: 50px;
}

#list> :nth-child(5){
    font-size: 13px;
}

#writeRv{
	width: 70px ;
	height: 20px;
	border-radius: 10px;
	background-color: #ACE8E5;
	box-shadow: 1px 1px 1px rgba(44, 44, 44, 0.8);
	margin: auto;
	line-height: 20px;
}

#list>:nth-child(1):hover{
	text-decoration: underline;
}
#writeRv:hover{
    background-color: #0096C6;
}
</style>
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
                <span><a href="${root}/mypage/myCommunity">My Community</a></span>
                <span>QnA</span>
            </div>
            
            
	        <div class="mall top">
	            <div>주문내역</div>
	        </div>

	        <div class="mall main">
	            <div class="cartlist" id="list-top">
	                <div>주문상품</div>
	                <div>주문수량</div>
	                <div>주문금액</div>
	                <div>주문현황</div>
	                <div>주문일자</div>
	            </div>
	            
	            <c:forEach var="orderList" items="${orderList}" step="1">
		            <div class="cartlist" id="list">
		                <div><a href="/yess/mall/detail?no=${orderList.prodNo }">${orderList.prodName }</a></div>
		                <div>${orderList.cnt }</div>
		                <div>${orderList.prodPrice }</div>
		                <div>결제완료</div>
		                <div>${orderList.payDate}</div>
		                <div id="writeRv"><a href="/yess/mall/reviewwrite?no=${orderList.prodNo }">리뷰작성</a></div>
		            </div>
	            </c:forEach>

	
	            
	            
	        </div>
	        
	        <div class="page">
				<c:if test="${pv.startPage != 1}">
					<a href="#" onclick="return chk_form('1')"><i class="fa-solid fa-angles-left"></i></a>
					<a href="#" onclick="return chk_form('${pv.startPage-1}')"><i class="fa-solid fa-angle-left"></i></a>
				</c:if>
				<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
					<c:choose>
						<c:when test="${pv.currentPage == i}"><a id="currentPage">${i}</a></c:when>
						<c:otherwise><a href="${root }/mypage/mymall?p=${i}" onclick="return chk_form('${i}')">${i}</a></c:otherwise>
					</c:choose>	
				</c:forEach>
				<c:if test="${pv.endPage != pv.maxPage}">
					<a href="#" onclick="return chk_form('${pv.endPage+1}')"><i class="fa-solid fa-angle-right"></i></a>
					<a href="#" onclick="return chk_form('${pv.maxPage}')"><i class="fa-solid fa-angles-right"></i></a>
				</c:if>
			</div>
        
        <br><br><br>
        </div>
        
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>