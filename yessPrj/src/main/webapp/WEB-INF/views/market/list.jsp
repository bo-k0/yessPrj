<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MARKET</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	color: #454545;
}

.main1 {
	width: auto;
	height: 600px;
	overflow: hidden;
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

.main1 > img {
	position: absolute;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.main1 > p {
	position: absolute;
	font-size: 130px;
	font-weight: 700;
	text-align: center;
	line-height: 600px;
	color: #FFFFFF;
	text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.5);
	z-index: 5;
}

.main2 {
	height: 1800px;
	display: grid;
	--grid-template-rows: 2.5fr 1fr 20fr 1fr 1fr 2fr;
	place-items: center;
}

.main2>* {
	width: 1200px;
}

.title {
	padding-top: 1px;
	font-size: 40px;
	font-weight: 600;
	border-bottom: 1px solid #454545;
	padding-bottom: 30px;
	position: relative;
}

.write-btn {
	--margin-left: 1120px;
	--margin-bottom: 30px;
	font-size: 15px;
	--top: 0;
	bottom: 10px;
	right: 0;
	border: 0px;
	width: 70px;
	height: 32px;
	background: #ACE8E5;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	position: absolute;
}

.list {
	height: 100%;
	grid-template-rows: 1.5fr repeat(10, 3fr);
	place-items: center;
	text-align: center;
}

.list > div {
	display: grid;
	grid-template-columns: 1fr 1fr 2.5fr 4fr 1fr 1.5fr 1fr;
	border-bottom: 1px solid #454545;
}

.list-top {
	padding-top: 82px;
	margin-bottom: 5px;
}

.list-content {
	margin: auto;
}

.finish {
	margin: 5px;
	width: 70px;
	height: 25px;
	color: #FFFFFF;
	background: #5C9AC1;
	box-shadow: 0px 2px 2 px rgba(0, 0, 0, 0.25);
}

.list-content>div>img {
	display: block;
	width: 150px;
	height: 100px;
	margin: 5px;
}

.form-check {
	font-size: 15px;
	width: 200px;
	margin-left: 1120px;
}

.form-check>* {
	cursor: pointer;
}

.page {
	width: 200px;
	margin: auto;
}

.search-field {
	margin-bottom: 100px;
	width: 400px;
	border-radius: 50px;
	border: 0px;
	background-color: #ACE8E5;
}

.select {
	margin-left: 10px;
	font-size: 18px;
}

.search-field>* {
	cursor: pointer;
	border: 0px;
	background-color: #ACE8E5;
	outline: none;
}

.search {
	width: 260px;
	height: 45px;
	cursor: text;
}

input[type=submit] > i{
	font-size: 20px;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
    <div class="main">
		
    	<div class="main1">
        	<p>YeSS Market</p>
			<img src="<c:url value='/resources/img/market/market.png'/>">
        </div>

		<div class="main2">
			<div class="title">YeSS Market
				<div><button class="write-btn">글쓰기</button></div>		
			</div>
			
			
			<div class="list">
				<div>
					<div class="list-top">번호</div>
					<div class="list-top">유형</div>
					<div class="list-top">사진</div>
					<div class="list-top">제목</div>
					<div class="list-top">작성자</div>
					<div class="list-top">작성일자</div>
					<div class="list-top">조회수</div>
				</div>
				
				
				<c:forEach items="${market}" var="x">
					<div>
						<div class="list-content">100</div>
						<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
						<div class="list-content">
							<div><img src="<c:url value='/resources/img/market/market.png'/>" onerror="<c:url value='/resources/img/market/default_img.png'/>"></div>
						</div>
						<div class="list-content">안쓰는 우산 나눔합니다</div>
						<div class="list-content">user01</div>
						<div class="list-content">2022-10-01</div>
						<div class="list-content">11</div>
					</div>
				</c:forEach>
				
				
				
<%-- 				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="<c:url value='/resources/img/market/market.png'/>" onerror="<c:url value='/resources/img/market/default_img.png'/>"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>

				<div>
					<div class="list-content">100</div>
					<div class="list-content"><div class="finish">거래완료</div>팔아요</div>
					<div class="list-content">
						<div><img src="" onError="this.onerror=null; this.src='${root }/resources/img/market/default_img.png';"></div>
					</div>
					<div class="list-content">안쓰는 우산 나눔합니다</div>
					<div class="list-content">user01</div>
					<div class="list-content">2022-10-01</div>
					<div class="list-content">11</div>
				</div>
			</div>

			<div class="form-check form-switch">
				<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
                <label class="form-check-label" for="flexSwitchCheckChecked">거래완료 제외</label>
			</div> --%>
			
			<!-- 안쓰는거 -->
			<!-- <label for="check-btn" class="check-div">
            <input type="checkbox" id="check-btn">거래완료 제외</label> -->

			<div class="page">1 2 3 4 5 6 7 8 9 10</div>

            <fieldset class="search-field">
                <select class="select">
                    <option>팔아요</option>
                    <option>구해요</option>
                    <option>나눠요</option>
                    <option>바꿔요</option>
                </select>
                <input type="search" class="search">
                <button type="submit"><i class="bi bi-search bi"></i></button>
            </fieldset>
	    </div>
    </div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>