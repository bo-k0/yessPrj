<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#loginBtn").click(function(){
			location.href='../member/byEmail.do';
		})
	})
</script>
<title>아이디 찾기</title>
</head>
<style>
  
  .wrap {
    width: 100%;
    height: 100vh;
    display: flex;
    align-items: center;
    flex-direction: row;
    justify-content: center;
    background: rgba(0, 0, 0, 0.1);
  }
  
  .login {
    width: 30%;
    height: 500px;
    background: white;
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: space-around;
    flex-direction: column;
  }

  .login>form{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 0 10px;
  }

  .submit {
    margin-top: 50px;
    width: 80%;
  }

  .submit>a>input {
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

  #goHome, #goFindPwd {
    margin-top: 30px;
  }

  #goHome {
    margin-bottom: 30px;
  }

</style>
<body>
  <%@ include file="../common/header.jsp" %>
    <div class="wrap">
        <div class="login">
			<div class="w3-center w3-large w3-margin-top">
				<h3>아이디 찾기 검색결과</h3>
        <br><br>
        <h4>${id}</h4>
			</div>
			<div class="submit">
        <a href="${root}/member/login"><input type="submit" value="로그인"></a>
        <a href="${root}/member/findPw"><input type="submit" id="goFindPwd" value="비밀번호 찾기"></a>
        <a href="${root}/main"><input type="submit" id="goHome" value="홈으로"></a>
			</div>
        </div>
    </div>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>