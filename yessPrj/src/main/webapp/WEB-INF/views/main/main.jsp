<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main :: YeSS</title>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}"/>  
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<style>
main{
    position: relative;
    width: auto;
    height: 920px;  
    overflow: hidden;
}
.bg-wrapper div{
    width: 100%;  
     
}
.bg-wrapper div img{
    width: 100%;
    height: 920px;
    object-fit:cover;
}
.main-page-comment{
    position: absolute;
    width: 640px;
    height: 315px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    z-index: 9999;

    font-family: 'Inter';
    font-style: normal;
    font-weight: 700;
    font-size: 130px;
    line-height: 157px;

    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.5);

	color: #FFFFFF;
    
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <main>        
        <div class="bg-wrapper">
            <div><img src="${root}/resources/img/main/MainBG1.jpg"/></div>
            <div><img src="${root}/resources/img/main/MainBG2.jpg"/></div>
            <div><img src="${root}/resources/img/main/MainBG3.jpg"/></div>
            <div><img src="${root}/resources/img/main/MainBG4.jpg"/></div>
            <div><img src="${root}/resources/img/main/MainBG5.jpg"/></div>
            <div><img src="${root}/resources/img/main/MainBG6.jpg"/></div>
        </div>
        <p class="main-page-comment">Save <br>Our Earth</p>
    </main>
    <%@ include file="../common/footer.jsp" %>

    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <script type="text/javascript">
        var jb = jQuery.noConflict();
            
            jb( document ).ready( function(){
                jb( '.bg-wrapper' ).slick({
                    arrows: false,
                    autoplay: true,
                    autoplaySpeed: 2000,
                    dots: false,
                    infinite: true,
                    speed: 300,
                    slidesToShow: 1,
                    adaptiveHeight: true,
                    fade: true,
                    speed: 1500
                });
            });
    </script>
</body>
</html>