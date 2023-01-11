<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: ADMIN</title>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<c:set var = "root" value = "${pageContext.request.contextPath}"/>  
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

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
  height: 1750px;
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
  text-align: right;
  margin: 0 auto;
  padding: 0;
}
#navi-home>a:hover,#navi-info>a:hover,#navi-qna>a:hover,#navi-chat>a:hover{
	color: rgb(201, 240, 238);
}

#community-info{
  width: 651px;
  color: rgba(255,255,255,1);
  position: absolute;
  top: 240px;
  left: 700px;
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
  width: 1000px;
  height: 1600px;
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
  width: 60px;
  border-radius: 10%;
}
#write-btn2{
  background-color: salmon;
  border: 0px;
  color: white;
  height: 27px;
  width: 60px;
  border-radius: 10%;
}
#write-btn2:hover{
  background-color: rgb(201, 240, 238);
  color: rgb(45, 45, 45);
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
	font-size: 90px;
	position: absolute;
	transform: translate(-50%, -50%);
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

#post-title{
	margin-top: 4%;
	margin-left: 4%;
	font-size: 30px;
	font-weight: 500;
}

#profile-pic{
	margin-left: 4%;
}

.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 70%;
    overflow: hidden;
    border: 1px solid black;
}

#article-info{
	display: flex;
}

#profile-img{
	width: 60px;
}
#profile-img2{
	width: 40px;
}

table {
  border-collapse: separate;
  border-spacing: 7px;
  margin-left: 3%;
}
#comment-table {
  --border-collapse: separate;
  border-spacing: 0px;
  margin-left: 0%;
  margin-bottom: 7px;
  margin-top: 7px;
}

#writer-nick{
	text-align: center;
}
#comment-profile, #comment-real{
	text-align: left;
}
#comment-profile{
	font-size: 17px;
	font-weight: 600;
}
#writer-nick, #writer-level{
	vertical-align: bottom;
}

#enroll-date, #enroll-time, #hit, #hit1, #like ,#edit, #delete{
	vertical-align: top;
}

#title-line{
	width: 92%;
	--border-bottom: 2px solid rgba(45,45,45, 0.5);
	border-bottom: 2px solid black;
	margin-left: 4%;
}

.article-rule{
	height: 110px;
	background-color: rgb(245, 245, 245);
	width: 92%;
	margin-left: 4%;
	text-align: left;
}
.article-rule{
	color: black;
	font-size: 18px;
	font-weight: 300;
}
.article-rule p{
	margin-left: 2%;
}
.article-content{
	width: 92%;
	height: 250px;
	margin-left: 4%;
	--border: 1px solid lightgrey;
	font-size: 20px;
}
.search-writer{
	width: 92%;
	margin-left: 4%;
}
.like-comment{
	width: 100%;
	margin-left: 45%;
}

#span-like{
	font-size: 15px;
	vertical-align: middle;
}

#span-comment{
	font-size: 15px;
	vertical-align: middle;
}
#span-report{
	margin-left: 75%;
}
.comment-title{
	margin-left: 4%;
	font-size: 20px;
	font-weight: 600;
}
#comment-area{
	border-bottom: 1px solid rgba(45, 45, 45, 0.2);
	width: 92%;
	margin-left: 4%;
}

#comment-input-tag{
	width: 850px;
	height: 50px;
}

#comment-report{
	width: 20px;
	text-align: right;
}
#comment-reply{
	width: 80px;
	text-align: right;
}
#comment-reply-btn{
	margin-right: 0%;
	background-color: rgb(92, 154, 193);
	border: 0;
	width: 60px;
	height: 25px;
	color: white;
}
#edit{
	width: 50px;
	text-align: right;
}
a{
	color: rgb(45,45,45);
}

.articleImg{
	width: 50%;
	margin-left: 20%;
}
#itemImg{
	--margin-left: 20%;
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
#my-comment{
	margin-left: 47px;
	margin-top: 10px;
}
.cmt_txt{
	margin-left: 47px;
}
#hit1{
	width: 440px;
	text-align: right;
}

