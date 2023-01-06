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

/**완료안내**/
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
    height: 700px;
}
/* #notice{
    height: 400px;
} */
#notice>div:nth-child(1){
    font-size: 25px;
    font-weight: 600;
    height: 200px;
    line-height: 200px;
}
#notice>div:nth-child(2){
    color: #0096C6;
    height: 100px;
    line-height: 50px;
    border-bottom: 3px solid #ACE8E5;
}
#notice-bottom{
    height: 200px;
    font-size: 17px;
}
#notice-bottom>div{
    display: grid;
    grid-template-columns: 1fr 2fr;
    gap: 10px;
    height: 50px;
    line-height: 50px;
    font
}

#notice-bottom>div>div:nth-child(1){
    text-align: right;
    font-weight: 600;
    color: #0096C6;
}
#notice-bottom>div>div:nth-child(2){
    text-align: left;
}
.a{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 200px;
}
#a{
    width: 600px;
    text-align: left;
}

/**버튼**/
.bttn-area{
    height: 100px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 100px;
}
#bttn{
    background-color: #ACE8E5;
    height: 40px;
    line-height: 40px;
    width: 150px ;
    text-align: center;
    box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
}
#bttn:hover{
    background-color: #0096C6;
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
            <div>무통장입금</div>
        </div>

        <div class="mall main">
            <div id="notice">
                <div>입금 완료시 결제가 완료됩니다.</div>
                <div>* 입금 기한 내에 입금이 정상적으로 이루어지지 않으면 주문 전체가 자동 취소되오니 유의해 주시기 바랍니다..</div>
            </div>
            <div id="notice-bottom">
                <br>
                <div>
                    <div>입금금액</div>
                    <div> 금액 원</div>
                </div>
                <div>
                    <div>신한은행</div>
                    <div>110 - 330 - 123456</div>
                </div>
                <div>
                    <div>입금기한</div>
                    <div>3일 이내 ( 날짜 24:00 까지 )</div>
                </div>
                <div>
                    <div>입금자명</div>
                    <div>주문자명과 동일</div>
                </div>
            </div>
            <div class="a">

                <div id="a">
                    무통장입금(가상계좌)로 입금한 경우, 약 10분 이내로 입금내역이 확인됩니다.
                    <br>
                    입금 내역이 확인되면 결제가 완료됩니다.
                    <br>
                    주문자명과 동일하지 않은 명의로 입금시 문의 필수.
                </div>
            </div>
        </div>

        <div class="bttn-area">
            <div id="bttn">주문상세</div>
            <div id="bttn"><a href="/yess/mall/list">메인으로</a></div>
        </div>
        
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>