<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alertMsg = (String)request.getAttribute("alertMsg");
%>
<!-- Jquery -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- address API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  
  a {
    text-decoration: none;
    color: rgb(122, 119, 116);
  }
  
  .wrap {
    width: 100%;
    height: 200vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.1);
  }
  
  .join {
    width: 30%;
    height: 600px;
    /* background: white; */
    border-radius: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  
  h2 {
    color: rgb(0, 0, 0);
    font-size: 2em;
  }
  .check_id, .check_nick, .check_email, .check_phone{
    display: flex;
    flex-direction: row;
  }
  
  .join_id, .join_pw, .join_name, .join_phone, .join_nick, .join_address, .join_email{
    margin-top: 20px;
    width: 80%;
  }
  
  .join_pw input, .join_name input, .join_nick input, .join_address input, .join_email input, .join_phone input{
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
  }

  .join_id input, .join_phone input, .join_email input, .join_nick input{
    width: 70%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
  }
  
  .join_etc {
    padding: 10px;
    width: 80%;
    font-size: 14px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: bold;
  }
  
  .submit, .join_id .check_id #check_id{
    margin-top: 50px;
    width: 80%;
  }

  .submit input, .join_id .check_id #check_id, .join_nick .check_nick #check_nick, .join_email .check_email #check_email, .join_phone .check_phone #check_phone{
    width: 100%;
    height: 50px;
    border: 0;
    outline: none;
    border-radius: 40px;
    background: linear-gradient(to left, #0096C6, #88DED9);
    color: white;
    font-size: 1.2em;
    letter-spacing: 2px;
  }

  .join_id .check_id #check_id{
    margin-top: 50px;
    width: 80%;
  }
  
  .join_id .check_id #check_id, .join_nick .check_nick #check_nick, .join_email .check_email #check_email, .join_phone .check_phone #check_phone{
    width: 90%;
    /* height: px; */
    margin: 10px 0px 0px 20px;
    border: 0;
    outline: none;
    border-radius: 40px;
    background: linear-gradient(to left, #0096C6, #88DED9);
    color: white;
    font-size: 1.2em;
    letter-spacing: 2px;
  }
</style>
<body>
  <%@ include file="../common/header.jsp" %>
  	<form action= "${root}/member/join" method="post" onsubmit="return checkAll();">
	    <div class="wrap">
	        <div class="join">
	            <h2>회원 가입</h2>
	            <div class="join_id">
	                <h4>아이디</h4>
	                <div class="check_id">
	                    <input type="text" name="id" placeholder="숫자, 영문 조합 6~12자"><i class="bi bi-person"></i>
	                    <span><button type="button" id="check_id" onclick=idDoubleCheck();>중복검사</button></span>
	                </div>
	                <div id="checkIdResult" class="span2 result"></div>
	            </div>
	            <div class="join_pw">
	                <h4>비밀번호</h4>
	                <input type="password" name="pwd" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)">
	                <div id="checkPwd1Result"></div>
	            </div>
	            <div class="join_pw">
	                <h4>비밀번호 재확인</h4>
	                <input type="password" name="pwd2" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)">
	                <div id="checkPwdResult2"></div>
	            </div>
	            <div class="join_name">
	                <h4>이름</h4>
	                <input type="text" name="name" placeholder="이름 ">
	            </div>
        	    <div class="join_nick">
	                <h4>닉네임</h4>
	                <div class="check_nick">
	                    <input type="text" name="nick" placeholder="닉네임"><i class="bi bi-person"></i>
	                    <span><button type="button" id="check_nick" onclick=nickDoubleCheck();>중복검사</button></span>
	                </div>
	                <div id="checkNickResult" class="span2 result"></div>
	            </div>
	            <div class="join_phone">
	                <h4>전화번호</h4>
	                <div class="check_phone">
	                    <input type="text" name="phone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" placeholder="전화번호 11자리"><i class="bi bi-person"></i>
	                    <span><button type="button" id="check_phone" onclick=phoneDoubleCheck();>중복검사</button></span>
	                </div>
	                <div id="checkPhoneResult" class="span2 result"></div>
	            </div>
	            <div class="join_email">
	                <h4>이메일</h4>
	                <div class="check_email">
	                    <input type="email" name="email" placeholder=" 이메일 ~~~@~~~.~~~ "><i class="bi bi-person"></i>
	                    <span><button type="button" id="check_email" onclick=emailDoubleCheck();>중복검사</button></span>
	                </div>
	                <div id="checkEmailResult" class="span2 result"></div>
	            </div>	            
	            <div class="join_address">
	                <h4>주소</h4>
	                <input type="text" name="addr1" id="zonecode" placeholder="우편번호">
	                <input type="text" name="addr2" id="addr" placeholder="주소">
	                <input type="text" name="addr3" placeholder="상세주소">
	                <div id="checkAddr3Result" class="span2 result"></div>
	            </div>
	            <div class="submit">
	                <input type="submit" value="가입하기">
	            </div>
	        </div>
	    </div>
	</form>
