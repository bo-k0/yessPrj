<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
<title>회원가입</title>
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
    height: 180vh;
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
  .check_id{
    display: flex;
    flex-direction: row;
  }
  
  .join_id, .join_pw, .join_name, .join_phone, .join_nick, .join_address{
    margin-top: 20px;
    width: 80%;
  }
  
  .join_pw input, .join_name input, .join_nick input, .join_address input{
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
  }

  .join_id input{
    width: 75%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    outline: none;
  }

  .join_phone input{
    width: 30%;
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

  .submit input, .join_id .check_id #check_id{
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
  
  .join_id .check_id #check_id{
    width: 85%;
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
  	<form action= "${root}/member/join" method="post">
	    <div class="wrap">
	        <div class="join">
	            <h2>회원 가입</h2>
	            <div class="join_id">
	                <h4>아이디</h4>
	                <div class="check_id">
	                    <input type="text" name="" id="" placeholder="아이디(숫자, 영문, 특수문자 조합 최소 8자)"><i class="bi bi-person"></i>
	                    <span><button type="button" id="check_id">중복검사</button></span>
	                </div>
	            </div>
	            <div class="join_pw">
	                <h4>비밀번호</h4>
	                <input type="password" name="" id="" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)">
	            </div>
	            <div class="join_pw">
	                <h4>비밀번호 재확인</h4>
	                <input type="password" name="" id="" placeholder="비밀번호(숫자, 영문, 특수문자 조합 최소 8자)">
	            </div>
	            <div class="join_name">
	                <h4>이름</h4>
	                <input type="text" name="" id="" placeholder="이름 입력">
	            </div>
	            <div class="join_phone">
	                <h4>전화번호</h4>
	                <input type="tel" name="" id=""> -
	                <input type="tel" name="" id=""> -
	                <input type="tel" name="" id="">
	            </div>
	            <div class="join_nick">
	                <h4>닉네임</h4>
	                <input type="text" name="" id="" placeholder="닉네임 입력">
	            </div>
	            <div class="join_address">
	                <h4>주소</h4>
	                <input type="text" name="" id="" placeholder="우편번호">
	                <input type="text" name="" id="" placeholder="주소">
	                <input type="text" name="" id="" placeholder="상세주소">
	            </div>
	            <div class="submit">
	                <input type="submit" value="가입하기">
	            </div>
	        </div>
	    </div>
	</form>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>