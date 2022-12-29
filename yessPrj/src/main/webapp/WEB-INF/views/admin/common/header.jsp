<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/56e4f2c89f.js" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/eLogo.png"/>
<style>
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'IBM Plex Sans KR', sans-serif;
}
a{
	text-decoration: none; 
	outline: none;
}

a:hover, a:actice{
	text-decoration: none;
}

header a{
	text-decoration: none; 
	outline: none;
    color:white;
}
header a:hover, header a:active {
	text-decoration: none; 
    color:white;
}::-webkit-scrollbar {
    width: 10px; /*스크롤바의 너비*/
}
::-webkit-scrollbar-thumb {
  background-color: rgb(189, 189, 189); /*스크롤바의 색상*/
  border-radius: 10px; /*스크롤바 라운드*/
}
::-webkit-scrollbar-thumb:hover {
  background-color: rgb(110, 110, 110);
}
::-webkit-scrollbar-track {
  background-color: rgb(255, 255, 255); /*스크롤바 트랙 색상*/
  border-radius: 10px; /*스크롤바 트랙 라운드*/
  box-shadow: inset 0px 0px 5px rgba(0, 0, 0, 0.2); /*스크롤바 트랙 안쪽 그림자*/
}
header{
    position: relative;
    width: 100%;
    height: 100px;
    background-color: rgb(60, 60, 60);
}
.left-head-menu{
    position: absolute;
    height: 50px;
    width: 600px;
    top: 50%;
    transform: translate(0, -50%);
    display: flex;
    padding-left: 30px;
    gap: 40px;
    align-items: center;
}
.left-head-menu-button{
    display: flex;
    justify-content: center;
    min-width: 150px;
    font-weight: 700;
    font-size: 17px;
    line-height: 22px;

}
.left-head-menu i{
	font-size:25px;
	color: white;
}
.center-head-menu{
    position: absolute;
    height: 50px;
    width: 150px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: flex;
    justify-content: center;
    align-items: center;
}
.center-head-menu>img{
	width: 100%;
	height: 100%;
}
.right-head-menu{
    position: absolute;
    height: 50px;
    width: 160px;
    top: 50%;
    left: 98%;
    transform: translate(-100%, -50%);
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.right-head-menu-mypage{
    display: flex;
    justify-content: center;
    font-size: 25px;
}
.right-head-menu-login{
    display: flex;
    justify-content: center;
    width: 150px;

    font-weight: 700;
    font-size: 17px;
    line-height: 22px;
}
@media ( max-width: 1350px ) {
    .left-head-menu-button{
         display: none; 
        }
}
.close-menu-button{
    display: none;
}
.main-side-menu{
    position: absolute;
    top: 100px;
    height: 920px;
    width: 250px;
    display: none;
    background-color:rgba(60, 60, 60, 0.8);  
    z-index: 9999;

}
.side-menu-title:hover, .side-menu-content:hover{
    background-color: white;
    color: black;
}
.main-side-menu-inner{
    display: flex;
    flex-direction: column;
}
.side-menu-title, .side-menu-content{
    display: flex;
    align-items: center;
}

.side-menu-title{
    height: 50px;
    padding-left: 30px;
    font-weight: 700;
    font-size: 21px;
    line-height: 28px;
    color:white;
}
.side-menu-content{
    height: 40px;
    padding-left: 60px;
    font-weight: 500;
    font-size: 18px;
    line-height: 22px;
    color:white;
}
/* 관리자 페이지 */
</style>
	<div class="main-side-menu" id="msm">
        <div class="main-side-menu-inner">
            <a class="side-menu-title">Community</a>
            <a class="side-menu-content">정보공유게시판</a>
            <a class="side-menu-content">질문게시판</a>
            <a class="side-menu-content">자유게시판</a>
            <a class="side-menu-title">YeSS Mall</a>
            <a class="side-menu-title">YeSS Market</a>
            <a href="${root}/admin/news/main" class="side-menu-title">NEWS</a>
            <a href="${root}/admin/news/news" class="side-menu-content">환경소식</a>
            <a href="${root}/admin/news/area" class="side-menu-content">관련기관</a>
            <a href="${root}/admin/news/notice" class="side-menu-content">공지사항</a>
            <a class="side-menu-title">How To YeSS</a>
            <a href="${root}/admin/whereTo/main" class="side-menu-title">Where To YeSS</a>
            <a class="side-menu-title">QnA</a>
            <a class="side-menu-content">FAQ</a>
            <a class="side-menu-content">1:1 문의 작성</a>
        </div>
    </div>
    <header>
        <div class="left-head-menu">
            <a class="open-menu-button" id="omb" href="javascript:openSideMenu()"><i class="fa-solid fa-bars"></i></a>          
            <a class="close-menu-button" id="cmb" href="javascript:closeSideMenu()"><i class="fa-solid fa-bars"></i></a>
            <a class="left-head-menu-button" onMouseOver="this.innerHTML='재활용법 소개'" onMouseOut="this.innerHTML='HOW TO YeSS'">HOW TO YeSS</a>
            <a href="${root}/admin/whereTo/anywhere" class="left-head-menu-button" onMouseOver="this.innerHTML='재활용 장소'" onMouseOut="this.innerHTML='WHERE TO YeSS'">WHERE TO YeSS</a>
            <a href="${root}/admin/news/main" class="left-head-menu-button" onMouseOver="this.innerHTML='재활용 소식'" onMouseOut="this.innerHTML='NEWS'">NEWS</a>
        </div>
        <a href="${root}/admin/main" class="center-head-menu"><img src="${root}/resources/img/common/YeSS.png"/></a>
        <div class="right-head-menu">
            <a class="right-head-menu-mypage"><i class="fa-solid fa-user"></i></a>
            <a class="right-head-menu-login" onMouseOver="this.innerHTML='관리자'" onMouseOut="this.innerHTML='ADMIN'">ADMIN</a>
        </div>       
    </header>
	<script type="text/javascript">
		function openSideMenu() {
			document.getElementById("msm").style.display = "block";
            document.getElementById("omb").style.display = "none";
            document.getElementById("cmb").style.display = "block";
		}
		function closeSideMenu() {
			document.getElementById("msm").style.display = "none";
			document.getElementById("cmb").style.display = "none";
            document.getElementById("omb").style.display = "block";
		}
	</script>
