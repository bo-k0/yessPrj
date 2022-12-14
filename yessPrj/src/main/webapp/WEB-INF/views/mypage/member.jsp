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
<!-- address API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
    grid-template-columns: 3fr 5fr 2fr;
    align-items: center;
    margin-top: 10px;
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
    cursor: pointer;
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
.mypage-member-line button{
    width: 65px;
    height: 30px;
    font-size: 15px;
    font-weight: 500;
    cursor: pointer;
    color: white;
    border: 0;
    cursor: pointer;
    background-color: #0096C6;
    border-radius: 15px;
}
.mypage-delete-btn{
    width: 100%;
    display: flex;
    flex-direction: row;
    justify-content: end;

}
.mypage-delete-btn>button{
    background-color: #ff5050;
    font-size: 15px;
    font-weight: 500;
    cursor: pointer;
    color: white;
    width: 80px;
    height: 30px;
    border: 0;
    border-radius: 15px;
    cursor: pointer;
    border: 1px solid var(--border);
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
                        <div class="mypage-member-line">
                            <label for="">?????????</label><input name="id" readonly="readonly" required type="text" value="${loginMember.id}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">??????</label><input name="name" readonly="readonly" required type="text" value="${loginMember.name}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">?????????</label><input name="nick" type="text" required value="${loginMember.nick}">
                            <div><button type="button" onclick="nickDoubleCheck()">????????????</button></div>
                        </div>
                        <div id="checkNickResult" class="change-comment"></div>
                        <div class="mypage-member-line">
                            <label for="">????????????</label><input name="phone" type="text" required value="${loginMember.phone}">
                            <div><button type="button" onclick="phoneDoubleCheck()">????????????</button></div>
                        </div>
                        <div id="checkPhoneResult" class="change-comment"></div>
                        <div class="mypage-member-line">
                            <label for="">?????????</label><input name="email" type="text" required value="${loginMember.email}">
                            <div><button type="button" onclick="emailDoubleCheck()">????????????</button></div>
                        </div>
                        <div id="checkEmailResult" class="change-comment"></div>
                        <div class="mypage-member-line">
                            <label for="">????????????</label><input name="addr1" type="text" id="zonecode" required value="${loginMember.addr1}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">??????</label><input name="addr2" type="text" id="addr" required value="${loginMember.addr2}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">????????????</label><input name="addr3" type="text" required value="${loginMember.addr3}">
                            <div></div>
                        </div>
                        <div class="mypage-submit-btn"><input type="submit" value="????????????"></div>
                        <div class="mypage-delete-btn"><button type="button" onclick="removeMember();">????????????</button></div>
                    </form>
                    <script>
	                    window.onload = function(){
	                        document.getElementById("zonecode").addEventListener("click", function(){ //?????????????????? ????????????
	                            new daum.Postcode({
	                                oncomplete: function(data) { //????????? ????????? ??????
	                                	document.getElementById("zonecode").value = data.zonecode; //???????????? ??????
	                                    document.getElementById("addr").value = data.address; // ?????? ??????
	                                    document.querySelector("input[name=addr3]").focus(); //???????????? ?????????
	                                }
	                            }).open();
	                        });
	                    }
	                    function removeMember() {
	                    	if(window.confirm("????????????????????????? ??????????????? ?????? ???????????? ?????????, ???????????? ?????? ???????????? ????????????.")){
	                    	    location.href="${root}/member/remove";
	                    	}
	                    }
                    </script>
                    
                    <script>

                    let nickCheckReturn = true;
                    let phoneCheckReturn = true;
                    let emailCheckReturn = true;   

                    const oriNick = "${loginMember.nick}";
                    const oriPhone = "${loginMember.phone}";
                    const oriEmail = "${loginMember.email}";

                    const root = "${pageContext.request.contextPath}";

                    //????????? ????????? ?????? 
                    $('input[name="nick"]').keyup(function(){

                    let nickCheckReturn = false;
                    let nickVal = $('input[name="nick"]').val();

                    if(oriNick == nickVal){
                        nickCheckReturn = true;
                        $('#checkNickResult').text('?????? ??????????????????.');
                    }

                    const nickjung = /^(?=.*[a-z0-9???-???])[a-z0-9???-???]{2,10}$/; // ?????? ?????? ?????? 2-16

                    if(nickVal == ''){
                        $('#checkNickResult').text('???????????? ??????????????????');
                    }else if(!nickjung.test(nickVal)){
                        $('#checkNickResult').text('???????????? ???????????? ?????? ?????? 2 ~ 10?????? ');
                    }else{
                        $('#checkNickResult').text('???????????? ??????????????? ??????????????????');
                    }
                    })


                    //????????? ?????? ??????
                    function nickDoubleCheck(){
                    nickCheckReturn = false;
                    let nickVal = $('input[name="nick"]').val();
                    const nickjung = /^(?=.*[a-z0-9???-???])[a-z0-9???-???]{2,10}$/; // ?????? ?????? ?????? 2-16
                    console.log(nickVal);

                    if(oriNick == nickVal){
                        nickCheckReturn = true;
                        $('#checkNickResult').text('?????? ??????????????????.');
                        return true;
                    }

                    if(nickVal == ""){
                        alert('?????? ???????????? ?????????????????? ???????????? ??????????????????');
                    }else if(!nickjung.test(nickVal)){
                    alert('????????? ?????? ???????????? ???????????? ??? ??????????????? ??????????????????')
                    }
                    else{
                        $.ajax({
                        url : root+"/member/nickDoubleCheck",
                        type : "post",
                        data : {
                            "nick" : nickVal
                        },
                        success : function(result){

                            if(result ==0){
                                $('#checkNickResult').text('??????????????? ??????????????????.');
                                nickCheckReturn = true;
                            }else{
                                $('#checkNickResult').text('???????????? ?????????????????? ???????????????.');   
                            }

                        },
                        error : function(){
                            alert('???????????? ??????!!!!!!!!!');
                        }

                        }) //ajax
                    }

                    }

                    //?????????????????? ????????? ???????????? ?????????!
                    $('input[name="phone"]').keyup(function(){
                    phoneCheckReturn = false;

                    let phoneVal = $('input[name="phone"]').val();

                    if(oriPhone == phoneVal){
                        phoneCheckReturn = true;
                        $('#checkPhoneResult').text('?????? ?????? ?????????');
                    }

                    if(phoneVal == ''){
                        $('#checkPhoneResult').text('???????????? ?????? 11?????? ??????????????????');
                    }else if(12 <= phoneVal.length){
                        $('#checkPhoneResult').text('???????????? ?????? 11????????? ??????????????????');
                    }else{
                        $('#checkPhoneResult').text('?????? ?????? ??????????????????.');
                    }

                    })

                    //??????????????? ????????????
                    function phoneDoubleCheck(){
                    phoneCheckReturn = false;
                    let phoneVal = $('input[name="phone"]').val();
                    console.log(phoneVal);
                    if(oriPhone == phoneVal){
                        phoneCheckReturn = true;
                        $('#checkPhoneResult').text('?????? ?????? ?????????');
                        return true;
                    }

                    if(phoneVal.length < 11 || 12 <= phoneVal.length ){

                    alert('?????????????????? ????????? ????????? ??? ??????????????? ???????????????')
                    }else{
                    $.ajax({
                        url : root+"/member/phoneDoubleCheck",
                        type : "post",
                        data : {
                            "phone" : phoneVal
                        },
                        success : function(result){

                            if(result == 0){
                                $('#checkPhoneResult').text('??????????????? ?????? ?????????.');
                                phoneCheckReturn = true;
                            }else{
                                $('#checkPhoneResult').text('?????? ???????????? ???????????????. ????????? ????????? ??????????????????'); 
                            }

                        },
                        error : function(){
                            alert('???????????? ??????!!!!!!!!!');
                        }

                        }) //ajax
                    }
                    }

                    //????????? ?????? ???????????? ?????????.
                    $('input[name="email"]').keyup(function(){

                    emailCheckReturn = false;
                    let emailVal = $('input[name="email"]').val();
                    const emailjung = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/g;

                    if(oriEmail == emailVal){
                        emailCheckReturn = true;
                        $('#checkEmailResult').text('?????? ????????? ?????????.');
                    }

                    if(emailjung == ''){
                        $('#checkEmailResult').text('???????????? ??????????????????');
                    }else if(!emailVal.test(emailVal)){
                        $('#checkEmailResult').text('????????? ????????? ?????? ??????????????????');
                    }else{
                        $('#checkEmailResult').text('??????????????? ????????? ??????????????????.');
                    }

                    })

                    //????????? ????????????
                    function emailDoubleCheck(){
                    emailCheckReturn = false;
                    let emailVal = $('input[name="email"]').val();
                    const emailjung = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/g;

                        if(oriEmail == emailVal){
                            emailCheckReturn = true;
                            $('#checkEmailResult').text('?????? ????????? ?????????.');
                            return true;
                        }

                        if(!emailjung.test(emailVal)) {
                            alert('?????? ????????? ????????? ??????????????????')
                        }else{
                            $.ajax({
                                url : root+"/member/emailDoubleCheck",
                                type : "post",
                                data : {
                                    "email" : emailVal
                                        },
                                dataType : "json",
                                success : function(result){
                                    console.log(result);
                                    if(result == 0){
                                        //???????????? ??? ????????? ?????? ??? ?????? true??? ??????
                                        emailCheckReturn = true;
                                        $('#checkEmailResult').text('??????????????? ????????? ?????????.');
                                    }else{
                                        //????????? ????????? ??????
                                        $('#checkEmailResult').text('????????? ??????????????????.');   
                                    }
                                },
                                error : function(){
                                alert('???????????? ??????!!!!!!!!!');
                                }

                            }) //ajax
                            
                        }	//if???

                    }//emailDoubleCheck

                        //????????????
                        function checkAll() {
                        
                        if(!nickCheckReturn){ alert('???????????? ???????????? ???????????????.'); return false;}
                        if(!phoneCheckReturn){ alert('????????????????????? ???????????? ???????????????.') ;return false;}
                        if(!emailCheckReturn){ alert('???????????? ???????????? ???????????????.') ;return false;}
                        return true;

                    }//checkAll
                    </script>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>