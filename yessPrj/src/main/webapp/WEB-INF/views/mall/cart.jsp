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
/**/
.mall{
    width: 1500px;
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

#list-top,#list-bottom{
    border-top: 3px solid #ACE8E5;
    border-bottom: 3px solid #ACE8E5;
    font-weight: 600;
}
#list-top,#a{
    color: #0096C6;
}

.cartlist{
    text-align: center;
    display: grid;
	grid-template-columns: 1fr 5fr 4fr 3fr;
    height: 50px;
    align-content: center;
}
#list-bottom{
    height: 130px;
    line-height: 35px;
}

#b{
    font-size: 12px;
    font-weight: 50;
}

.bttn{
    height: 100px;
    display: flex;
    align-items: center;
    justify-content: center;
}
#bottom-bttn{
    background-color: #ACE8E5;
    height: 30px;
    line-height: 30px;
    width: 100px ;
    text-align: center;
}
</style>
<body>
    <%@ include file="../common/header.jsp" %>
    <div class="head">
        <span>YeSS Mall</span>
       <img class="headimg" src="/webapp/resources/img/mall/image 71.png">
    </div>

    <div class="container">
        <div class="mall top">
            <div>Cart</div>
        </div>

        <div class="mall main">
            <div class="cartlist" id="list-top">
                <div><input id="all" type="checkbox" onchange="cookCheckAll()"><label for="all"></label></div>
                <div>제품</div>
                <div>수량</div>
                <div>금액</div>
            </div>
            
            <div class="cartlist" id="list">
                <div><input type="checkbox" name="check" value="${cartItem.prodNo}" onchange="cookCheckOne()"></div>
                <div>${제품명}</div>
                <div>${수량}</div>
                <div>${가격}</div>
            </div>
            <div class="cartlist" id="list">
                <div><input type="checkbox" name="check" value="${cartItem.prodNo}" onchange="cookCheckOne()"></div>
                <div>${제품명}</div>
                <div>${수량}</div>
                <div>${가격}</div>
            </div>

            <div class="cartlist" id="list-bottom">
                <div id="b">전체삭제</div>
                <div></div>
                <div id="a">
                    <div>주문금액</div>
                    <div>배송비</div>
                </div>
                <div>
                    <div> ${주문금액} 원</div>
                    <div> 3000 원</div>
                    <div id="b">구매금액 50000원 이상 무료배송</div>
                </div>
                
            </div>
            
        </div>
        
        <div class="bttn">
            <div id="bottom-bttn">주문</div>
        </div>
    </div>
    푸터~~
</body>
</html>