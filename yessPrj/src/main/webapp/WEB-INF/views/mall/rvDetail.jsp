<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<%@ include file="../mall/mallheader.jsp"%>
	
	<div id="container">
	
	<div class="iteminfo">
		<div class="itemimg">
			<img
				src="${root}/resources/upload/mall/${prodImglist[0].changeName }"
				id="itemimg">
		</div>
		<div id="itemtxt">
			<div>제품명 : ${pvo.prodName}</div>
		</div>
	</div>
			
			<div class="review" id="review">
					<div>제목</div>
					<div>${rvo.title }</div>
					
					<div>작성자</div>
					<div>${rvo.nick }</div>

					<div>작성일</div>
					<div>${rvo.enrollDate }</div>
				
				
			<div id="rv-bttn"><a href="${root }/mall/updateRv?rno=${rvo.rvNo}">리뷰수정</a></div>
			</div>

	
	
	</div>
	
	<%@ include file="../common/footer.jsp"%>

</body>
</html>