<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <c:set var = "root" value = "${pageContext.request.contextPath}"/>
    <link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<title>YeSS :: FindId</title>
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
  .login_notice{
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    gap: 20px;
    font-size: 40px;
    color: #454545;
  }
  .login_input {
    margin-top: 20px;
    width: 100%;
  }
  
  .login_input>input {
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    background-color: white;  /*추가*/
    outline: none;
  }
  
  .login_etc {
    padding: 10px;
    width: 80%;
    font-size: 14px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: bold;
  }
  .login span{
    padding-left: 20px;
  }
  .login>form>p{
    margin-top: 20px;
    color: #5d5d5d;
    font-size: 12px;
  }
  .submit {
    margin-top: 50px;
    width: 80%;
  }
  .submit>input {
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
</style>
<body>
  <%@ include file="../common/header.jsp" %>
    <div class="wrap">
        <div class="login">
            <div class="login_notice">
                <i class="fa-solid fa-envelope"></i>
                <p>메일로 찾기</p>
            </div>
            <form action="${root}/member/idFindByEmail" method="post">             
                <div class="login_input">
                    <span>Email</span>
                    <input type="text" name="email" id="email" required placeholder="이메일 주소를 입력하세요">
                </div>
                <p>회원정보에 등록한 이메일 주소와 입력한 이메일주소가 같아야, <br>아이디를 찾을 수 있습니다. </p>
                <div class="submit">
                    <input type="submit" value="아이디 찾기">
                </div>
            </form>
        </div>
    </div>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>