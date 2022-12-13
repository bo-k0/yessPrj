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
  width: 90%;
  background-color: rgb(245, 245, 245);
  margin-left: 5%;
  height: 1100px;
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
#navi > div{
    width: 100%;
    height: 100%;
    display: flex; 			  /* 가운데 정렬 */
    justify-content: center; /* 가운데 정렬 */
    align-items: center;
    font-size: 24px;
    font-weight: 500;
}

#navi-home{
  text-align: right;
  margin: 0 auto;
  padding: 0;
}

#community-qna{
  width: 651px;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 240px;
  left: 650px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 80px;
  opacity: 1;
  text-align: left;
}

.main-content{
  display: flex;
  --justify-content: space-evenly;
}

.second-box {
  width: 70%;
  height: 100%;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  left: 22%;
  border: 1px solid rgba(111,111,111,0);
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
  grid-template-columns: 2fr 2fr 6fr 1.5fr 1.5fr 1.5fr;
  grid-template-rows: repeat(16 , 45px);
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
  height: 350px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  border: 1px solid rgba(111,111,111,0);
  box-shadow: 0px 4px 4px rgb(0 0 0 / 25%);
  margin-left: 3.5%;
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


</style>
<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
    <img id="main-img-size" src="<c:url value='/resources/img/community/comm_main_img.jpeg'/>" height="308px" width="100%"/>
    <span id="community-qna">Help for YeSS</span>  

  <div class="main-box">
      <div id="header-bot">
          <div id="navi">
              <div id="none-left"></div>
              <div id="navi-home"><a href="/yess/community/main">HOME</a></div>
              <div id="navi-info"><a href="/yess/community/info">정보 게시판</a></div>
              <div id="navi-qna"><a href="/yess/community/qna">문의 게시판</a></div>
              <div id="navi-chat">잡담 게시판</div>
              <div id="navi-photo">사진 게시판</div>
              <div id="none-right"></div>
          </div>
      </div>
      <br>
      <div class="main-content">
        <div id="top-hashtag">
          <br>
          <div id="top-hashtag-title">인기 해시태그&nbsp;<img src="<c:url value='/resources/img/community/flame.png'/>" width="25px" height="25px"/></div>
          <br>
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
        </div>
          <div class="second-box">
          <div id="second-box-title">문의 게시판&nbsp;<img src="<c:url value='/resources/img/community/qna.png'/>" height="30px" width="30px"></div>
            <br>
            <div id="first-box-title-line"></div>
            <div id="second-box-content">
              <div id="second-box-content-title">번호</div>
              <div id="second-box-content-title">유형</div>
              <div id="second-box-content-title">제목</div>
              <div id="second-box-content-title">작성자</div>
              <div id="second-box-content-title">작성일시</div>
              <div id="second-box-content-title">조회수</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
              <div>100</div>
              <div>문의게시판</div>
              <div>배달 음식은 시킬 때마다 분리수거가 너무 어렵습니다 ㅠㅠ</div>
              <div>강동원</div>
              <div>2022-12-12</div>
              <div>50</div>
            </div>
            <br>
            <div id="paging">&lt;&nbsp;1 2 3 4 5 6 7 8 9 10&nbsp;&gt;</div>
            <br>
            <div id="search-type">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v<img src="<c:url value='/resources/img/community/search.png'/>" width="25px" height="25px"></div>
          </div>
      </div>
      
      
  </div>
      <%@ include file="../common/footer.jsp" %>
  </div>
  
</body>
</html>