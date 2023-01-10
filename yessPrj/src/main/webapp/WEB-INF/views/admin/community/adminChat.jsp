<%@page import="com.kh.yess.community.page.PageVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%PageVo pv = (PageVo)request.getAttribute("pv");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: ADMIN</title>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  --background-color: rgb(245, 245, 245);
  margin: auto;
  height: 1150px;
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
  text-align: right
  margin: 0 auto;
  padding: 0;
}

#community-info{
  width: 651px;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 250px;
  left: 700px;
  font-family: Inter;
  font-weight: Bold;
  font-size: 130px;
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
  height: 1000px;
  background: rgba(255,255,255,1);
  opacity: 1;
  position: absolute;
  margin-left: 200px;
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
  grid-template-columns: 1fr 1.5fr 6fr 1fr 1.5fr 1fr;
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
#navi-home>a:hover,#navi-info>a:hover,#navi-qna>a:hover,#navi-chat>a:hover{
	color: rgb(201, 240, 238);
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
.write-btn{
   text-align: right;
   margin-right: 7%;
}
#write-btn{
  background-color: rgb(92, 154, 193);
  border: 0px;
   color: white;
  height: 27px;
  width: 50px;
  border-radius: 10%;
}
#write-btn:hover{
  background-color: rgb(201, 240, 238);
  color: rgb(45, 45, 45);
}
#top-hashtag-title2 {
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
}

@keyframes textclip {
  to {
    background-position: 200% center;
  }
}

.content {
	position: relative;
  margin-top: 60px;
  margin-left: 240px;
}

.content h2 {
	color: #fff;
	font-size: 130px;
	position: absolute;
	transform: translate(-50%, -50%);
	letter-spacing: 5px;
}

.content h2:nth-child(1) {
	--color: transparent;
	-webkit-text-stroke: 2px white;
}

.content h2:nth-child(2) {
	color: rgb(201, 240, 238);
  color: lightgrey;

	animation: animate 2s ease-in-out infinite;
}

@keyframes animate {
	0%,
	100% {
		clip-path: polygon(
			0% 45%,
			16% 44%,
			33% 50%,
			54% 60%,
			70% 61%,
			84% 59%,
			100% 52%,
			100% 100%,
			0% 100%
		);
	}

	50% {
		clip-path: polygon(
			0% 60%,
			15% 65%,
			34% 66%,
			51% 62%,
			67% 50%,
			84% 45%,
			100% 46%,
			100% 100%,
			0% 100%
		);
	}
}
#loginUser{
	border: 2px solid rgb(92, 154, 193);
	height: 300px;
	box-shadow: 0px 4px 4px rgb(0 0 0 / 25%)
}

#page-btn, #title-atag{
	color: rgb(45,45,45);
}
#article-table{
	height: 70%;
}
.search-form{
	width: 400px;
}
.search-field {
	margin-bottom: 100px;
	width: 400px;
	border-radius: 50px;
	border: 0px;
	background-color: rgb(45,45,45);
	margin-left: 335px;
}

.select {
	margin-left: 10px;
	font-size: 18px;
}

.search-field>* {
	cursor: pointer;
	border: 0px;
	background-color: rgb(45,45,45);
	outline: none;
}

.search {
	width: 260px;
	height: 35px;
	cursor: text;
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
#main-img-size{
    background-color: rgb(60, 60, 60);
}
.banner_text{
	position: absolute;
	top: 480px;
	left: 10px;
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
.select{
	color: white;
}
.bi-search{
	color: white;
}
</style>
<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
    <span id="community-info">
      <div class="content">
        <h2>WagleWagle</h2>
        <h2>WagleWagle</h2>
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
          <br>
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
	        	<img src="<c:url value='/resources/img/community/adminBanner.png'/>" height="100%" width="100%">
	        	<h1 class="banner_text" style="font-size:20px"><input id="banner-bttn" type="button" value="배너 등록하기"></h1>
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
          <div class="second-box">
          <div id="second-box-title">- 잡담 게시판&nbsp;<img src="<c:url value='/resources/img/community/chat2.png'/>" height="30px" width="30px"></div>
            <br>
            <div id="article-table">
            <div id="first-box-title-line"></div>
            <div id="second-box-content">
              <div id="second-box-content-title">번호</div>
              <div id="second-box-content-title">유형</div>
              <div id="second-box-content-title">제목</div>
              <div id="second-box-content-title">작성자</div>
              <div id="second-box-content-title">작성일시</div>
              <div id="second-box-content-title">조회수</div>
              	<c:forEach items="${list}" var="list" begin="0" end="${fn:length(list)}" step="1">
					  <div><a id = "title-atag" href="${root}/admin/community/adminInfoDetail?no=${list.no}">${list.no}</a></div>
		              <div><a id = "title-atag" href="${root}/admin/community/adminInfoDetail?no=${list.no}">${list.name}</a></div>
		              <div><a id = "title-atag" href="${root}/admin/community/adminInfoDetail?no=${list.no}">${list.title}</a></div>
		              <div><a id = "title-atag" href="${root}/admin/community/adminInfoDetail?no=${list.no}">${list.nick}</a></div>
		              <%-- <div><a id = "title-atag" href="${root}/community/infoDetail?no=${list.no}"><fmt:formatDate value="${list.enrollDate}" pattern="yyyy-MM-dd"/></a></div> --%>		              
		              <div><a id = "title-atag" href="${root}/admin/community/adminInfoDetail?no=${list.no}">${list.enrollDate}</a></div>
		              <div><a id = "title-atag" href="${root}/admin/community/adminInfoDetail?no=${list.no}">${list.hit}</a></div>
				</c:forEach>
            </div>
            
            </div>
            <br><br>
            <div class="write-btn">
            <a href="/yess/community/write_summernote"><input type="button" value="글쓰기" id="write-btn"></a>
            </div>
            
            <div id="paging">
		    	<a><i class="fa-solid fa-chevron-left"></i></a>
		    	<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
		    		<a id="page-btn" href="${root}/community/info?p=${i}">${i}</a>
		    	</c:forEach>
		        <a><i class="fa-solid fa-chevron-right"></i></a>
            </div>
            <br>
            <form action="" method="get" class="search-form">
		        <fieldset class="search-field">
		            <select class="select" name="type">
		            	<option value="0">제목</option>
		                <option value="1">작성자</option>
		            </select>
		            <input type="text" class="search" name="search">
		            <button type="submit" onsubmit="search()"><i class="bi bi-search bi"></i></button>
		        </fieldset>
	        </form>
          </div>
    </div>
      
  </div>
      <%@ include file="../common/footer.jsp" %>
  
</body>
</html>