<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>YeSS :: FindPwd</title>
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
    width: 700px;
    margin: 10px auto;
    height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: row;
    gap: 20px;

  }
  .submit{
    width: 300px;
    height: 300px;
    border-radius: 20px;
    background-color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 20px;
  }

  .submit>i {
    font-size: 120px;
    color: #454545;
  }
  
  .submit>a{
    font-size: 30px;
    color: #454545;
  }
</style>
<body>
  <%@ include file="../common/header.jsp" %>
    <div class="wrap">
        <div class="login">
<%--             <div class="submit">
                <i class="fa-solid fa-phone"></i>
                <a href="${root}/member/pwdFindByPhone">번호로 찾기</a>
            </div> --%>
            <div class="submit">
              <i class="fa-solid fa-envelope"></i>
              <a href="${root}/member/pwdFindByEmail">메일로 찾기</a>
            </div>
        </div>
    </div>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>