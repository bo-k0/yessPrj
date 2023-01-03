<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	padding: 50px;
	display: grid;
	grid-template-columns: 2fr 1fr;
}

#itemimg {
	height: 300px;
	width: 450px;
	object-fit: contain;
}

#itemtxt {
	padding: 30px;
	text-align: left;
	font-size: 18px;
	font-weight: 500;
	display: grid;
	grid-template-rows: 1fr 1fr 1fr 2fr;
	align-items: center;
}

#itemtxt>div {
	display: flex;
	gap: 10px;
}
/**버튼**/
#update-bttn {
	width: 120px;
	height: 40px;
	line-height: 40px;
	font-size: 16px;
	text-align: center;
	background-color: #ACE8E5;
	font-weight: 400;
	box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
}

#delete-bttn {
	width: 100px;
	height: 40px;
	line-height: 40px;
	font-size: 16px;
	text-align: center;
	background-color: #ACE8E5;
	font-weight: 400;
	box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
}
#delete-bttn:hover{
    background-color: #0096C6;
}
#update-bttn:hover{
    background-color: #0096C6;
}


/**클릭**/
.click {
	padding-left: 70px;
	padding-right: 70px;
	display: grid;
	grid-template-columns: 1fr 1fr;
	height: 35px;
	line-height: 35px;
}

.click>div:nth-child(1) {
	background-color: #ACE8E5;
	color: white;
	border: 1px solid white;
}

.click>div:nth-child(2) {
	background-color: #ACE8E5;
	color: white;
	border: 1px solid white;
}

/**제품상세**/
.detail {
	min-height: 700px;
}

.detail>div:nth-child(1) {
	text-align: center;
	line-height: 60px;
	font-size: 17px;
	font-weight: 500;
}

.detail>div:last-child {
	padding: 100px;
	text-align: left;
	font-size: 12px;
}

/**리뷰**/
.review {
	padding-left: 70px;
	padding-right: 70px;
	font-size: 14px;
}
#nothing{
	height:300px;
	line-height: 300px;
}
.review>div:nth-child(1) {
	text-align: center;
	line-height: 60px;
	font-size: 17px;
	font-weight: 500;
}

.review>.rv {
	display: grid;
	grid-template-columns: 4fr 1fr 1fr;
}

.review>div:nth-child(2) {
	border-top: 2.5px solid #ACE8E5;
	border-bottom: 2.5px solid #ACE8E5;
}

.cont:last-child {
	border-bottom: 2.5px solid #ACE8E5;
}

.cont {
	border-bottom: 0.5px solid #ACE8E5;
}
/**리뷰버튼**/
#rv-bttn {
	width: 80px;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
	text-align: center;
	background-color: #ACE8E5;
	box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
}
#rv-bttn:hover{
    background-color: #0096C6;
}
</style>
<body>
	<%@ include file="../common/header.jsp"%>
	<%@ include file="../mall/mallheader.jsp"%>


	<div id="container">


		<div class="mall main">

			<div>YeSS Mall > 카테고리명 > 제품명</div>

			<div class="iteminfo">
				<div class="itemimg">
					<img
						src="${root}/resources/upload/mall/${prodImglist[0].changeName }"
						id="itemimg">
				</div>
				<div id="itemtxt">
					<div>제품명 : ${prod.prodName}</div>
					<div>가격 : ${prod.prodPrice }</div>
					<div>
						수량 : <input type="number" name="cnt" value="1">
						<span>
							<button class="plus btn">+</button>
							<button class="minus btn">-</button>
						</span>
					</div>
					<div>
						<div id="update-bttn"><a href="${root}/admin/mall/updateProd?no=${prod.prodNo }">제품수정</a></div>
						<div id="delete-bttn">
						<form id="deleteForm" action="${root}/admin/mall/delete" method="post">
							<input type="hidden" value="${prod.prodNo}" name="no">
							<a href="#" onclick="document.getElementById('deleteForm').submit();">제품삭제</a>
						</form>
						</div>
					</div>
				</div>
			</div>
	
				<div class="click">
					<div><a href="#detail">Detail</a></div>
					<div><a href="#review">Review</a></div>
				</div>
	
				<div class="detail" id="detail">
					<div>Detail</div>
	
					<c:forEach var="i" items="${prodImglist }" begin="0" step="1">
	
						<div>
							<img src="${root}/resources/upload/mall/${i.changeName }"
								id="itemimg">
						</div>
	
					</c:forEach>
	
					<div>${prod.prodDetail}</div>
	
					<div>
						<hr>
						<br>
						<br>
						<br>
						<br>
						<br> 교환 및 반품 주소<br> - 서울시 은평구 통일로 684, 서울혁신파크 미래청 319B<br>
						<br> 교환 및 반품이 가능한 경우<br> - 상품을 공급 받으신 날로부터 7일이내.<br>
						단, 가전제품의 경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.<br>
						- 공급받으신 상품 및 용역의 내용이 표시.<br> 광고 내용과 다르거나 다르게 이행된 경우에는 공급받은
						날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내<br>
						<br> 교환 및 반품이 불가능한 경우<br> - 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된
						경우.<br> 단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외<br> - 포장을
						개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우<br> (예 : 가전제품, 식품, 음반 등, 단 액정화면이
						부착된 노트북, LCD모니터, 디지털 카메라 등의<br> 불량화소에 따른 반품/교환은 제조사 기준에 따릅니다.)<br>
						- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우<br> 단, 화장품등의 경우
						시용제품을 제공한 경우에 한 합니다.<br> - 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가
						현저히 감소한 경우<br> - 복제가 가능한 상품등의 포장을 훼손한 경우<br> (자세한 내용은
						고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)<br>
						<br> ※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.<br>
						(색상 교환, 사이즈 교환 등 포함)<br>
					</div>
				</div>
	
				<div class="click">
					<div><a href="#detail">Detail</a></div>
					<div><a href="#review">Review</a></div>
				</div>
	
				<div class="review" id="review">
	
					<div>Review</div>
					
					<c:if test="${empty rvList }">
						<div id="nothing">등록된 리뷰가 없습니다.</div>
					</c:if>
	
					<c:if test="${not empty rvList }">
						<div class="rv">
							<div>제목</div>
							<div>작성자</div>
							<div>작성일</div>
						</div>
	
						<c:forEach var="rvList" items="${rvList}" step="1">
							<div class="rv cont">
								<div><a href="${root }/mall/rvDetail?rno=${rvList.rvNo}&pno=${prod.prodNo}">${rvList.title }</a></div>
								<div>${rvList.nick }</div>
								<div>${rvList.enrollDate }</div>
							</div>
						</c:forEach>
					</c:if>

				
				</div>

			
		</div>

	</div>




	<%@ include file="../common/footer.jsp"%>

</body>
</html>