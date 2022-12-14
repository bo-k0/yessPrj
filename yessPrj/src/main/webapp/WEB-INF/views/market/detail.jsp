<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	color: #454545;
}

.main1 {
	height: 600px;
	background-image: url(/resources/market.png);
	background-size: 100% 160%;
	font-size: 10vw;
	font-weight: 700;
	text-align: center;
	line-height: 600px;
	color: #FFFFFF;
	text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.5);
}

.main2 {
	height: 1200px;
	display: grid;
	grid-template-rows: 4fr 3fr 1fr 15fr 1fr 2fr 2fr 5fr;
	place-items: center;
}

.main2>* {
	width: 1200px;
}

.title {
	font-size: 40px;
	font-weight: 600;
}

.list-title {
	display: grid;
	grid-template-columns: 1fr 1fr 4fr 1fr 1.5fr 1fr;
	text-align: center;
}

.list-edit {
	display: flex;
}

.list-detail { -
	-width: 1200px;
	display: flex;
}

.list-detail>div {
	justify-content: center;
}

.list-detail>div>img { -
	-margin-right: 100px;
	width: 500px;
	height: 500px;
}

.img-btn {
	border: 0px;
	background-color: #FFFFFF;
	width: 100px;
	height: 50px;
	margin-top: 15%;
	cursor: pointer;
}

.img-btn>i {
	width: 100px;
	height: 100px;
}

.list-info-title {
	width: 600px;
	margin-left: 100px;
	font-size: 20px;
	font-weight: 550;
}

.list-info {
	width: 600px;
	height: 30px;
	margin-left: 100px;
	margin-top: 10px;
	margin-bottom: 20px;
	border-bottom: 1px solid #454545;
}

.list-info-content {
	width: 600px;
	height: 200px;
	margin-left: 100px;
	margin-top: 5px;
	margin-bottom: 20px;
	border-bottom: 1px solid #454545;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="main">
        <div class="main1">
            YeSS Market
        </div>
    <div class="main2">
        <div class="title">YeSS Market<hr></div>
        
        <div class="list-title">
            <div class="list-top">번호<hr></div>
            <div class="list-top">유형<hr></div>
            <div class="list-top">제목<hr></div>
            <div class="list-top">작성자<hr></div>
            <div class="list-top">작성일자<hr></div>
            <div class="list-top">조회수<hr></div>
        </div>


        <div class="list-edit">
            <div>최종수정일자 : 2022-12-01</div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div>수정하기</div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div>삭제하기</div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div>신고하기</div>
        </div>

        <div class="list-detail">
            <button class="img-btn"><i class="bi bi-chevron-left"></i></button>
            <div><img src="<c:url value='/resources/img/market/market.png'/>" onerror="<c:url value='/resources/img/market/default_img.png'/>"></div>
            <button class="img-btn"><i class="bi bi-chevron-right"></i></button>
            <div>
                <div class="list-info-title">물품 명</div>
                <div class="list-info">블라인드 커튼</div>
                <div class="list-info-title">물품 정보</div>
                <div class="list-info">흰색 커튼 입니다. </div>
                <div class="list-info-title">거래 방법 / 거래 위치</div>
                <div class="list-info">화곡역 인근거래 환영</div>
                <div class="list-info-title">물품 설명</div>
                <div class="list-info-content">집에서 안쓰게되어서 팔게된 흰색커튼..어쩌고저쩌고...</div>
            </div>
        </div>

        <div class="cmt-cnt"><i class="bi bi-chat-square-dots"></i>댓글 X개</div>
        <div class="cmt">댓글</div>
        <div class="cmt-write">댓글 작성</div>
        <div class="cmt-secret">비밀 댓글로 작성하기</div>
    </div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>