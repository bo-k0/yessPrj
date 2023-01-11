<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<title>howtoYeSS :: detail :: note</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	color: #454545;
}

/**메인**/
.mall {
	width: 1200px;
	margin: auto;
	padding-bottom: 50px;
	text-align: center;
}

/**위치**/
.main>div:nth-child(1) {
	text-align: left;
	color: #454545;
	padding-left: 40px;
	font-size: 14px;
}

/**iteminfo**/
.iteminfo {
	padding-top: 50px;
	display: grid;
	grid-template-columns: 1fr 1fr;
}

#itemimg {
	height: 300px;
	width: 300px;
	justify-content: center;
	object-fit: contain;
}

#itemtxt {
	/* padding: 30px; */
	text-align: left;
	font-size: 18px;
	font-weight: 500;
	/* display: grid; */
	grid-template-rows: 1fr 1fr 1fr 2fr;
	align-items: center;
}

#itemTitle {
	font-size: 30px;
	/* text-align: right; */
}

#itemSubTitle {
	font-size: 20px;
	/* text-align: right; */
}

#itemTitle>div {
	display: flex;
	gap: 10px;
}

.cont:last-child {
	border-bottom: 2.5px solid #ACE8E5;
}

.cont {
	border-bottom: 0.5px solid #ACE8E5;
}

.col-lg-3 {
    padding: 100px;
}

.head{
    height: 400px;
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
    text-shadow: 4px 4px 4px rgba(255, 255, 255, 0.8);
}

.title {
	color: rgb(255, 255, 255);
}

.card-img-top {
    width: 285px;
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
<body>
	<%@ include file="../../common/header.jsp"%>
		<div class="head">
			<span class="title">How to YeSS</span>
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
	</div>

	<div id="container">


		<div class="mall main">

			<div>How to YeSS > 생활용품 > 공책</div>

			<div class="iteminfo">
				<div class="itemimg">
					<img src="${root}/resources/img/HowtoYeSS/공책.jpg" id="itemimg">
				</div>
				<div id="itemtxt">
					<h1>책, 노트, 잡지</h1>
					<p>재활용 : 가능</p>
					<p>분류 : 종이</p>
					<p>분리배출 표시 : 종이</p>
					<h2>분리수거 방법</h2>
					<p>- 물이나 이물질을 묻지 않게 하고 구겨지지 않게 배출해요.</p>
					<p>- 양장본 책은 겉표시(일반쓰레기)와 속지(종이)를 분리해서 배출해요.</p>
					<p>- 노트나 제본된 종이를 묶는 스프링(플라스틱 또는 고철)은 분리해서 배출해요.</p>
					<h2>유의할 점</h2>
					<p>반드시 종이팩이 아닌 종이로 분리배출</p>
				</div>
			</div>
		</div>

	</div>




	<%@ include file="../../common/footer.jsp"%>
</body>
</html>