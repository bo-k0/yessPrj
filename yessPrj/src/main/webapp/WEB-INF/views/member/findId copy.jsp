<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<style>
  
  #gray{
    color: rgb(231, 231, 231);
  }
  
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
    height: 600px;
    background: white;
    border-radius: 20px;
    display: flex;
    align-items: center;
    flex-direction: column;

  }
  .login>form{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 0 10px;
  }
  
  h2 {
    color: rgb(0, 0, 0);
    font-size: 2em;
    background-color: white;   /*추가*/
  }
  .login_sns {
    padding: 20px;
    display: flex;
  }
  
  .login_sns li {
    padding: 0px 15px;
  }
  
  .login_id {
    margin-top: 20px;
    width: 80%;
  }
  
  .login_id input {
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
    background-color: white;  /*추가*/
    outline: none;
  }
  
  .login_pw {
    margin-top: 20px;
    width: 80%;
    background-color: white;  /*추가*/
  }
  
  .login_pw input {
    width: 100%;
    height: 50px;
    border-radius: 30px;
    margin-top: 10px;
    padding: 0px 20px;
    border: 1px solid lightgray;
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
  
  .submit {
    margin-top: 50px;
    width: 80%;
  }
  .submit input {
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
            <h2>아이디 찾기</h2>
            <br>
            <h4 id="gray">아이디 찾을 방법을 선택해주세요</h4>
            <br>
            <form>
                <h4 id="gray">회원정보에 등록한 휴대전화 번호와 입력한 휴대전화번호가 같아야, 인증번호를 받을 수 있습니다. </h4>
                    <div class="login_id">
                        <span>아이디</span>
                        <input type="text" name="" id="" placeholder="아이디를 입력하세요">
                    </div>
                    <div class="login_pw">
                        <input type="password" name="" id="" placeholder="휴대폰 번호를 입력하세요">
                    </div>
                    <div class="submit">
                        <input type="submit" value="로그인">
                    </div>
                    <div class="etc">
                        <a href="">아이디 찾기 |</a>
                        <a href="">비밀번호 찾기 |</a>
                        <a href="">회원가입</a>
                    </div>
            </form>
        </div>
        <div class="login">
          <h2>아이디 찾기</h2>
          <br>
          <h4 id="gray">아이디 찾을 방법을 선택해주세요</h4>
          <br>
          <form>
              <h4 id="gray">회원정보에 등록한 휴대전화 번호와 입력한 휴대전화번호가 같아야, 인증번호를 받을 수 있습니다. </h4>
                  <div class="login_id">
                      <span>아이디</span>
                      <input type="text" name="" id="" placeholder="아이디를 입력하세요">
                  </div>
                  <div class="login_pw">
                      <input type="password" name="" id="" placeholder="이메일 주소를 입력하세요">
                  </div>
                  <div class="submit">
                      <input type="submit" value="로그인">
                  </div>
                  <div class="etc">
                      <a href="">아이디 찾기 |</a>
                      <a href="">비밀번호 찾기 |</a>
                      <a href="">회원가입</a>
                  </div>
          </form>
      </div>
    </div>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>