.articleHashtag, .cmt_w{
	margin-left: 4%;
}
.swal2-icon.swal2-success .swal2-success-ring {
    position: absolute;
    z-index: 2;
    top: -0.25em;
    left: -0.25em;
    box-sizing: content-box;
    width: 100%;
    height: 100%;
    border: 0.25em solid #ACE8E5;
    border-radius: 50%;
}

#cmt_content:focus{
	outline: none;
}

#cmt_wrap{
	margin-left: 4%;
}
#cmt_btn{
	height: 70px;
	vertical-align: top;
	width: 60px;
	background-color: rgb(92, 154, 193);
    border: 0px;
    color: white;
    border-radius: 10%;
    font-size: 15px;
}
#cmt_btn:hover{
  background-color: rgb(201, 240, 238);
  color: rgb(45, 45, 45);
}
#cmt-edit-bttn{
	margin-right: 10px;
	float: right;
	color: rgb(45, 45, 45);
    border-radius: 10%;    
}
#cmt-edit-bttn:hover{
  	color: salmon;
}
#cmt-delete-bttn{
	margin-right: 45px;
	float: right;
    border-radius: 10%;
}
#cmt-delete-bttn:hover{
  	color: salmon;
}
.cmt2Writer{
	font-weight: 500;
	font-size: 1.1rem;
}
#cmt-enrollDate{
	font-weight: 200;
	font-size: 0.8rem;
}
#report-bttn{
	margin-left: 870px;
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
#main-img{
	height: 308px;
	width: 100%;
	background-color: #454545;
}
#articleHashtag{
	border: 1px solid red;
}
.hashtagTedoori{
	border: 5px solid lightgray;
	background-color: lightgray;
	border-radius: 10%;
}
#hash-hash{
	font-weight: 500;
}
</style>

