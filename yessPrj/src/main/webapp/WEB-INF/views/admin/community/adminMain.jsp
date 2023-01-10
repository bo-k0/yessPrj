<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: ADMIN</title>
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
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

.main-box{
  width: 1200px;
  background-color: white;
  --background-color: rgb(245, 245, 245);
  margin: auto;
  height: 1470px;
}
div{
    box-sizing: border-box;
}

a {
  text-decoration: none;
  color: white;
}
#main-img{
  width: 100%;
  height: 600px;
  margin:auto;
  background-color: #454545;
  position: relative;
}
#header-top{
  width: 100%;
  height: 80%;
  display: grid;
  grid-template-columns: 2fr 5fr 2fr; /* 2:5:2 비율 */
}
#header-bot{
  width: 111%;
  height: 40px;
}

#navi-home{
	color: white;
}

#logo-box{
  width: 100%;
  height: 100%;
}
#logo-box, #member-box{
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}
#member-box{
  flex-direction: column;
}
#navi{
  width: 90%;
  height: 100%;
  background-color: rgb(92, 154, 193);
  color: white;
  font-size: 1.3rem;
  display: grid;
  --grid-template-columns: repeat(5 , 1fr); /* 1fr 4번 반복 */
  grid-template-columns: 2fr 1fr 1fr 1fr 1fr 1fr 1fr;
}
#navi-home>a:hover,#navi-info>a:hover,#navi-qna>a:hover,#navi-chat>a:hover{
	color: rgb(201, 240, 238);
}
#navi > div{
  width: 100%;
  height: 100%;
  display: flex; 			  /* 가운데 정렬 */
  justify-content: center; /* 가운데 정렬 */
  align-items: center;
  font-size: 24px;
  font-weight: 500;
}

#navi-home>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
  color: white;
}

#navi-info>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
  color: white;
}
#navi-qna>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
  color: white;
}
#navi-chat>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
  color: white;
}
#navi-photo>a{
  text-align: right;
  margin: 0 auto;
  padding: 0;
  color: white;
}

#community-community{
  width: 100%;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 250px;
  left: 560px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 80px;
  opacity: 1;
  text-align: left;
  text-shadow: 4px 4px 4px rgb(0 0 0 / 50%);
}

.main-content{
  display: flex;
  --justify-content: space-evenly;
}

.second-box {
  width: 1000px;
  height: 370px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  --left: 470px;
  top: 1050px;
  border: 2px solid lightgrey;
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
  margin-left: 200px;
}
#first-box-title, #second-box-title, #third-box-title {
  text-align: left;
  margin-top: 1%;
  margin-left: 5%;
  font-size: 24px;
  height: 50px;
}
#second-box-title > div{
  height: 100%;
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
  grid-template-columns: 1fr 1.5fr 6fr 1fr 1.5fr 1fr;
  grid-template-rows: repeat(6 , 40px);
  align-content: center;
  text-align: left;
}

#second-box-content>div{
  width: 100%;
  border-bottom: 1px solid black;
  text-align: center;
  margin-top: 10px;
}
#first-box-title-line{
  border-top: solid black 2px;
  width: 90%;
  height: 0px;
  margin: auto;
}
#none-left{
  width: 150%;
}
#navi-info{
  background-color: rgb(92, 154, 193);
}

#top-hashtag{
  width: 170px;
  height: 360px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
  --margin-left: 2.7%;
  border: 2px solid rgba(250, 128, 114, 0.7);
}
#second-box-title-line{
  border-top: solid black 2px;
  width: 80%;
  height: 0px;
  margin: auto;
}

#top-hashtag-title{
  font-size: 20px;
  text-align: center;
  margin-top: 2%;
  margin-bottom: 5%;
}

#top-hashtag-list {
    background-color: rgb(245, 245, 245);
    width: 70%;
    margin-left: 15%;
    border-radius: 15%;
    height: 30px;
    line-height: 30px;
    text-align: center;
}

#paging{
  width: 100%;
  text-align: center;
  font-size: 18px;
}

#search-type{
  width: 20%;
  background-color: rgb(245, 245, 245);
  height: 30px;
  font-size: 22px;
  margin-left: 40%;
  border-radius: 20%;
}

