<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/list.css">
<style>
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
.mypage-member-grade{
    display: flex;
    flex-direction: column;
    align-items: center;
}
.mypage-member-grade>div{
    margin-top: 30px;
    margin-bottom: 20px;
    width: 100px;
    height: 100px;
    border: 1px solid #B7B7B7;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.mypage-member-grade>div>img{
    width: 80%;
    height: 80%;

}
.mypage-member-grade>p{
    width: 150px;
    height: 60px;
    border-bottom: 1px solid #B7B7B7;
    font-weight: 600;
    font-size: 25px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.mypage-member-edit{
    position: relative;
    padding: 50px 0 50px 80px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}
.mypage-member-line{
    width: 100%;
    display: grid;
    grid-template-columns: 3fr 5fr 1fr;
    justify-content: space-between;
    margin-bottom: 10px;
    font-weight: 600;
    font-size: 20px;
}
.mypage-member-line>input{
    width: 250px;
    height: 40px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233, 233, 233);
}
.mypage-submit-btn{
    width: 100%;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 10px;
    font-weight: 600;
    font-size: 20px;
    height: 100px;
}
.mypage-submit-btn>input{
    border: 0;
    border-radius: 15px;
    font-size: 20px;
    font-weight: 600;
    color: white;
    background-color: #0096C6;
    width: 150px;
    height: 40px;
}
.mypage-category > span > a{
	text-decoration: none;
	color: black;	
}
.change-comment{
    width: 100%;
    padding-left: 180px;
    color: #adadad;
    font-size: 14px;
    display: flex;
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
			<%@ include file="list.jsp" %>
            <div class="mypage-content-box">
            
                <div class="mypage-title">
                    <p>????????????</p>
                </div>
                <div class="mypage-form-wrap">
                    <div class="mypage-member-grade">
                        <div><img src="${root}/resources/img/grade/g${loginMember.gradeNo}.png"></div>
                        <p>???????????????</p>
                    </div>
                    <form action="" method="post" class="mypage-member-edit" onsubmit="return checkAll();">
                        <input type="hidden" name="id" value="${loginMember.id}">
                        <div class="mypage-member-line">
                            <label for="">????????????</label><input name="pwd" type="password">
                            <div></div>
                        </div>
                        <div id="checkPwd1Result"></div>
                        <div class="mypage-member-line">
                            <label for="">???????????? ??????</label><input name="pwd2" type="password">
                            <div></div>
                        </div>
                        <div id="checkPwdResult2"></div>
                        <div class="mypage-submit-btn"><input type="submit" value="????????????"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>

    <script>
    //???????????? ???????????? ?????????
    //???????????? ????????? ??????
    let pwd1CheckReturn = false;
    let pwd2CheckReturn = false;

    $('input[name="pwd"]').keyup(function(){
        
        pwd1CheckReturn = false;
        const pwdjung = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/; // 8 - 16 ??? ??? ??? 1??????
        let pwd1Val = $('input[name="pwd"]').val();

        if(pwd1Val == ''){
            $('#checkPwd1Result').text('??????????????? ??????????????????');
        }else if(!pwdjung.test(pwd1Val)){
            $('#checkPwd1Result').text('????????? + ?????? + ???????????? 8 ~ 16?????? ??????????????????.');
        }else{
            $('#checkPwd1Result').text('');
            pwd1CheckReturn = true;
        }

    })//???????????? ???????????????
    
    //???????????? ??????2
    $('input[name="pwd2"]').keyup(function(){

        pwd2CheckReturn = false;
        pwd1Val = $('input[name="pwd"]').val();
        let pwd2Val = $('input[name="pwd2"]').val();

        console.log(pwd1Val == pwd2Val);
    
        if(pwd2Val != pwd1Val){
            $('#checkPwdResult2').text('??????????????? ???????????? ????????????.');
        }else{
            $('#checkPwdResult2').text('?????? ??????????????? ???????????????');
            pwd2CheckReturn = true;
            
        }

    })

    function checkAll(){
        if(!pwd1CheckReturn){ alert('??????????????? ???????????????????????????.'); return false;}
        if(!pwd2CheckReturn){ alert('??????????????? ???????????? ????????????.'); return false;}
        return true;
    }
    </script>
    
</body>
</html>