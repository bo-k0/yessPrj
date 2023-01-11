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
                    <p>회원정보</p>
                </div>
                <div class="mypage-form-wrap">
                    <div class="mypage-member-grade">
                        <div><img src="${root}/resources/img/grade/g${loginMember.gradeNo}.png"></div>
                        <p>지구수비대</p>
                    </div>
                    <form action="" method="post" class="mypage-member-edit" onsubmit="return checkAll();">
                        <div class="mypage-member-line">
                            <label for="">아이디</label><input name="id" readonly="readonly" required type="text" value="${loginMember.id}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">이름</label><input name="name" readonly="readonly" required type="text" value="${loginMember.name}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">닉네임</label><input name="nick" type="text" required value="${loginMember.nick}">
                            <div><button type="button" onclick="nickDoubleCheck()">중복확인</button></div>
                        </div>
                        <div id="checkNickResult" class="change-comment"></div>
                        <div class="mypage-member-line">
                            <label for="">전화번호</label><input name="phone" type="text" required value="${loginMember.phone}">
                            <div><button type="button" onclick="phoneDoubleCheck()">중복확인</button></div>
                        </div>
                        <div id="checkPhoneResult" class="change-comment"></div>
                        <div class="mypage-member-line">
                            <label for="">이메일</label><input name="email" type="text" required value="${loginMember.email}">
                            <div><button type="button" onclick="emailDoubleCheck()">중복확인</button></div>
                        </div>
                        <div id="checkEmailResult" class="change-comment"></div>
                        <div class="mypage-member-line">
                            <label for="">우편번호</label><input name="addr1" type="text" id="zonecode" required value="${loginMember.addr1}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">주소</label><input name="addr2" type="text" id="addr" required value="${loginMember.addr2}">
                            <div></div>
                        </div>
                        <div class="mypage-member-line">
                            <label for="">상세주소</label><input name="addr3" type="text" required value="${loginMember.addr3}">
                            <div></div>
                        </div>
                        <div class="mypage-submit-btn"><input type="submit" value="수정하기"></div>
                        <div class="mypage-delete-btn"><button type="button" onclick="removeMember();">탈퇴하기</button></div>
                    </form>
                    <script>
	                    window.onload = function(){
	                        document.getElementById("zonecode").addEventListener("click", function(){ //주소입력칸을 클릭하면
	                            new daum.Postcode({
	                                oncomplete: function(data) { //선택시 입력값 세팅
	                                	document.getElementById("zonecode").value = data.zonecode; //우편번호 넣기
	                                    document.getElementById("addr").value = data.address; // 주소 넣기
	                                    document.querySelector("input[name=addr3]").focus(); //상세입력 포커싱
	                                }
	                            }).open();
	                        });
	                    }
	                    function removeMember() {
	                    	if(window.confirm("탈퇴하시겠습니까? 탈퇴하시면 현재 사용중인 아이디, 닉네임을 다시 사용하지 못합니다.")){
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

                    //닉네임 키업이 되면 
                    $('input[name="nick"]').keyup(function(){

                    let nickCheckReturn = false;
                    let nickVal = $('input[name="nick"]').val();

                    if(oriNick == nickVal){
                        nickCheckReturn = true;
                        $('#checkNickResult').text('기존 닉네임입니다.');
                    }

                    const nickjung = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/; // 한글 숫자 영어 2-16

                    if(nickVal == ''){
                        $('#checkNickResult').text('닉네임을 입력해주세요');
                    }else if(!nickjung.test(nickVal)){
                        $('#checkNickResult').text('닉네임은 영소문자 한글 숫자 2 ~ 10글자 ');
                    }else{
                        $('#checkNickResult').text('닉네임을 중복검사를 진행해주세요');
                    }
                    })


                    //닉네임 중복 확인
                    function nickDoubleCheck(){
                    nickCheckReturn = false;
                    let nickVal = $('input[name="nick"]').val();
                    const nickjung = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/; // 한글 숫자 영어 2-16
                    console.log(nickVal);

                    if(oriNick == nickVal){
                        nickCheckReturn = true;
                        $('#checkNickResult').text('기존 닉네임입니다.');
                        return true;
                    }

                    if(nickVal == ""){
                        alert('먼저 닉네임을 입력해주시고 중복검사 진행해주세요');
                    }else if(!nickjung.test(nickVal)){
                    alert('형식에 맞춰 닉네임을 입력하신 후 중복검사를 진행해주세요')
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
                                $('#checkNickResult').text('사용가능한 닉네임입니다.');
                                nickCheckReturn = true;
                            }else{
                                $('#checkNickResult').text('중복으로 사용불가능한 별명입니다.');   
                            }

                        },
                        error : function(){
                            alert('에이잭스 에러!!!!!!!!!');
                        }

                        }) //ajax
                    }

                    }

                    //핸드폰번호는 번호만 입력되게 해놨다!
                    $('input[name="phone"]').keyup(function(){
                    phoneCheckReturn = false;

                    let phoneVal = $('input[name="phone"]').val();

                    if(oriPhone == phoneVal){
                        phoneCheckReturn = true;
                        $('#checkPhoneResult').text('기존 번호 입니다');
                    }

                    if(phoneVal == ''){
                        $('#checkPhoneResult').text('휴대전화 번호 11자리 입력해주세요');
                    }else if(12 <= phoneVal.length){
                        $('#checkPhoneResult').text('휴대전화 번호 11자리만 입력해주세요');
                    }else{
                        $('#checkPhoneResult').text('중복 체크 부탁드립니다.');
                    }

                    })

                    //핸드폰번호 에이젝스
                    function phoneDoubleCheck(){
                    phoneCheckReturn = false;
                    let phoneVal = $('input[name="phone"]').val();
                    console.log(phoneVal);
                    if(oriPhone == phoneVal){
                        phoneCheckReturn = true;
                        $('#checkPhoneResult').text('기존 번호 입니다');
                        return true;
                    }

                    if(phoneVal.length < 11 || 12 <= phoneVal.length ){

                    alert('휴대전화번호 형식에 맞추신 뒤 중복체크를 눌러주세요')
                    }else{
                    $.ajax({
                        url : root+"/member/phoneDoubleCheck",
                        type : "post",
                        data : {
                            "phone" : phoneVal
                        },
                        success : function(result){

                            if(result == 0){
                                $('#checkPhoneResult').text('사용가능한 번호 입니다.');
                                phoneCheckReturn = true;
                            }else{
                                $('#checkPhoneResult').text('이미 가입하신 회원입니다. 아이디 찾기를 이용해주세요'); 
                            }

                        },
                        error : function(){
                            alert('에이잭스 에러!!!!!!!!!');
                        }

                        }) //ajax
                    }
                    }

                    //이메일 인풋 키업하면 나온다.
                    $('input[name="email"]').keyup(function(){

                    emailCheckReturn = false;
                    let emailVal = $('input[name="email"]').val();
                    const emailjung = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/g;

                    if(oriEmail == emailVal){
                        emailCheckReturn = true;
                        $('#checkEmailResult').text('기존 이메일 입니다.');
                    }

                    if(emailjung == ''){
                        $('#checkEmailResult').text('이메일을 입력해주세요');
                    }else if(!emailVal.test(emailVal)){
                        $('#checkEmailResult').text('이메일 형식에 맞춰 입력해주세요');
                    }else{
                        $('#checkEmailResult').text('중복검사가 필요한 이메일입니다.');
                    }

                    })

                    //이메일 중복체크
                    function emailDoubleCheck(){
                    emailCheckReturn = false;
                    let emailVal = $('input[name="email"]').val();
                    const emailjung = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/g;

                        if(oriEmail == emailVal){
                            emailCheckReturn = true;
                            $('#checkEmailResult').text('기존 이메일 입니다.');
                            return true;
                        }

                        if(!emailjung.test(emailVal)) {
                            alert('먼저 이메일 형식을 확인해주세요')
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
                                        //성공했을 때 디자인 변경 및 조건 true로 만듬
                                        emailCheckReturn = true;
                                        $('#checkEmailResult').text('사용가능한 이메일 입니다.');
                                    }else{
                                        //실패시 디자인 적용
                                        $('#checkEmailResult').text('중복된 이메일입니다.');   
                                    }
                                },
                                error : function(){
                                alert('에이잭스 에러!!!!!!!!!');
                                }

                            }) //ajax
                            
                        }	//if끝

                    }//emailDoubleCheck

                        //온서브밋
                        function checkAll() {
                        
                        if(!nickCheckReturn){ alert('닉네임이 입력되지 않았습니다.'); return false;}
                        if(!phoneCheckReturn){ alert('휴대전화번호가 입력되지 않았습니다.') ;return false;}
                        if(!emailCheckReturn){ alert('이메일이 입력되지 않았습니다.') ;return false;}
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