<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: COMMUNITY</title>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
</head>
<style>

/* 공통 */
html , body {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.main-box{
  width: 1400px;
  background-color: white;
  --background-color: rgb(245, 245, 245);
  margin: auto;
  height: 1420px;
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
  height: 308px;
  margin:auto;
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
  top: 210px;
  left: 550px;
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
  width: 1070px;
  height: 370px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  left: 470px;
  top: 750px;
  border: 2px solid lightgrey;
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
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
  width: 10%;
  height: 360px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
  margin-left: 2.7%;
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

#top-hashtag-list{
  background-color: rgb(245, 245, 245);
  width: 50%;
  margin-left: 20%;
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
  width: 1070px;
  height: 250px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  --top: 475px;
  left: 470px;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
  border: 2px solid lightgrey;
  --border: 2px solid rgb(201, 240, 238);
}

#first-box-title-line{
  border-top: solid black 2px;
  width: 90%;
  height: 0px;
  margin: auto;
}
#top-hit{
  height: 60%;
  width: 24%;
  float: left;
  margin: 1px 55px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(245, 245, 245);
  border-radius: 5%;
  margin-left: 3%;
}
#top-like{
  height: 60%;
  width: 24%;
  float: left;
  margin: 1px 55px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(201, 240, 238);
  border-radius: 5%;
}
#top-comment{
  height: 60%;
  width: 24%;
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
  font-size: 13px;
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
  width: 1070px;
  height: 660px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  top: 1145px;
  left: 470px;
  border: 2px solid lightgrey;
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
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
  -webkit-box-reflect: below -30px linear-gradient(transparent, rgba(0,0,0,.2));
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

#loginUser{
	border: 1px solid black;
	height: 285px;
}
#main-top-btn:hover{
  background-color: rgb(201, 240, 238);
  color: rgb(45, 45, 45);
}
</style>
<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
    <img id="main-img-size" src="<c:url value='/resources/img/community/comm_main_img.jpeg'/>" height="308px" width="100%"/>
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

  <div class="main-box">
      <div id="header-bot">
          <div id="navi">
            <div id="none-left"></div>
            <div id="navi-home"><a href="/yess/community/main">HOME</a></div>
            <div id="navi-info"><a href="/yess/community/info">정보 게시판</a></div>
            <div id="navi-qna"><a href="/yess/community/qna">문의 게시판</a></div>
            <div id="navi-chat"><a href="/yess/community/chat">잡담 게시판</a></div>
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
	        	<img src="<c:url value='/resources/img/community/community_banner.png'/>" height="100%" width="100%">
	        </div>
        	<br>
	        <div>
	        	<img src="<c:url value='/resources/img/community/community_banner_event.png'/>" height="100%" width="100%">
	        </div>
	        <br>
	        <div>
	        	<img src="<c:url value='/resources/img/community/community_banner_2023.png'/>" height="200%" width="100%">
	        </div>
	        <div>
	        	<img src="<c:url value='/resources/img/community/community_banner_new_year.png'/>" height="200%" width="100%">
	        </div>
	        <br>
	        <div id="loginUser">
            	<div id="top-hashtag-title"><span id="top-hashtag-title2">현재 접속 중...</span>&nbsp;</div>
          		<div id="second-box-title-line"></div>
          		<br>
          		쿠키로 로그인 아이디 가져오기 -> 쪽지/채팅 기능?
	        </div>
        </div>
        </div>
        <div class="first-box">
          <div id="first-box-title">
          - 주간베스트&nbsp;<img src="<c:url value='/resources/img/community/thumbs-up.png'/>" height="30px" width="30px">
          <button id="main-top-btn">더보기</button>
          </div>
          <div id="first-box-title-line"></div>
          <br>
          <div id="first-box-top-list">
            <div id="top-hit">
              <div id="top-hit-title">조회수 TOP&nbsp;<img src="<c:url value='/resources/img/community/flame.png'/>" height="15px" width="15px"></div>
              <div id="top-hit-content">지구가 아프대요..</div>
              <div id="top-hit-writer"><img src="<c:url value='/resources/img/community/seeds.png'/>" height="10px" width="10px">&nbsp;강동원</div>
            </div>
            <div id="top-like">
              <div id="top-hit-title">좋아요 TOP&nbsp;<img src="<c:url value='/resources/img/community/flame.png'/>" height="15px" width="15px"></div>
              <div id="top-like-content">YeSS 너무 좋아요!</div>
              <div id="top-like-writer"><img src="<c:url value='/resources/img/community/berry.png'/>" height="10px" width="10px">&nbsp;지구수비대</div>
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
            <div>100</div>
            <div>정보게시판</div>
            <div>정말 놀랄만한 꿀팁 공유드립니다~</div>
            <div>예쓰예쓰</div>
            <div>2022-12-09</div>
            <div>50</div>
            <div>100</div>
            <div>정보게시판</div>
            <div>정말 놀랄만한 꿀팁 공유드립니다~</div>
            <div>예쓰예쓰</div>
            <div>2022-12-09</div>
            <div>50</div>
            <div>100</div>
            <div>정보게시판</div>
            <div>정말 놀랄만한 꿀팁 공유드립니다~</div>
            <div>예쓰예쓰</div>
            <div>2022-12-09</div>
            <div>50</div>
            <div>100</div>
            <div>정보게시판</div>
            <div>정말 놀랄만한 꿀팁 공유드립니다~</div>
            <div>예쓰예쓰</div>
            <div>2022-12-09</div>
            <div>50</div>
            <div>100</div>
            <div>정보게시판</div>
            <div>정말 놀랄만한 꿀팁 공유드립니다~</div>
            <div>예쓰예쓰</div>
            <div>2022-12-09</div>
            <div>50</div>
          </div>
          <br>
          <div id="main-paging">&lt; 1 2 3 4 5 &gt;</div>
        </div>
        <div class="third-box">
          <div id="third-box-title">
          - 사진 게시판&nbsp;<img src="<c:url value='/resources/img/community/camera.png'/>" height="30px" width="30px">
          <button id="main-top-btn">더보기</button>
        </div>
          <div id="third-box-title-line"></div>
          <div id="third-box-content">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
          </div><br>
          <div id="third-box-content">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
          </div><br>
          <div id="third-box-content">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
            <img src="<c:url value='/resources/img/community/forest.jpg'/>" height="25%" width="21%">
          </div>
          <br>
          <div id="main-paging">&lt; 1 2 3 4 5 &gt;</div>

        </div>
      
      
  </div>
  </div>
    <%@ include file="../common/footer.jsp" %>
</div>

</body>
</html>