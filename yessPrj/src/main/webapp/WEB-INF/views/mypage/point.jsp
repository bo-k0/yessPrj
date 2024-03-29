<%@page import="com.kh.yess.community.page.PageVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: MY PAGE</title>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<c:set var = "root" value = "${pageContext.request.contextPath}"/>  
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

</head>
<style>

/* 공통 */
html , body {
  background-color: rgb(245, 245, 245);
}
.main-box{
  width: 1200px;
  background-color: white;
  --background-color: rgb(245, 245, 245);
  margin: auto;
  height: 1420px;
  margin-top: -1%
}
.mypage-warp a{
color : black;
  text-decoration: none;
}
#header-bot{
  width: 1335px;
  height: 40px;
  display: flex;
  justify-content: center;
}

.navi-home{
 color: white;
}
.navi{
  width: 1000px;
  height: 100%;
  --background-color: rgb(92, 154, 193);
  color: rgb(45,45,45);
  font-size: 1.3rem;
  display: grid;
  grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr;
  text-align: center;
  border: 1px solid red;
  margin-top: 1%;
}
.navi > div{
  width: 100%;
  height: 100%;
  display: flex; 			  /* 가운데 정렬 */
  justify-content: center; /* 가운데 정렬 */
  align-items: center;
  font-size: 22px;
  font-weight: 500;
}
.navi>div:hover{
	color: rgb(92, 154, 193);
}


#navi-profile>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}

#navi-point>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}
#navi-myMall>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}
#navi-myMarket>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}
#navi-myPost>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}
#navi-qna>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}

#mypage-community{
  width: 100%;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 340px;
  left: 720px;
  font-weight: 700;
  font-size: 130px;
  opacity: 1;
  text-align: left;
}

.main-content{
  display: flex;
  --justify-content: space-evenly;
}

.waviy{
  position: relative;
  -webkit-box-reflect: below -20px linear-gradient(transparent, rgba(0,0,0,.2));
  font-size: 120px;
  display: flex;
  margin: auto;
  flex-direction: row;
  gap: 30px;
  text-shadow:4px 4px 4px rgb(0 0 0 / 50%);
}
.waviy span {
  position: relative;
  color: #fff;
  --text-transform: uppercase;
  animation: waviy 1.5s infinite;
  animation-delay: calc(.1s * var(--i));
}
@keyframes waviy {
  0%,40%,100% {
    transform: translateY(0)
  }
  20% {
    transform: translateY(-20px)
  }
}

#mypage-title{
	font-size: 26px;
	margin-left: 17%;
	font-weight: 700;
	color: rgb(45, 45, 45);
}

#mypage-title-line{
	border-bottom: 2px solid black;
	width: 820px;
	margin: auto;
}

.navi ul li{
	list-style: none;
	display: inline-block;
	padding: 8px 12px;
	position: relative;
}

.navi ul li::after{
    content: '';
    width: 0%;
    height: 2px;
    background-color: rgb(92, 154, 193);
    display: block;
    margin: auto;
    transition: 0.5s;
}
.navi ul li:hover::after{
	width: 100%;
}
#navi > ul{
  --width: 100%;
  height: 100%;
  display: flex; 			  /* 가운데 정렬 */
  justify-content: center; /* 가운데 정렬 */
  align-items: center;
  font-size: 22px;
  font-weight: 500;
}
.navi>li:hover{
	color: rgb(92, 154, 193);
}

ul{
	margin: auto;
}

ul>li{
	--margin-left: 60px;
}
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
    --gap: 50px;
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
  padding: 0 20px;
  display: flex;
  flex-direction: column;
  height: auto;
}
.mypage-title>p{
  font-size: 30px;
  font-weight: 600;
}
.mypage-title>div{
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
}
.mypage-title>div>p{
  font-size: 17px;
  font-weight: 600;
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
    padding: 50px 80px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 40px
}
.mypage-member-edit>div{
    width: 100%;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
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

.second-box {
  width: 1070px;
  height: 1000px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  left: 470px;
  border: 2px solid lightgrey;
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
}
#first-box-title, #second-box-title, #third-box-title {
  text-align: left;
  margin-top: 2%;
  margin-left: 5%;
  font-size: 24px;
}
#second-box-content-title {
  text-align: left;
  font-size: 15px;
  text-align: center;
  font-weight: 700;
}

#second-box-title-line, #third-box-title-line{
  border-top: solid black 2px;
  width: 90%;
  height: 10px;
  margin: auto;
}
#second-box-content {
  width: 90%;
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 2fr 2fr;
  --grid-template-rows: repeat(12 , 45px);
  align-content: center;
  text-align: left;
}

#second-box-content>div{
  width: 100%;
  border-bottom: 1px solid black;
  text-align: center;
  margin-top: 10px;
}
#second-box-title-line{
  border-top: solid black 2px;
  width: 80%;
  height: 0px;
  margin: auto;
}

#second-box-content{
	height: 100%;
	width: 800px;
  border-top: 2px solid black;
}



.mypage-title-bottom-line{
	border-bottom: 2px solid rgb(45,45,45);
}

#myComment{
	background-color: rgb(92, 154, 193);
	border: 0px;
	color: white;
	height: 27px;
  	width: 100px;
  	border-radius: 10%;
  	font-size: 15px;
  	margin-bottom: 30px;
  	margin-left: 20px;
  	font-weight: 500;
}

#myComment:hover{
	background-color: #ACE8E5;
	border: 0px;
	color: rgb(45,45,45);
	height: 27px;
  	width: 100px;
  	border-radius: 10%;
  	font-size: 15px;
  	margin-bottom: 30px;
  	margin-left: 20px;
  	font-weight: 500;
}
#title-atag, #page-btn{
	color: rgb(45,45,45)
}
#member{
	text-decoration: none;
	font-size: 20px;
    font-weight: 600;
    color: rgb(45,45,45)
}

</style>
<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
    <img id="main-img-size" src="<c:url value='/resources/img/mypage/mypage_main_img.png'/>" height="600px" width="100%"/>
    <span id="mypage-community">
      <div class="waviy">
        <span style="--i:1">P</span>
        <span style="--i:2">O</span>
        <span style="--i:3">I</span>
        <span style="--i:4">N</span>
        <span style="--i:5">T</span>
      </div>
    </span>  

  <div class="body-warp">
        <div class="mypage-warp">
			<%@ include file="list.jsp" %>
            <div class="mypage-content-box">
                <div class="mypage-title">
                    <p>포인트 조회</p>
                </div>
                <div class="mypage-form-wrap">
                    <div class="mypage-member-grade">
                        <div id="second-box-content">
                          <div id="second-box-content-title">포인트</div>
                          <div id="second-box-content-title">적립 구분</div>
                          <div id="second-box-content-title">적립 날짜</div>
			              	  <c:forEach items="${list}" var="list" step="1">
                          <c:choose>
                            <c:when test="${list.pointPlaceNo == 3}"><div class="minusPoint" style="color:red;">-${list.point}</div></c:when>
                            <c:otherwise><div class="plusPoint" style="color:blue;">+${list.point}</div></c:otherwise>
                          </c:choose>	
                          <div>${list.place}</div>
                          <div>${list.timeReport}</div>	              
							        </c:forEach>
			            </div>
                    </div>
                </div>
            </div>
            <br><br><br>
        </div>
    </div>
  </div>

    <%@ include file="../common/footer.jsp" %>
</body>
</html>