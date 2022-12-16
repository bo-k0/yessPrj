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
	grid-template-columns: 1fr 4fr 1fr 1fr;
    align-content: center;
    border-top: 1px solid #ACE8E5;
    height: 50px;
    line-height: 50px;
}
#list, #list-top{
    height: 50px;
}

/**주문버튼**/
.bttn{
    height: 100px;
    display: flex;
    align-items: center;
    justify-content: center;
}
#bttn{
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
            <div>주문내역</div>
        </div>

        <div class="mall main">
            <div class="cartlist" id="list-top">
                <div>주문일자</div>
                <div>주문상품</div>
                <div>주문현황</div>
                <div></div>
            </div>
            
            <div class="cartlist" id="list">
                <div>주문일자</div>
                <div>주문상품</div>
                <div>주문현황</div>
                <div>
                    리뷰작성<br>
                    구매취소
                </div>
            </div>
            <div class="cartlist" id="list">
                <div>주문일자</div>
                <div>주문상품</div>
                <div>주문현황</div>
                <div>
                    리뷰작성<br>
                    구매취소
                </div>
            </div>

            
            
        </div>
        
        <div class="bttn">
            <div id="bttn">뒤로</div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>