#search-type>img{
  position: absolute;
  left: 690px;
}
.first-box {
  width: 1000px;
  height: 250px;
  background: rgba(255,255,255,1);
  opacity: 1;
  --position: absolute;
  --top: 475px;
  left: 470px;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
  border: 2px solid lightgrey;
  --border: 2px solid rgb(201, 240, 238);
  margin-left: 200px;
}

#first-box-title-line{
  border-top: solid black 2px;
  width: 90%;
  height: 0px;
  margin: auto;
}
#top-hit{
  height: 65%;
  width: 26%;
  float: left;
  margin: 1px 55px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(245, 245, 245);
  border-radius: 5%;
}
#top-like{
  height: 65%;
  width: 26%;
  float: left;
  margin: 1px 55px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(201, 240, 238);
  border-radius: 5%;
}
#top-comment{
  height: 65%;
  width: 26%;
  float: left;
  margin: 1px 55px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(245, 245, 245);
  border-radius: 5%;
}

#first-box-top-list{
  height: 87%;
  width: 100%;
  margin-left: 5%;
}
#top-hit-title, #top-like-title, #top-comment-title{
  font-size: 15px;
  margin-top: 7px;
  margin-left: 20px;
  color: rgba(69, 69, 69, 0.7);
  --color: rgb(69, 69, 69);
  font-weight: 700;
}

#top-hit-content, #top-like-content, #top-comment-content{
  font-size: 20px;
  margin-top: 20px;
  margin-left: 20px;
  color: black;
  font-weight: 700;
}

#top-hit-writer, #top-like-writer, #top-comment-writer{
  font-size: 15px;
  margin-top: 22px;
  margin-left: 20px;
  color: black;
  font-weight: 500;
}
#first-box-content-title{
  font-size: 16px;
  font-weight: 700;
}
.third-box {
  width: 1000px;
  height: 590px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  top: 1450px;
  --left: 470px;
  border: 2px solid lightgrey;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
  margin-left: 200px;
}
#third-box-content>img{
  margin-left: 2%;
  margin-right: 0.5%;
}
#third-box-content{
  margin-top: 0.5%;
  margin-left: 3%;
}
#main-best-arrow, #main-info-arrow, #main-photo-arrow{
	margin-left: 920px;
}
#main-paging{
  width: 100%;
  margin: auto;
  text-align: center;
}
#main-top-btn, #main-info-btn, #main-photo-btn{
  margin-left: 72%;
  background-color: rgb(92, 154, 193);
  border: 0px;
  color: white;
  height: 25px;
  width: 50px;
  border-radius: 10%;
  font-size: 15px;
}
#top-hashtag-title2{
   text-transform: uppercase;
  background-image: linear-gradient(
    -225deg,
    #231557 0%,
    #44107a 29%,
    #ff1361 67%,
    #fff800 100%
  );
  background-size: auto auto;
  background-clip: border-box;
  background-size: 200% auto;
  color: #fff;
  background-clip: text;
  text-fill-color: transparent;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: textclip 2s linear infinite;
  display: inline-block;
  font-size: 20px;
  font-weight: 700;  
  margin-top: 7%
}

@keyframes textclip {
  to {
    background-position: 200% center;
  }
}

.waviy{
  position: relative;
  -webkit-box-reflect: below -40px linear-gradient(transparent, rgba(0,0,0,.2));
  font-size: 130px;
  font-weight: 700;
  letter-spacing: -7px;
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

#loginUser{
	border: 2px solid rgb(92, 154, 193);
	height: 300px;
	box-shadow: 0px 4px 4px rgb(0 0 0 / 25%)
}
#main-top-btn:hover{
  background-color: rgb(201, 240, 238);
  color: rgb(45, 45, 45);
}
#current-loginMember{
	margin-left: 13%;
	margin-top: 5%;
	font-weight: 500;
	font-size: 17px;
}
#myId{
	color: salmon;
	font-size: smaller;
}
#title-atag, #page-btn{
	color: rgb(45, 45, 45);
}
#top-hit-content-aTag{
	color: rgb(45, 45, 45);
}