<body>
	<%@ include file="../common/header.jsp" %>

  <div id="main-img">
  </div>
    <span id="community-info">
      <div class="content">
        <h2>Save&nbsp;Our&nbsp;Earth</h2>
        <h2>Save&nbsp;Our&nbsp;Earth</h2>
      </div>
    </span>

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
          	<div id="post-title">
          		${vo.title}
          	</div>
          	<br>
          	<div class="article-info">
          		<table>
          			<tr>
          				<td id="profile-img" rowspan="2">
          					<img class="profile" src="<c:url value='/resources/img/community/seeds.png'/>">
          				</td>
          				<td id="writer-nick">
          				${vo.nick}
          				&nbsp;&nbsp;&nbsp;
          				새싹
          				</td>
          				<td id="writer-grade"></td>
          				<td id="writer-level"></td>
          				<td id="hit"></td>
          				<td></td>
          				<td ></td>
          			</tr>
          			<tr>
          				<td id="enroll-date">${vo.enrollDate}</td>
          				<td id="hit1"><i class="fa-solid fa-eye"></i></td>
          				<td id="hit">${vo.hit}</td>
          				<td id="like"><i class="fa-regular fa-heart"></i></td>
          				<td id="like"><span id="recomm2">${vo.likeCnt}</span></td>
          				<td id="edit"><a href="/yess/community/infoEdit?no=${vo.no} "><input type="button" value="수정" id="write-btn"></a></td>
          				<td id="delete"><a href="/yess/community/infoDelete?no=${vo.no} "><input type="button" value="삭제" id="write-btn"></a></td>
          				<td id="delete"><span id="cancelReport" onclick="cancelReport(); cancelReportSuccess();"><input type="button" value="신고 취소" id="write-btn2"></span></td>
          			</tr>
          		</table>
          		
          		<script>
					function cancelReport() {
		                       	let no = '${vo.no}';
								$.ajax({
		                           url : "/yess/community/cancelReport",
		                           type : "post",
		                           data : {"no" : no } ,
		                           success : function(result){
		                        	   Swal.fire({
		                        		   title: '게시글 신고를 취소하시겠습니까?',
		                        		   text: "취소하면 신고 내역에서 사라집니다.",
		                        		   icon: 'warning',
		                        		   showCancelButton: true,
		                        		   confirmButtonColor: '#3085d6',
		                        		   cancelButtonColor: '#d33',
		                        		   confirmButtonText: '신고 취소하기',
		                        		   cancelButtonText: '놔두기',
		                        		   closeOnCancel: true
		                        		 }).then((result) => {
		                        		   if (result.isConfirmed) {
		                        		     Swal.fire(
		                        		       '게시글 신고가 취소되었습니다.',
		                        		       '신고 게시글 내역에서도 사라집니다.',
		                        		       'success'
		                        		     )
		                        		   }
		                        		 })
		                           },
		                           error : function(){
		                               
		                           }
		                       })
							}
					
    			</script>
    		
          	</div>
          	<div id="title-line"></div>
          	<br>
          	<div class="article-rule">
          		<p>
          		<br>
          		<i class="bi bi-exclamation-octagon"></i>
          		분리수거 정보 관련된 글을 작성하는 게시판입니다.
          		<br>
          		게시글 규정에 어긋나는 글은 무통보 삭제 처리가 되오니 주의 바랍니다~^^
          		<br>
          		</p>
          	</div>
          	<br>
          	<div class="article-content">
          		${vo.content}
          	</div>
          	<div class="articleImg">
              <c:forEach var="i" items="${prodImglist}" begin="0" step="1">	
			        <img src="${root}/resources/upload/community/${i.changeName }" id="itemImg">
			 </c:forEach>
             </div>
             <br><br><br><br><br>
          	<div class="articleHashtag" id="hashTagBox">
          		<span id="hash-hash">해시태그 :</span>  
          	</div>
          	
          	<script>
          		var hash = "${vo.hashtag}";
          		var arr = hash.split(',');
					
				for(let i = 0; i < arr.length; i++){
					$('#hashTagBox').append('<span class="hashtagTedoori">'+ '#' +arr[i] +'</span>');
					if (i < arr.length - 1) {
					$('#hashTagBox').append(' , ');
					}
				}
          	</script>
          	<br><br>
          	<div class="like-comment" style="font-size: 1.1rem;" onclick="plusRecomm(); likeUp();">
	            <img alt="" src="<c:url value='/resources/img/community/heart_blank.png'/>" height="2.5%" width="2.5%" id="imgid">
	            <label id="recomm" for="imgid">좋아요</label>
            </div>
          	<div class="search-writer">
          		<div>
          		${vo.nick} 님 게시글 더 보기 &gt;
	            <img id="report-bttn" alt="" src="<c:url value='/resources/img/community/report_blank.png'/>" height="2.5%" width="2.5%" onclick="reportY();">
          		</div>
          	</div>
            
            <script>
			function plusRecomm() {
                       // console.log('${no}')
                       	let cnt = '${vo.likeCnt}';
                       	let no = '${vo.no}';
						$.ajax({
                           url : "/yess/community/infoLike",
                           type : "post",
                           data : {"no" : no } ,
                           success : function(result){
                               if(result != ""){
								$('#recomm').text(result);
								$('#recomm2').text(result);
                               }
                           },
                           error : function(){
                               
                           }
                       })
					}
			
			function likeUp(){
				Swal.fire({
					  position: 'center',
					  icon: 'success',
					  title: '좋아요 감사합니다 !',
					  showConfirmButton: false,
					  timer: 1500
					})
			}
			
    		</script>
            
            
          	<br>
          		<div id="title-line"></div>
          		<br>
          		<div class="comment-title">
          			댓글
          			<img src="<c:url value='/resources/img/community/comment2.png'/>" height="3%" width="3%">
          		</div>
          		<br>
          		<div class="cmt_container">
				<div class="form-table">
						<input type="hidden" value="${vo.no}" name="commNo">
						<c:if test="${loginMember !=null}">
							<input type="hidden" value="${vo.nick}" name="commNick">
							<input type="hidden" value="${loginMember.no}" name="writerNo">
						</c:if>
						
						<section class="cmt_inp">
						<span class="cmt_w" id="cmtWriter"> 
						<%-- <c:if test="${loginMember !=null}">
							작성자 : ${loginMember.nick }
						</c:if> --%>
						</span>
							<div class="cmt_txt">
								<textarea name="comment" id="cmt_content" cols="100" rows="4" style=" height: 70px; width: 840px; resize:none; font-size: 16px;" placeholder="댓글을 입력해 주세요 :)
