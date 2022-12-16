<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: #454545;
}

/**몰 헤더 사진**/
.head{
    height: 600px;
    width: auto;
    overflow: hidden;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
}
.headimg{
    width: 100%;
    background-size: cover;
}
.head>span{
    font-size: 100px;
    font-weight: 700;
    position: absolute;
    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.8);
    color:white;
}

/**주문확인**/
.mall{
    width: 1200px;
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

#list-top,#list-bottom,.orderpay{
    border-top: 3px solid #ACE8E5;
    border-bottom: 3px solid #ACE8E5;
}
#list-top,#a{
    color: #0096C6;
    font-weight: 600;
}

.cartlist{
    text-align: center;
    display: grid;
	grid-template-columns: 6fr 2fr 2fr 1fr;
    align-content: center;
}
#list, #list-top{
    height: 50px;
}
#list-bottom{
    height: 190px;
    line-height: 35px;
}

#b{
    font-size: 12px;
    font-weight: 50;
}
.q{
    text-align: end;
}

/**배송정보**/
.orderaddr{
    border-bottom: 3px solid #ACE8E5;
    height: 150px;
    line-height: 50px;
}
.addr{
    display: grid;
    grid-template-columns: 2fr 10fr;
    height: 30px;
}
.orderaddr>div:nth-child(1){
    font-weight: 600;
}
.addr>div:nth-child(2){
    text-align: left;
}

/**주문버튼**/
.bttn{
    height: 100px;
    display: flex;
    align-items: center;
    justify-content: center;
}
#order-bttn{
    background-color: #ACE8E5;
    height: 30px;
    line-height: 30px;
    width: 100px ;
    text-align: center;
    box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
}
</style>
<body>
    <%@ include file="../common/header.jsp" %>
    <div class="head">
        <span>YeSS Mall</span>
        <img class="headimg" src="../resources/img/mall/image 71.png">
    </div>

    <div class="container">
        <div class="mall top">
            <div>주문상세</div>
        </div>

        <div class="mall main">
            <div class="cartlist" id="list-top">
                <div>제품</div>
                <div>수량</div>
                <div>금액</div>
            </div>
            
            <div class="cartlist" id="list">
                <div>제품</div>
                <div>수량</div>
                <div>금액</div>
            </div>
            <div class="cartlist" id="list">
                <div>제품</div>
                <div>수량</div>
                <div>금액</div>
            </div>

            <div id="list-bottom">
                <div class="cartlist">
                    <div></div>
                    <div id="a">주문금액</div>
                    <div> 주문금액 원</div>
                </div>
                <div class="cartlist">
                    <div></div>
                    <div id="a">배송비</div>
                    <div> 3000 원</div>
                </div>
                <div class="cartlist">
                    <div></div>
                    <div id="a">사용 포인트</div>
                    <div>사용포인트 원</div>
                </div>
                <div class="cartlist">
                    <div></div>
                    <div id="a">총금액</div>
                    <div>주문금액-포인트+배송비</div>
                </div>
            </div>
            <div class="orderaddr">
                <div class="addr">배송정보</div>
                <div class="addr">
                    <div id="a">수령인</div>
                    <div> 수령인 </div>
                </div>
                <div class="addr">
                    <div id="a">연락처</div>
                    <div> 연락처 </div>
                </div>
                <div class="addr">
                    <div id="a">주소</div>
                    <div> 주소 </div>
                </div>
            </div>
            
        </div>
        
        <div class="bttn">
            <div id="order-bttn">뒤로</div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>