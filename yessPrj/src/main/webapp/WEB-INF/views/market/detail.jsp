<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MARKET</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
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
	margin-bottom: 1rem;
}

.main2 {

	display: grid;
	place-items: center;
}

.main2>* {
	width: 1200px;
}

.title {
	padding-top: 30px;
	font-size: 40px;
	font-weight: 600;
	border-bottom: 1px solid #454545;
	padding-bottom: 30px;
}

.title > hr{
	margin-top: 15px; 
}

.list-title {
	display: grid;
	grid-template-columns: 1fr 1fr 4fr 1fr 1.5fr 1fr;
	text-align: center;
	margin-top: 87px;
	border-bottom: 1px solid #454545;
	height: 35px;
}

.list-edit {
	display: flex;
	margin-bottom: 20px;
	margin-top: 10px;
}

.list-detail { -
	-width: 1200px;
	display: flex;
}

--.list-detail>div {
	--justify-content: center;
}

--.list-detail>div>img { -
	-margin-right: 100px;
	width: 500px;
	height: 500px;
}

--.img-btn {
	border: 0px;
	background-color: #FFFFFF;
	width: 100px;
	height: 50px;
	margin-top: 15%;
	cursor: pointer;
}

--.img-btn > i {
	width: 100px;
	height: 100px;
}

.list-info-title {
	width: 500px;
	margin-left: 30px;
	font-size: 20px;
	font-weight: 550;
}

.list-info {
	width: 500px;
	height: 30px;
	margin-left: 30px;
	margin-top: 10px;
	margin-bottom: 20px;
	border-bottom: 1px solid #454545;
}

.list-info-content {
	width: 500px;
	height: 200px;
	margin-left: 30px;
	margin-top: 5px;
	margin-bottom: 20px;
	border-bottom: 1px solid #454545;
}
--.img-btn{
	font-size: 50px;
	margin-top: 220px 
}
.cmt-cnt-div > i{
	padding-right : 10px;
}
.cmt-cnt{
	color : #5C9AC1;
	margin-bottom: 10px;
}
.cmt{
	border-bottom: 1px solid #454545;
}
.cmt1 {
	display: flex;
	justify-content: space-between;
	margin-top: 15px;
	margin-bottom: 30px;
}
.cmt2, .cmt2 > * {
	display: flex;
}
.cmt2{
	display: flex;
	justify-content: space-between;
	margin-bottom: 10px;
}
.cmt-write{
	height: 100px;
	border: 1px solid #454545;
	border-radius: 10px;
	margin-top: 10px;
}
.cmt-write > *{
	margin-top: 5px;
	margin-left: 5px;
	border: 0px;
	width: 1150px;	
}
.cmt-secret-div{
	display: flex;
	width:300px;
	margin-top: 10px;
	margin-left: 930px;
	margin-bottom: 50px;

}
.cmt-secret{
	cursor: pointer;
	margin-left: 5px;
}

label.cmt-secret1:before {
	content: "\f600";
	font-family: bootstrap-icons !important;
	color: #454545;
	font-size: 20px;
}

#checkbox:checked + label.cmt-secret1:before {
	content: "\f47a";
}

#checkbox {
	display: none;
}

.cmt-secret2{
	margin-top: 3px;
}

.cmt-secret-btn{
	width: 80px;
	height: 28px;
	margin-left: 10px;
	border: 0px;
	background: #ACE8E5;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
}
.back-div{
	width: 100px;
	margin: auto;
	margin-bottom: 100px;
}
.back-div > *{
	width: 80px;
	height: 28px;
	border: 0px;
	background: #ACE8E5;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
}
img{
	width: 500px;
	height: 500px;
}
.carousel-inner{
	width: 500px;
	height: 500px;
}
a, a:hover{
	color: #454545;
}




