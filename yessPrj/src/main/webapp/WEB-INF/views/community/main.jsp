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

* {
  box-sizing: border-box;
}
body {
  font-size: 14px;
}
.main {
  width: 1780px;
  height: 1820px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: relative;
  top: 0px;
  left: 0px;
  overflow: hidden;
}
.v13_5 {
  width: 100%;
  height: 100%;
  background: rgba(245,245,245,1);
  opacity: 1;
  position: absolute;
  top: 138px;
  left: 0px;
}
.v13_6 {
  width: 129px;
  color: rgba(54,54,54,0.8500000238418579);
  position: absolute;
  top: 59px;
  left: 1791px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 15px;
  opacity: 1;
  text-align: left;
}
.v13_7 {
  width: 318px;
  color: rgba(54,54,54,0.8500000238418579);
  position: absolute;
  top: 45px;
  left: 2834px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 20px;
  opacity: 1;
  text-align: left;
}

.v13_11 {
  width: 188px;
  color: rgba(54,54,54,0.8500000238418579);
  position: absolute;
  top: 56px;
  left: 160px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 18px;
  opacity: 1;
  text-align: left;
}
.v13_12 {
  width: 83px;
  color: rgba(54,54,54,0.8500000238418579);
  position: absolute;
  top: 57px;
  left: 557px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 18px;
  opacity: 1;
  text-align: left;
}
.v13_13 {
  width: 197px;
  color: rgba(54,54,54,0.8500000238418579);
  position: absolute;
  top: 57px;
  left: 348px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 18px;
  opacity: 1;
  text-align: left;
}

.v13_15 {
  width: 100%;
  color: rgba(111,111,111,1);
  position: absolute;
  top: 1765px;
  left: 1px;
  font-family: Inter;
  font-weight: Light;
  font-size: 13px;
  opacity: 1;
  text-align: center;
}
.YeSS_logo {
  width: 150px;
  height: 51px;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: absolute;
  top: 38px;
  left: 850px;
  overflow: hidden;
}
.v13_17 {
  width: 100%;
  height: 308px;
  background: url("../images/v13_17.png");
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  opacity: 1;
  position: absolute;
  top: 138px;
  left: 1px;
  overflow: hidden;
}
.community_letter {
  width: 651px;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 250px;
  left: 600px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 100px;
  opacity: 1;
  text-align: left;
}
.third-box {
  width: 84%;
  height: 340px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  top: 1385px;
  left: 250px;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}
.first-box {
  width: 84%;
  height: 340px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  top: 475px;
  left: 250px;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}
.menu-home {
  width: 200px;
  height: 80px;
  background: rgba(201,240,238,1);
  opacity: 1;
  position: absolute;
  top: 475px;
  left: 0px;
}
#menu-home{
  width: 200px;
  color: rgba(69,69,69,1);
  position: absolute;
  top: 25px;
  left: 55px;
  font-family: Inter;
  font-weight: Semi Bold;
  font-size: 27px;
  opacity: 1;
  text-align: left;
}
.menu-qna {
  width: 200px;
  height: 60px;
  background: rgba(92,154,193,1);
  opacity: 1;
  position: absolute;
  top: 615px;
  left: 0px;
}
.menu-info {
  width: 200px;
  height: 60px;
  background: rgba(92,154,193,1);
  opacity: 1;
  position: absolute;
  top: 555px;
  left: 0px;
}
#menu-info, #menu-photo, #menu-qna, #menu-chat{
  width: 200px;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 12px;
  left: 0px;
  font-family: Inter;
  font-weight: Semi Bold;
  font-size: 28px;
  opacity: 1;
  text-align: center;
}
.menu-photo {
  width: 200px;
  height: 60px;
  background: rgba(92,154,193,1);
  opacity: 1;
  position: absolute;
  top: 735px;
  left: 0px;
}
.menu-chat {
  width: 200px;
  height: 60px;
  background: rgba(92,154,193,1);
  opacity: 1;
  position: absolute;
  top: 675px;
  left: 0px;
}
.second-box {
  width: 84%;
  height: 450px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  top: 875px;
  left: 250px;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

#first-box-title, #second-box-title, #third-box-title{
  text-align: left;
  margin-top: 2%;
  margin-left: 5%;
  font-size: 24px;
}

#second-box-title-line, #third-box-title-line{
  border-top: solid black 2px;
  width: 90%;
  height: 10px;
  margin: auto;
}
#first-box-title-line{
  border-top: solid black 2px;
  width: 90%;
  height: 0px;
  margin: auto;
}



#top-hit{
  height: 55%;
  width: 25%;
  float: left;
  margin: 1px 100px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(245, 245, 245);
  border-radius: 5%;
}
#top-like{
  height: 55%;
  width: 25%;
  float: left;
  margin: 1px 100px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(201, 240, 238);
  border-radius: 5%;
}
#top-comment{
  height: 55%;
  width: 25%;
  float: left;
  margin: 1px 100px 3px 4px;
  padding: 1px 2px 3px 4px;
  background-color: rgb(245, 245, 245);
  border-radius: 5%;
}