#main-img-size{
    background-color: rgb(60, 60, 60);
}
#banner{
	opacity: 0.9;	
}
.banner_text{
	position: absolute;
	top: 480px;
	left: 10px;
}
.banner_text2{
	position: absolute;
	top: 715px;
	left: 10px;
}
.banner_text3{
	position: absolute;
	top: 855px;
	left: 35px;
}
.banner_text4{
	position: absolute;
	top: 910px;
	left: 35px;
}
#banner-bttn{
	background-color: rgb(92, 154, 193);
	color: white;
	border: 0px;
    border-radius: 10%;
    height: 30px;
    width: 150px;
}
#banner-bttn:hover{
	background-color: #ACE8E5;
	color: rgb(45,45,45);
	border: 0px;
    border-radius: 10%;
    height: 30px;
    width: 150px;
}
#banner-bttn2{
	background-color: rgb(92, 154, 193);
	color: white;
	border: 0px;
    border-radius: 10%;
    height: 20px;
    width: 100px;
}
#banner-bttn2:hover{
	background-color: #ACE8E5;
	color: rgb(45,45,45);
	border: 0px;
    border-radius: 10%;
    height: 20px;
    width: 100px;
}
</style>
<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
    <span id="community-community">
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
  </div>
  <div class="main-box">
      <div id="header-bot">
          <div id="navi">
              <div id="none-left"></div>
              <div id="navi-home"><a href="/yess/admin/community/adminMain">HOME</a></div>
              <div id="navi-info"><a href="/yess/admin/community/adminInfo">정보 게시판</a></div>
              <div id="navi-qna"><a href="/yess/admin/community/adminQna">문의 게시판</a></div>
              <div id="navi-chat"><a href="/yess/admin/community/adminChat">잡담 게시판</a></div>
              <div id="navi-photo">사진 게시판</div>
              <div id="none-right"></div>
          </div>
      </div>
      <br>
      <div class="main-content">
        <div id="top-hashtag">
          <div id="top-hashtag-title"><span id="top-hashtag-title2"># 인기 해시태그</span>&nbsp;</div>
          <div id="second-box-title-line"></div>
          <br>
          <div id="top-hashtag-list">
            #꿀팁
          </div>
          <br>
          <div id="top-hashtag-list">
            #분리수거
          </div>
          <br>
          <div id="top-hashtag-list">
            #어려움
          </div>
          <br>
          <div id="top-hashtag-list">
            #배달용기
          </div>
          <br>
          <div id="top-hashtag-list">
            #라벨프리
          </div>
        <div id="ad">
        	<br><br>
	        <div>
	        	<img id="banner" src="<c:url value='/resources/img/community/adminBanner.png'/>" height="100%" width="100%" >
	        	<h1 class="banner_text" style="font-size:20px"><input id="banner-bttn" type="button" value="배너 등록하기"></h1>
	        </div>
        	<br>
	        <div>
	        	<img id="banner" src="<c:url value='/resources/img/community/adminBanner.png'/>" height="100%" width="100%" >
    	       	<h1 class="banner_text2" style="font-size:20px"><input id="banner-bttn" type="button" value="배너 등록하기"></h1>
	        </div>
	        <br>
	        <div>
	        	<img id="banner" src="<c:url value='/resources/img/community/adminBanner.png'/>" height="30px" width="100%" >
    	       	<h1 class="banner_text3" style="font-size:13px"><input id="banner-bttn2" type="button" value="배너 등록하기"></h1>
	        </div>
	        <br>
	        <div>
	        	<img id="banner" src="<c:url value='/resources/img/community/adminBanner.png'/>" height="30px" width="100%" >
    	       	<h1 class="banner_text4" style="font-size:13px"><input id="banner-bttn2" type="button" value="배너 등록하기"></h1>
	        </div>
	        <br>
	        <div id="loginUser">
            	<div id="top-hashtag-title"><span id="top-hashtag-title2">현재 접속 중...</span>&nbsp;</div>
          		<div id="second-box-title-line"></div>
            	<div id="current-loginMember">
            	지구수비대
            	<br>
            	백대장
            	<br>
            	보개미
            	<br>
            	피글렛S2
            	<br>
            	션녀
            	<br>
            	요정지운
            	<br>
            	<span>관리자 <span id="myId">(admin)</span></span>
            	</div>
          		<br>
	        </div>
        </div>
        </div>
        <div class="first-box">
          <div id="first-box-title">
          - 주간베스트&nbsp;<img src="<c:url value='/resources/img/community/thumbs-up.png'/>" height="30px" width="30px">
          <a href="/yess/community/info"><input type="button" value="더보기" id="main-top-btn"></a>
          </div>
          <div id="first-box-title-line"></div>
          <br>
          <div id="first-box-top-list">
            <div id="top-hit">
              <div id="top-hit-title">조회수 TOP&nbsp;<img src="<c:url value='/resources/img/community/flame.png'/>" height="15px" width="15px"></div>
              <div id="top-hit-content"><a id="top-hit-content-aTag" href="${root}/community/infoDetail?no=${vvo.no}">${vvo.title}</a></div>
              <div id="top-hit-writer"><img src="<c:url value='/resources/img/community/seeds.png'/>" height="10px" width="10px">&nbsp;${vvo.nick}</div>
            </div>
            <div id="top-like">
              <div id="top-hit-title">좋아요 TOP&nbsp;<img src="<c:url value='/resources/img/community/flame.png'/>" height="15px" width="15px"></div>
              <div id="top-like-content"><a id="top-hit-content-aTag" href="${root}/community/infoDetail?no=${vo.no}">${vo.title}</a></div>
              <div id="top-like-writer"><img src="<c:url value='/resources/img/community/berry.png'/>" height="10px" width="10px">&nbsp;${vo.nick}</div>
            </div>
            <div id="top-comment">
              <div id="top-hit-title">댓글 TOP&nbsp;<img src="<c:url value='/resources/img/community/flame.png'/>" height="15px" width="15px"></div>
              <div id="top-like-content">댓글 달아주신 분들 중 ..</div>
              <div id="top-like-writer"><img src="<c:url value='/resources/img/community/sakura.png'/>"height="10px" width="10px">&nbsp;피오나공주</div>
            </div>

          </div>
        </div>
        <div class="second-box">
          <div id="second-box-title">
          - 정보 게시판&nbsp;<img src="<c:url value='/resources/img/community/lightbulb.png'/>" height="30px" width="30px">
          <a href="/yess/community/info"><input type="button" value="더보기" id="main-top-btn"></a>
          </div>
          <div id="first-box-title-line"></div>
          <div id="second-box-content">
            <div id="second-box-content-title">번호</div>
            <div id="second-box-content-title">유형</div>
            <div id="second-box-content-title">제목</div>
            <div id="second-box-content-title">작성자</div>
            <div id="second-box-content-title">작성일시</div>
            <div id="second-box-content-title">조회수</div>
            
            	<c:forEach items="${list}" var="list" begin="0" end="${fn:length(list)}" step="1">
					  <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}">${list.no}</a></div>
		              <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}">${list.name}</a></div>
		              <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}">${list.title}</a></div>
		              <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}">${list.nick}</a></div>
		              <%-- <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}"><fmt:formatDate value="${list.enrollDate}" pattern="yyyy-MM-dd"/></a></div> --%>		              
		              <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}">${list.enrollDate}</a></div>
		              <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}">${list.hit}</a></div>
				</c:forEach>
     
          </div>
          <br>
            <div id="paging">
		    	<a><i class="fa-solid fa-chevron-left"></i></a>
		    	<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
		    		<a id="page-btn" href="${root}/community/main?p=${i}">${i}</a>
		    	</c:forEach>
		        <a><i class="fa-solid fa-chevron-right"></i></a>
            </div>
        </div>
        <div class="third-box">
          <div id="third-box-title">
          - 사진 게시판&nbsp;<img src="<c:url value='/resources/img/community/camera.png'/>" height="30px" width="30px">
          <button id="main-top-btn">더보기</button>
        </div>
          <div id="third-box-title-line"></div>
          <div id="third-box-content">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/colorful_bin.jpg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_sofa.jpeg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_books.jpeg'/>" height="120px" width="200px">
          </div><br>
          <div id="third-box-content">
            <img src="<c:url value='/resources/img/community/main_banner_img.png'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_3.jpg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_trees.jpeg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/community_banner.png'/>" height="120px" width="200px">
          </div><br>
          <div id="third-box-content">
            <img src="<c:url value='/resources/img/community/community_banner_photo_event.png'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_simple_desk.jpg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_img_big.jpeg'/>" height="120px" width="200px">
            <img src="<c:url value='/resources/img/community/main_5.jpg'/>" height="120px" width="200px">
          </div>
          <br>
          <div id="main-paging">&lt; 1 2 3 4 5 &gt;</div>
        </div>
  </div>
  </div>
    <%@ include file="../common/footer.jsp" %>

</body>
</html>