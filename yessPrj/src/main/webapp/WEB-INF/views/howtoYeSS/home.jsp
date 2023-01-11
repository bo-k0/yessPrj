<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>분리수거 소개(홈)</title>
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
  <%@ include file="../common/header.jsp" %>
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
                <img src="${root}/resources/img/HowtoYeSS/생활용품.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">생활용품</h5>
                  <p class="card-text">공책, 텀블러, 옷걸이, 우산, 라켓, 스테이플러(심) 등등</p>
                  <a href="${root}/howtoYeSS/list/dailyNecessity" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/욕실주방제품.png" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">욕실 / 주방용품</h5>
                  <p class="card-text">칫솔, 치실, 청소솔, 실리콘 주방용품, 식사도구, 조리기구, 후라이팬 등등</p>
                  <a href="${root}/howtoYeSS/list/bathroomKitchen" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/가전제품.png" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">가전제품</h5>
                  <p class="card-text">스피커, 멀티탭, 매트리스, 전기면도기, 태블릿, 마우스, 키보드 등등</p>
                  <a href="${root}/howtoYeSS/list/homeAppliances" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/화학용품.png" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">화학용품</h5>
                  <p class="card-text">알약(캡슐 or봉투), 일회용 렌즈, 특수용기에 들어있는 약(후시딘 등등) 등등</p>
                  <a href="${root}/howtoYeSS/list/chemicalSupplies" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/패션잡화.png" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">패션 / 잡화</h5>
                  <p class="card-text">신발, 의류, 이불, 여행용 가방, 현악기(기타), 비디오 테이프, CD 등등</p>
                  <a href="${root}/howtoYeSS/list/fashionAccessories" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/용기포장.png" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">용기 / 포장</h5>
                  <p class="card-text">배달 플라스틱 용기, 박스, 아이스팩, 보냉팩, 기름병, 즉석밥용기 등등 </p>
                  <a href="${root}/howtoYeSS/list/packaging" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/HowtoYeSS/식품.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">식품</h5>
                  <p class="card-text">귤 껍질, 수박 껍질, 소금, 김치, 식용유기름 등등 </p>
                  <a href="${root}/howtoYeSS/list/food" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="${root}/resources/img/market/default_img.png" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">기타</h5>
                  <p class="card-text">스티로폼, 매트리스, 라이터, 그릇, 양파망, 주얼리(보석) 등등</p>
                  <a href="${root}/howtoYeSS/list/etc" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
       </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>