</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<%@ include file="../common/header.jsp"%>
	<div class="main">
     
       	<div class="main1">
        	<p>YeSS Market</p>
			<img src="<c:url value='/resources/img/market/market.png'/>">
        </div>

	<div class="main2">
			<div class="title">YeSS Market</div>
        
        <div class="list-title">
            <div class="list-top">${vo.no}</div>
            <div class="list-top">${vo.marketType}</div>
            <div class="list-top">${vo.title}</div>
            <div class="list-top">${vo.nick}</div>
            <div class="list-top">${vo.enrollDate}</div>
            <div class="list-top">${vo.hit}</div>
        </div>


        <div class="list-edit">
            <div>최종수정일자 : ${vo.modifyDate}</div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div>수정하기</div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div><a href="/yess/market/delete?no=${vo.no}">삭제하기</a></div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div>신고하기</div>
        </div>

        <div class="list-detail">
                    
			<div id="carouselExampleControlsNoTouching" class="carousel carousel-dark slide" data-bs-touch="false">

				<div class="carousel-indicators">
					<c:forEach items="${vo.changeNameList}" varStatus="changeNameList">
						<c:if test="${changeNameList.first}">
							<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="${changeNameList.index}" aria-label="Slide ${changeNameList.count}" class="active" aria-current="true"></button>
						</c:if>
						<c:if test="${!changeNameList.first}">
							<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="${changeNameList.index}" aria-label="Slide ${changeNameList.count}"></button>
						</c:if>
					</c:forEach>
				</div>

				<div class="carousel-inner">
					<c:forEach items="${vo.changeNameList}" var="changeNameList">
						<div class="carousel-item active">
						<img src="<c:url value='/resources/upload/market/${changeNameList.changeName}'/>" class="d-block w-100">
						</div>
					</c:forEach>
				</div>
					
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>

			</div>
            

            
            <div>
                <div class="list-info-title">물품 명</div>
                <div class="list-info">${vo.objectName}</div>
                <div class="list-info-title">물품 정보</div>
                <div class="list-info">${vo.objectInfo}</div>
                <div class="list-info-title">거래 방법 / 거래 위치</div>
                <div class="list-info">${vo.tradeMethod}</div>
                <div class="list-info-title">물품 설명</div>
                <div class="list-info-content">${vo.objectPs}</div>
            </div>
        </div>

        <div class="cmt-cnt-div"><i class="bi bi-chat-square-dots"></i>댓글 <sapn class="cmt-cnt">X</sapn>개</div>

        <div class="cmt">
        	<div class="cmt1">
	        	<div>닉네임1234</div>
	        	<div>2022-10-01</div>
        	</div>
        	<div class="cmt2">
    	    	<div>댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용</div>
    	    	<div>
 	 	  	    	<div>수정</div> &nbsp;|&nbsp;<div>삭제</div> &nbsp;|&nbsp;<div>신고</div>
    	    	</div>
        	</div>
        </div>
        <div class="cmt">
        	<div class="cmt1">
	        	<div>닉네임1234</div>
	        	<div>2022-10-01</div>
        	</div>
        	<div class="cmt2">
    	    	<div>댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용</div>
    	    	<div>
 	 	  	    	<div>수정</div> &nbsp;|&nbsp;<div>삭제</div> &nbsp;|&nbsp;<div>신고</div>
    	    	</div>
        	</div>
        </div>
        <div class="cmt">
        	<div class="cmt1">
	        	<div>닉네임1234</div>
	        	<div>2022-10-01</div>
        	</div>
        	<div class="cmt2">
    	    	<div>댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용</div>
    	    	<div>
 	 	  	    	<div>수정</div> &nbsp;|&nbsp;<div>삭제</div> &nbsp;|&nbsp;<div>신고</div>
    	    	</div>
        	</div>
        </div>
        <div class="cmt">
        	<div class="cmt1">
	        	<div>닉네임1234</div>
	        	<div>2022-10-01</div>
        	</div>
        	<div class="cmt2">
    	    	<div>댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용</div>
    	    	<div>
 	 	  	    	<div>수정</div> &nbsp;|&nbsp;<div>삭제</div> &nbsp;|&nbsp;<div>신고</div>
    	    	</div>
        	</div>
        </div>

        <div class="cmt-write">
        	<textarea style="resize:none;" placeholder="댓글 내용을 입력하세요." name="cmtContent"></textarea>
        </div>
        
        <div class="cmt-secret-div">
	        <input type="checkbox" id="checkbox">
	        <label class="cmt-secret1" for="checkbox"></label>
	        <label class="cmt-secret2" for="checkbox">비밀 댓글로 작성하기</label>
	        <button type="submit" class="cmt-secret-btn">등록</button>
	    </div>
	    <div class="back-div"><button type="button" id="list-btn" onclick="history.back()">목록</button></div>
    	</div>
    </div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>