<script>
    window.onload = function(){
        document.getElementById("zonecode").addEventListener("click", function(){ 	//주소입력칸을 클릭하면
            //카카오 지도 발생
            new daum.Postcode({
                oncomplete: function(data) { 										//선택시 입력값 세팅
                	document.getElementById("zonecode").value = data.zonecode; 		//우편번호 넣기
                    document.getElementById("addr").value = data.address; 			// 주소 넣기
                    document.querySelector("input[name=addr3]").focus(); 			//상세입력 포커싱
                }
            }).open();
        });
    }

    //온 서브밋을 위한 변수
    let idCheckReturn = false;
    let pwd1CheckReturn = false;
    let pwd2CheckReturn = false;
    let nickCheckReturn = false;
    let phoneCheckReturn = false;
    let emailCheckReturn = false;
    let addr3CheckReturn = false;
    
   //아이디 인풋 키업
    $('input[name="id"]').keyup(function(){

        idCheckReturn = false;
        let idVal = $('input[name="id"]').val();
        const idjung = /^[a-z]+[a-z0-9]{5,11}$/g;
        
        if(idVal == ''){
            $('#checkIdResult').text('아이디를 입력해주세요');
        }else if(!idjung.test(idVal)){
            $('#checkIdResult').text('아이디는 6 ~ 12 영 + 숫 으로 부탁드립니다. ');
        }else{
            $('#checkIdResult').text('중복검사가 필요한 아이디 입니다.');
        }
    })
    
    //아이디 에이잭스
    function idDoubleCheck(){
        let idVal = $('input[name="id"]').val();
        const root = "${pageContext.request.contextPath}";
        const idjung = /^[a-z]+[a-z0-9]{5,11}$/g;
        if(!idjung.test(idVal)) {
            alert('먼저 아이디 형식을 확인해주세요')
        }else{
            $.ajax({
	            url : root+"/member/idDoubleCheck",
	            type : "post",
	            data : {
	                "id" : idVal
	            		},
	            dataType : "json",
	            success : function(result){
					console.log(result);
	                if(result == 0){
						//성공했을 때 디자인 변경 및 조건 true로 만듬
	                    idCheckReturn = true;
	                    $('#checkIdResult').text('사용가능한 아이디입니다.');
	                }else{
	                	//실패시 디자인 적용
	                    $('#checkIdResult').text('중복된 아이디입니다.');
	                }
	            },
	            error : function(){
	               alert('실패~ 코드다시보세요');
	            }
        	})
        }
    }//idDoubleCheck
    
    //비밀번호 키업
    $('input[name="pwd"]').keyup(function(){
        
        pwd1CheckReturn = false;
        const pwdjung = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/; // 8 - 16 영 문 특 1개씩
        let pwd1Val = $('input[name="pwd"]').val();

        $('#checkPwd1Result').addClass('red');
       
        if(pwd1Val == ''){
            $('#checkPwd1Result').text('비밀번호를 입력해주세요');
        }else if(!pwdjung.test(pwd1Val)){
            $('#checkPwd1Result').text('영문자 + 숫자 + 특수문자 8 ~ 16글자 부탁드립니다.');
        }else{
            $('#checkPwd1Result').text('');
            pwd1CheckReturn = true;
        }

    })
    
    //패스워드 확인
    $('input[name="pwd2"]').keyup(function(){

        pwd2CheckReturn = false;
        pwd1Val = $('input[name="pwd"]').val();
        let pwd2Val = $('input[name="pwd2"]').val();
  
        console.log(pwd1Val == pwd2Val);
        $('#checkPwdResult2').addClass('red');
       
        if(pwd2Val != pwd1Val){
            $('#checkPwdResult2').text('비밀번호가 일치하지 않습니다.');
        }else{
            $('#checkPwdResult2').text('위의 비밀번호와 일치합니다');
            pwd2CheckReturn = true;
        }
    })
    
    //닉네임 키업
    $('input[name="nick"]').keyup(function(){

        nickCheckReturn = false;
        let nickVal = $('input[name="nick"]').val();
        const nickjung = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/; //한글 숫자 영어 2-16

        if(nickVal == ''){
            $('#checkNickResult').text('닉네임을 입력해주세요');
        }else if(!nickjung.test(nickVal)){
            $('#checkNickResult').text('닉네임은 영소문자 한글 숫자 2 ~ 10글자 ');
        }else{
            $('#checkNickResult').text('닉네임을 중복검사를 진행해주세요');
        }
    })
    
    //닉네임 중복확인
    function nickDoubleCheck(){

        let nickVal = $('input[name="nick"]').val();
        const nickjung = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/; //한글 숫자 영어 2-16
        console.log(nickVal);
        
        if(nickVal == ""){
            alert('먼저 닉네임을 입력해주시고 중복검사 진행해주세요');
        }else if(!nickjung.test(nickVal)){
           alert('형식에 맞춰 닉네임을 입력하신 후 중복검사를 진행해주세요')
        }
        else{
            $.ajax({
	            url : "/yess/member/nickDoubleCheck",
	            type : "post",
	            data : {
	                "nick" : nickVal
	            },
	            success : function(result){
	
	                if(result ==0){
	                    $('#nickCheckBtn').addClass('green'); // 성공하면 중복체크 초록으로 바꾸세용~
	                    $('#nickCheckBtn').removeClass('yellow');
	                    $('#checkNickResult').text('사용가능한 닉네임입니다.');
	                    $('#checkNickResult').addClass('green');
	                    $('#checkNickResult').removeClass('red');
	                    nickCheckReturn = true;
	                }else{
	                    $('#checkNickResult').text('중복으로 사용불가능한 별명입니다.');   
	                    $('#nickCheckBtn').addClass('red');
	                    $('#nickCheckBtn').removeClass('yellow');
	                    $('#nickCheckBtn').removeClass('green');
	                }
	            },
	            error : function(){
	                alert('에이잭스 에러!!!!!!!!!');
	            }
            }) //ajax
        }
    }

    //핸드폰번호는 번호 입력가능
    $('input[name="phone"]').keyup(function(){
        let phoneCheckReturn = false;

        let phoneVal = $('input[name="phone"]').val();

        $('#checkPhoneResult').addClass('red');
        
        if(phoneVal == ''){
            $('#checkPhoneResult').text('휴대전화 번호 11자리 입력해주세요');
        } else if(12 <= phoneVal.length){
            $('#checkPhoneResult').text('휴대전화 번호 11자리만 입력해주세요');
        }else{
            $('#checkPhoneResult').text('중복 체크 부탁드립니다.');
        }

    })

    //핸드폰번호 에이젝스
    function phoneDoubleCheck(){
        let phoneVal = $('input[name="phone"]').val();
        console.log(phoneVal);
        if(phoneVal.length < 11 || 12 <= phoneVal.length ){

        alert('휴대전화번호 형식에 맞추신 뒤 중복체크를 눌러주세요')
        }else{
        $.ajax({
            url : "/yess/member/phoneDoubleCheck",
            type : "post",
            data : {
                "phone" : phoneVal
            },
            success : function(result){

                if(result == 0){
                    $('#phoneCheckBtn').addClass('green'); // 성공하면 중복체크 초록으로 바꾸세용~
                    $('#phoneCheckBtn').removeClass('yellow');
                    $('#checkPhoneResult').text('사용가능한 번호 입니다.');
                    $('#checkPhoneResult').addClass('green');
                    $('#checkPhoneResult').removeClass('red');
                    phoneCheckReturn = true;
                }else{
                    $('#checkPhoneResult').text('이미 가입하신 회원입니다. 아이디 찾기를 이용해주세요'); //말해주고 아이디찾기로 보낼까?   
                    $('#phoneCheckBtn').addClass('red');
                    $('#phoneCheckBtn').removeClass('yellow');
                    $('#phoneCheckBtn').removeClass('green');
                }

            },
            error : function(){
                alert('에이잭스 에러!!!!!!!!!');
            }
    
            }) //ajax
    	}
    }
   
   //이메일 인풋 키업
    $('input[name="email"]').keyup(function(){

        emailCheckReturn = false;
        let emailVal = $('input[name="email"]').val();
        const emailjung = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/g;
        
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
        let emailVal = $('input[name="email"]').val();
        const root = "${pageContext.request.contextPath}";
        const emailjung = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/g;
        
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
	                    $('#idCheckBtn').addClass('red');
	                    $('#idCheckBtn').removeClass('yellow');
	                    $('#idCheckBtn').removeClass('green');
	                }
	            },
	            error : function(){
	               alert('에이잭스 에러!!!!!!!!!');
	            }
        	}) //ajax
        }	//if
    }//emailDoubleCheck

    //상세주소 인풋 키업
 	$('input[name="addr3"]').keyup(function(){
	    addr3CheckReturn = false;
	    let addr3Val = $('input[name="addr3"]').val();
	    console.log(addr3Val);
	    if(addr3Val != ''){
	        $('#checkAddr3Result').text('');           
	    	addr3CheckReturn = true;
	    }else{
	        $('#checkAddr3Result').text('상세주소를 입력해주세요');
	    }
	})
    

	
    //온서브밋
    function checkAll() {
        if(!idCheckReturn){ alert('아이디가 입력되지않았습니다'); return false;}
        if(!pwd1CheckReturn){ alert('비밀번호가 입력되지않았습니다.'); return false;}
        if(!pwd2CheckReturn){ alert('비밀번호 확인이 입력되지않았습니다'); return false;}
        if(!nickCheckReturn){ alert('닉네임이 입력되지 않았습니다.'); return false;}
        if(!phoneCheckReturn){ alert('휴대전화번호가 입력되지 않았습니다.') ;return false;}
        if(!emailCheckReturn){ alert('이메일이 입력되지 않았습니다.') ;return false;}
        if(!addr3CheckReturn){ alert('상세주소가 입력되지 않았습니다.') ;return false;}
        return true;
    }
    
</script>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>