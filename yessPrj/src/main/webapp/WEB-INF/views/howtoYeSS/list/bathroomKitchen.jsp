<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <c:set var = "root" value = "${pageContext.request.contextPath}"/>
    <link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<title>YeSS :: HowtoYeSS(bathroomKitchen)</title>
<style>
a{
  color: black;
}

.col-lg-3 {
    padding: 50px;
    display: flex;
    justify-content: center;
}

.head{
    height: 600px;
    width: auto;
    overflow: hidden;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
}

.headimg{
    width: 100%;
    background-size: cover;
}

.head>span{
    font-size: 100px;
    font-weight: 700;
    position: absolute;
    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.8);
}

.card-img-top {
    width: 100%;
    height: 200px;
}

/* 카테고리 */
.top{
  display: grid;
  grid-template-columns: 3fr 1fr;
  height: 100px;
  margin-top: 40px;
}

.category{
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
  font-weight: 600;
  font-size: 17px;
  margin-bottom: 20px;
  align-items: center;
  justify-items: center;
}
</style>
</head>
<body>
	<%@ include file="../../common/header.jsp" %>
    <div class="head">
       <span>How to YeSS</span>
       <img class="headimg" src="${root}/resources/img/HowtoYeSS/HowtoYeSSMain.png">
    </div>
	<div class="category">
		<div><a href="${root}/howtoYeSS/list/dailyNecessity">생활용품</a></div>
		<div><a href="${root}/howtoYeSS/list/bathroomKitchen">욕실 / 주방용품</a></div>
		<div><a href="${root}/howtoYeSS/list/homeAppliances">가전제품</a></div>
		<div><a href="${root}/howtoYeSS/list/chemicalSupplies">화학용품</a></div>
		<div><a href="${root}/howtoYeSS/list/fashionAccessories">패션 / 잡화</a></div>
		<div><a href="${root}/howtoYeSS/list/packaging">용기 / 포장</a></div>
		<div><a href="${root}/howtoYeSS/list/food">식품</a></div>
		<div><a href="${root}/howtoYeSS/list/etc">기타</a></div>
	</div>
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/칫솔.jpg" class="card-img-top">

                <div class="card-body">
                  <h5 class="card-title">칫솔</h5>
                  <p class="card-text">#소형플라스틱 #혼합플라스틱</p>
                  <a href="${root}/howtoYeSS/detail/note" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/치실.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">치실</h5>
                  <p class="card-text">#일회용치실 #치간칫솔</p>
                  <a href="${root}/howtoYeSS/list/bathroomKitchen" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/청소솔.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">청소솔</h5>
                  <p class="card-text">#욕실청소솔 #변기청소솔</p>
                  <a href="${root}/howtoYeSS/list/homeAppliances" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/실리콘 주방용품2.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">실리콘 주방용품</h5>
                  <p class="card-text">#실리콘고무 #실리콘주방용품</p>
                  <a href="${root}/howtoYeSS/list/chemicalSupplies" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/식사도구.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">식사도구</h5>
                  <p class="card-text">#숟가락 #젓가락 #포크 #나이프</p>
                  <a href="${root}/howtoYeSS/list/fashionAccessories" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/조리기구.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">조리기구</h5>
                  <p class="card-text">#국자 #뒤집개 #주걱 #집게 #휘핑기</p>
                  <a href="${root}/howtoYeSS/detail/icepack" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/후라이팬.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">후라이팬</h5>
                  <p class="card-text">#주방용품 #비철금속</p>
                  <a href="${root}/howtoYeSS/detail/icepack" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
       </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <%@ include file="../../common/footer.jsp" %>
</body>
</html>