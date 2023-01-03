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
    color:black;
}

header a:hover,header a:active {	 
    color:black;
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
    width: auto;
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
.right-head-menu-btn{
    display: flex;
    justify-content: center;
    width: 150px;

    font-weight: 700;
    font-size: 17px;
}
.right-head-menu-nim{
	display: flex;
    justify-content: center;

    font-weight: 400;
    font-size: 14px;
}

@media ( max-width: 1350px ) {
    .left-head-menu-button{
         display: none; 
        }
}
.close-menu-button{
    display: none;
}
#logoutBtn{
	font-size:18px;
}
.left-head-menu i{
	font-size:25px;
	color: black;
}
/* 사이드메뉴 */
.head-side-menu ol {
  list-style-type: none;
}
.head-side-menu a[href] {
  color: #fff;
  position: relative;
  text-decoration: none;
  font-size: 18px;
  font-weight: 700;
}
.head-side-menu a[href]:hover:after {
  transform: scaleX(1);
}
.menu__toggle:checked ~ .menu__toggle-label {
  background: #5c9ac1cb;
  height: 100vh;
  left: 0;
  position: absolute;
  top: 0;
  transition: background 0.15s;
  width: 250px;
}
.head-side-menu a[href]:after {
  content: '';
  position: absolute;
  top: 100%;
  height: 4px;
  background: #fff;
  left: 0;
  right: 0;
  transition: transform 0.15s;
  transform-origin: left;
  transform: scaleX(0);
}
.head-side-menu {
  position: relative;
  width: 250px;
  top:100px;
  z-index: 5;
}
.head-side-menu>input{
  display: none;
}
.menu__content {
  color: #fff;
  margin: 0;
  padding: 0 0 25px 0;
  position: absolute;
  right: 100%;
  top: 0;
  width: 250px;
  z-index: 2;
}
.open-menu-button  {
  transition: transform 0.15s;
}
.close-menu-button{
  left: 250px;
  display: none;
  z-index: 20;
}
.menu__toggle {
  opacity: 1;
  position: fixed;
}
.menu__toggle:checked ~ {
  transform: scale(0);
}
.menu__toggle:checked ~ .close-menu-button {
  left: 250px;
  transform: scale(1);
  transition: transform 0.15s;
  transition-delay: 0.925s;
}
.menu__toggle:checked ~ .menu__content {
  transform: translate(100%, 0);
}
.menu__toggle:checked ~ .menu__content .menu-item {
  transform: translateX(0);
  transition: transform 0.15s cubic-bezier(0.175, 0.885, 0.32, 1.275), border-color 0.15s;
}
.menu__toggle:checked ~ .menu__content>.menu-item {
  background-color: transparent;
}
.menu__toggle:checked ~ .menu__content .menu-item a[href]:after {
  background: white;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(1) {
  transition-delay: 0.1s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(1) .menu-item:nth-of-type(1){
  transition-delay: 0.15s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(1) .menu-item:nth-of-type(2){
  transition-delay: 0.2s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(1) .menu-item:nth-of-type(3){
  transition-delay: 0.25s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(2) {
  transition-delay: 0.3s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(3) {
  transition-delay: 0.35s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(4) {
  transition-delay: 0.4s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(4) .menu-item:nth-of-type(1) {
  transition-delay: 0.45s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(4) .menu-item:nth-of-type(2) {
  transition-delay: 0.5s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(4) .menu-item:nth-of-type(3) {
  transition-delay: 0.55s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(5) {
  transition-delay: 0.6s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(6) {
  transition-delay: 0.65s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(7) {
  transition-delay: 0.7s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(7) .menu-item:nth-of-type(1) {
  transition-delay: 0.75s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(7) .menu-item:nth-of-type(2) {
  transition-delay: 0.8s, 1s;
}
.menu__toggle:checked ~ .menu__content .menu-item:nth-of-type(8) {
  transition-delay: 0.85s, 1s;
}
.menu__content > .menu-item {
  border-left: 8px solid transparent;
}
.menu__content > .menu-item > a {
  line-height: 44px;
  min-width: 60px;
}
.sub-menu {
  padding: 0 0 0 44px;
}
.menu-item {
  line-height: 44px;
  min-height: 44px;
  padding: 0 12px;
  transform: translateX(-100%);
}
.menu-item .menu-item {
  transform: translateX(-150%);
}
</style>

    <nav class="head-side-menu">
        <input id ="menu__toggle" type="checkbox" class='menu__toggle'/>
        <label for="menu__toggle" class="menu__toggle-label"></label>
        <ol class='menu__content'>
          <li class="menu-item">
          <a href="${root}/community/main">Community</a>
          <ol class="sub-menu">
              <li class="menu-item"><a href="${root}/community/info">정보공유게시판</a></li>
              <li class="menu-item"><a href="${root}/community/qna">질문게시판</a></li>
              <li class="menu-item"><a href="${root}/community/chat">자유게시판</a></li>
            </ol>
        </li>
          <li class="menu-item"><a href="${root}/mall/list">YeSS Mall</a></li>
          <li class="menu-item"><a href="${root}/market/list">YeSS Market</a></li>
          <li class="menu-item">
            <a href="${root}/news">NEWS</a>
            <ol class="sub-menu">
              <li class="menu-item"><a href="${root}/news/news">환경소식</a></li>
              <li class="menu-item"><a href="${root}/news/area">관련기관</a></li>
              <li class="menu-item"><a href="${root}/news/notice">업데이트</a></li>
            </ol>
          </li>
        <li class="menu-item"><a href="${root}/howtoYeSS/home">How To YeSS</a></li>
        <li class="menu-item"><a href="${root}/whereTo/list">Where To YeSS</a></li>
        <li class="menu-item"><a href="${root}/faq/list">FAQ</a></li>
        <li class="menu-item">            
          <c:if test="${loginMember.id != null}">
            <a id="logoutBtn" onMouseOver="this.innerHTML='로그아웃'" onMouseOut="this.innerHTML='LOGOUT'">LOGOUT</a>
          </c:if>
        </li>
        </ol>
      </nav>
    <header>
        <div class="left-head-menu">
            <a class="open-menu-button" id="omb" href="javascript:openSideMenu()"><i class="fa-solid fa-bars"></i></a>          
            <a class="close-menu-button" id="cmb" href="javascript:closeSideMenu()"><i class="fa-solid fa-xmark"></i></a>
            <a href="${root}/howtoYeSS/home" class="left-head-menu-button" onMouseOver="this.innerHTML='재활용법 소개'" onMouseOut="this.innerHTML='HOW TO YeSS'">HOW TO YeSS</a>
            <a href="${root}/whereTo/list" class="left-head-menu-button" onMouseOver="this.innerHTML='재활용 장소'" onMouseOut="this.innerHTML='WHERE TO YeSS'">WHERE TO YeSS</a>
            <a href="${root}/news" class="left-head-menu-button" onMouseOver="this.innerHTML='재활용 소식'" onMouseOut="this.innerHTML='NEWS'">NEWS</a>
        </div>
        <a href="${root}/main" class="center-head-menu"><img src="${root}/resources/img/common/YeSS.png"/></a>
		        <div class="right-head-menu">
		            <a class="right-head-menu-mypage"><i class="fa-solid fa-user"></i></a>
				        <c:choose>
				        	<c:when test="${not empty loginMember}">
					            <a href="${root}/mypage/pwCheck" class="right-head-menu-btn">${loginMember.nick}님</a>						                	
				        	</c:when>
					    	<c:otherwise>
					            <a href="${root}/member/login" class="right-head-menu-btn" onMouseOver="this.innerHTML='로그인/회원가입'" onMouseOut="this.innerHTML='LOGIN/JOIN'">LOGIN/JOIN</a>     	    	
					    	</c:otherwise>
				        </c:choose>
        		</div>
	     
    </header>
	<script type="text/javascript">
        var checkBox = document.getElementById("menu__toggle");
    
            function openSideMenu() {
                //document.getElementById("menu__toggle").style.display = "block";
          checkBox.checked = true;
          document.getElementById("omb").style.display = "none";
          document.getElementById("cmb").style.display = "block";
            }
            function closeSideMenu() {
                //document.getElementById("msm").style.display = "none";
          checkBox.checked = false;
                document.getElementById("cmb").style.display = "none";
          document.getElementById("omb").style.display = "block";
            }
        </script>
