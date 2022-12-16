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
    height: 600px;
}
.main>div:nth-child(1){
    height: 500px;
    display: flex;
    justify-content: center;
    align-items: center;
}
#okimg{
    height: 300px;
    width: 300px;
}
.main>div:nth-child(2){
    font-size: 20px;
    font-weight: 700;
    text-align: center;

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
</style>
<body>
    <%@ include file="../common/header.jsp" %>
    <div class="head">
        <span>YeSS Mall</span>
       <img class="headimg" src="../resources/img/mall/image 71.png">
    </div>

    <div class="container">
        <div class="mall top">
            <div>결제완료</div>
        </div>

        <div class="mall main">
            <div><img src="../resources/img/mall/image 113.png" id="okimg"></div>
            <div>결제가 정상적으로 처리되었습니다.</div>
        </div>

        <div class="bttn-area">
            <div id="bttn">메인으로</div>
            <div id="bttn">주문상세</div>
        </div>
        
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>