*타인을 비방, 욕설, 모욕 또는 불쾌감을 주는 댓글은 무통보 삭제 처리가 되오니, 주의 바랍니다."></textarea>
								&nbsp;<button id="cmt_btn"><span>등록</span></button>
							</div>
						</section>
						
					<script>
						$('#cmt_btn').click(function(){
								//JSON으로 전달할 파라미터 변수 선언
								const commno = '${vo.no}';
								const cmtWriter = $('input[name=writerNo]').val();
								const cmtContent = $('#cmt_content').val();
	
								console.log(commno);
								console.log(cmtWriter);
								console.log(cmtContent);
								if(cmtWriter == ""){
									alert('로그인 후 이용해주세요.');
									return;
								}else if(cmtContent == ""){
									alert('내용을 입력해주세요.');
									return;
								}
							
								$.ajax({
									url:"/yess/community/cmt",
									type:"get",
									data: {
										"commNo" : commno ,
										"writer" : cmtWriter ,
										"comment" : cmtContent
									},
									success : function(result){
										location.reload();
										const objList = JSON.parse(result);
										console.log(objList);
											$('#cmt_wrap').prepend(
													'<div class="cmt_box">'
													+'<div class="cmt2Writer" style="font-size : 14px; height:40px; line-height:30px">' + objList.writer + '</div>'
													+'<div class="cmt2Content" style = "height:70px; borderL:0; line-height:50px" >' + objList.cmt + '</div>'
													+'<span><a href="/yess/community/CmtEdit">'+ '수정' + '</a></span>'
													+' '
													+'<span><a href="/yess/community/CmtDelete">'+ '삭제' + '</a></span>'
													+'<div style="border-bottom:1px solid #aaa; width:860px; height:5px;"></div>'
													+'</div>'
											);

										Swal.fire('댓글 작성 성공')
									},
									error : function(){
										alert('ajax error');
									}
								});
						});
					</script>
					
					</div>
				</div><!-- cmt container-->
       	  		<br>
				<div id="cmt_wrap">
				<c:if test="${cvo !=null}">
	              	<c:forEach items="${cvo}" var="cvo" begin="0" end="${fn:length(cvo)}" step="1">
					  	<div class="cmt_box">
					  		<div>
								<input type="hidden" value="${cvo.cmtNo}" name="cmtNo">
								<div class="cmt2Writer">
								<img style="width: 30px; height: 30px; vertical-align: bottom;" class="profile" src="<c:url value='/resources/img/community/seeds.png'/>">
								${cvo.nick} &nbsp; 
								<span id="cmt-enrollDate">${cvo.enrollDate}</span>
								</div>
							</div>
							<br>
							<div class="cmt2Content">
							&emsp;&emsp;${cvo.cmt}
							<a href="/yess/community/CmtDelete?cmtNo=${cvo.cmtNo}&no=${vo.no}"><i id="cmt-delete-bttn" class="fa-regular fa-trash-can fa-lg" ></i></a>
							<i id="cmt-edit-bttn" class="fa-regular fa-pen-to-square fa-lg"></i>
					  		</div>
							</div>
						<div style="border-bottom:1px solid #aaa; width:910px; height:5px;"></div>
						<br>
					</c:forEach>
				</c:if>
				</div>
       	  		
          </div><!-- second-box -->
  
    </div>

	  

	 
	 
  </div>
      <%@ include file="../common/footer.jsp" %>
  

  
</body>
</html>