<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: MY PAGE</title>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
</head>
<style>

/* 공통 */
html , body {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
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
div{
    box-sizing: border-box;
}

a {
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
  left: 580px;
  font-weight: 700;
  font-size: 100px;
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
  font-size: 100px;
}
.waviy span {
  position: relative;
  display: inline-block;
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

</style>
<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
    <img id="main-img-size" src="<c:url value='/resources/img/mypage/mypage_main_img.png'/>" height="600px" width="100%"/>
    <span id="mypage-community">
      <div class="waviy">
        <span style="--i:1">C</span>
        <span style="--i:2">o</span>
        <span style="--i:3">m</span>
        <span style="--i:4">m</span>
        <span style="--i:5">u</span>
        <span style="--i:6">n</span>
        <span style="--i:7">i</span>
        <span style="--i:8">t</span>
        <span style="--i:9">y</span>
       </div>
    </span>  

  <div class="main-box">
      <div id="header-bot">
      <br>
          <div class="navi">
            <ul>
            	<li><a>Profile</a></li>
            	<li><a>Point</a></li>
            	<li><a>My Mall</a></li>
            	<li><a>My Market</a></li>
            	<li><a>My Post</a></li>
            	<li><a>QnA</a></li>
            </ul>
          <!-- 
            <div id="none-left"></div>
            <div id="navi-profile">Profile</div>
            <div id="navi-point">Point</div>
            <div id="navi-myMall">My Mall</div>
            <div id="navi-myMarket">My Market</div>
            <div id="navi-myPost">My Post</div>
            <div id="navi-qna">QnA</div>
            <div id="none-right"></div>
             -->
            
          </div>
      </div>
      <br><br><br><br>
      <div class="main-content">
      	<div id="mypage-title">
      		My Post
      	</div>
  	  </div>
      	<br>
      	<div id="mypage-title-line"></div>
  </div>
    
  <%@ include file="../common/footer.jsp" %>
  
</div>

</body>
</html>