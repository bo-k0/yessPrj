<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>YeSS :: MY PAGE</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  .search-field {
	margin-bottom: 100px;
	width: 440px;
	border-radius: 50px;
	border: 0px;
	background-color: #ACE8E5;
    margin-left: 60%;
}

.select {
	margin-left: 10px;
	font-size: 18px;
}

.col-lg-3 {
    padding: 100px;
}

.search-field>* {
	cursor: pointer;
	border: 0px;
	background-color: #ACE8E5;
	outline: none;
}

.search {
	width: 200px;
	height: 45px;
	cursor: text;
}
  .wrap {
    width: 100%;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(0, 0, 0, 0.1);
    background-image: url();
  }
  
  .login {
    width: 30%;
    height: 600px;
    background: white;
    border-radius: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
  }
  
  h2 {
    color: rgb(0, 0, 0);
    font-size: 1.8em;
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
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  	<form action= "${root}/mypage/pwCheck" method="post">
	    <div class="wrap">
	        <div class="login">
	            <h2>비밀번호를 입력해주세요.</h2>
              <input type="hidden" name="path" value="${path}">
	            <div class="login_pw">
	               <input type="password" name="cPwd" placeholder="비밀번호를 입력하세요">
	            </div>

	            <div class="submit">
	                <input type="submit" value="확인">
	            </div>

	        </div>
	    </div>
  	</form>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>