#first-box-top-list{
  height: 100%;
  width: 100%;
  margin-left: 5%;
}
#top-hit-title, #top-like-title, #top-comment-title{
  font-size: 20px;
  margin-top: 20px;
  margin-left: 20px;
  color: rgba(69, 69, 69, 0.7);
  --color: rgb(69, 69, 69);

  font-weight: 700;
}

#top-hit-content, #top-like-content, #top-comment-content{
  font-size: 25px;
  margin-top: 25px;
  margin-left: 20px;
  color: black;
  font-weight: 700;
}

#top-hit-writer, #top-like-writer, #top-comment-writer{
  font-size: 15px;
  margin-top: 30px;
  margin-left: 20px;
  color: black;
  font-weight: 500;
}

#first-box-content {
    width: 90%;
    height: 30vh;
    --border: 5px solid black;
    margin: 0 auto;
    display: grid;
    grid-template-columns: 2fr 2fr 6fr 1.5fr 1.5fr 1.5fr;
    grid-template-rows: repeat(7 , 38px);
    align-content: center;
}

#first-box-content>div{
  border-bottom: 1px solid black;
  text-align: center;
  margin-top: 10px;
}

#first-box-content-title{
  font-size: 16px;
  font-weight: 700;
}

</style>
<body>
<div class="main">
    <div class="v13_5"></div>
    <span class="v13_6">LOGIN / JOIN</span>
    <span class="v13_11">HOW TO YeSS</span>
    <span class="v13_12">NEWS</span>
    <span class="v13_13">RECYCLE INFO</span>
    <span class="v13_15">Company Info | Terms of Service |  Privacy Policy  |  CS  |  Business Registration Number 123-12-12345  |  CEO  Earth |  45F, 300, Olympic-ro, Songpa-gu, Seoul, Republic of Korea  |  Tel 0505-1125-0421</span>
    <div class="YeSS_logo"><img src="../img/YeSS_logo.png"></div>
    <div class="v13_17"><img src="../img/comm_main_img.jpeg" alt="COMMUNITY" height="308px" width="100%"></div>
    <span class="community_letter">COMMUNITY</span>
    <div class="third-box">
      <div id="third-box-title">사진게시판&nbsp;<img src="../img/camera.png" height="30px" width="30px"></div>
      <br>
      <div id="third-box-title-line"></div>
    </div>
  
    <div class="first-box">
      <div id="first-box-title">주간베스트&nbsp;<img src="../img/trophy.png" height="30px" width="30px"></div>
      <br>
      <div id="first-box-title-line"></div>
      <br>
      <div id="first-box-top-list">
        <div id="top-hit">
          <div id="top-hit-title">조회수 TOP<img src="../img/flame.png" height="25px" width="25px"></div>
          <div id="top-hit-content">지구가 아프대요..</div>
          <div id="top-hit-writer"><img src="../img/seeds.png" height="20px" width="20px">&nbsp;강동원</div>
        </div>
        <div id="top-like">
          <div id="top-like-title">좋아요 TOP<img src="../img/flame.png" height="25px" width="25px"></div>
          <div id="top-like-content">YeSS 너무 좋아요!</div>
          <div id="top-like-writer"><img src="../img/berry.png" height="20px" width="20px">&nbsp;지구수비대</div>
        </div>
        <div id="top-comment">
          <div id="top-like-title">댓글 TOP<img src="../img/flame.png" height="25px" width="25px"></div>
          <div id="top-like-content">댓글 달아주신 분들 중 ..</div>
          <div id="top-like-writer"><img src="../img/sakura.png" height="20px" width="20px">&nbsp;피오나공주</div>
        </div>
      </div>
    </div>
    <div class="menu-home">
      <div id="menu-home">HOME</div>
    </div>
    <div class="menu-qna">
      <div id="menu-qna">문의게시판</div>
    </div>
    <div class="menu-info">
      <div id="menu-info">정보게시판</div>
    </div>
    <div class="menu-photo">
      <div id="menu-photo">사진게시판</div>
    </div>
    <div class="menu-chat">
      <div id="menu-chat">잡담게시판</div>
    </div>
    <div class="second-box">
      <div id="second-box-title">정보게시판&nbsp;<img src="../img/lightbulb.png" height="30px" width="30px"></div>
      <br>
      <div id="first-box-title-line"></div>
      <div id="first-box-content">
        <div id="first-box-content-title">번호</div>
        <div id="first-box-content-title">유형</div>
        <div id="first-box-content-title">제목</div>
        <div id="first-box-content-title">작성자</div>
        <div id="first-box-content-title">작성일시</div>
        <div id="first-box-content-title">조회수</div>
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
        <div>100</div>
        <div>정보게시판</div>
        <div>정말 놀랄만한 꿀팁 공유드립니다~</div>
        <div>예쓰예쓰</div>
        <div>2022-12-09</div>
        <div>50</div>
        

      





      </div>
    </div>
  </div>




</body>
</html>