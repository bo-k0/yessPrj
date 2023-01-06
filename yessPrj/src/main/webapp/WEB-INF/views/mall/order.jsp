<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MALL</title>
</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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
    font-weight: 200;
}
.q{
    text-align: end;
}
.cartlist>div>input[type=text]{
    width: 100px;
    border: 1px solid #0096C6;
    border-radius: 10px;
    padding: 1px;
    padding-left: 10px;
    padding-right: 10px;
    text-align: right;
}
#point-bttn{
    width: 70px ;
    text-align: center;
    background-color: #ACE8E5;
    border-radius: 10px;
    font-size: 12px;
    box-shadow: 1px 1px 1px rgba(44, 44, 44, 0.8);
}

/**배송정보**/
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
.addr>div>input[type=text]{
    width: 500px;
    border: 1px solid #0096C6;
    border-radius: 10px;
    padding: 1px;
    padding-left: 10px;
    padding-right: 10px;

}

/**결제방법**/
.orderpay{
    height: 200px;
    align-items: center;
    line-height: 80px;
}
.pay{
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 100px;
}
#pay-bttn{
    width: 150px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    background-color: #ACE8E5;
    box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
    border-radius: 20px;
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
            <div>Order</div>
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
                    <div class="q" id="a">보유 포인트 원</div>
                    <div id="a">사용 포인트</div>
                    <div><input type="text" name="usePoint"> 원</div>
                    <div id="point-bttn">전액사용</div>
                </div>
                <div class="cartlist">
                    <div></div>
                    <div id="a">총금액</div>
                    <div>주문금액-포인트+배송비</div>
                </div>
                <div class="cartlist">
                    <div></div><div></div>
                    <div id="b">구매금액의 5% 적립</div>
                </div>
            </div>
            <div class="orderaddr">
                <div class="addr">배송정보</div>
                <div class="addr">
                    <div id="a">수령인</div>
                    <div> <input type="text" name="name" value="db정보"> </div>
                </div>
                <div class="addr">
                    <div id="a">연락처</div>
                    <div> <input type="text" name="phone" value="db정보"> </div>
                </div>
                <div class="addr">
                    <div id="a">주소</div>
                    <div> <input type="text" name="address" value="db정보"> </div>
                </div>
            </div>
            <div class="orderpay">
                <div id="a">결제수단</div>
                <div class="pay">
                    <div id="pay-bttn">무통장입금</div>
                    <div id="pay-bttn">카드결제</div>
                    <div id="pay-bttn">kakao pay</div>
                </div>
            </div>
        </div>
        
        <div class="bttn">
            <div id="order-bttn">주문</div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>