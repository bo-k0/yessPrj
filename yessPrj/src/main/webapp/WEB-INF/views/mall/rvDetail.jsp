<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MALL</title>
</head>
<style>

/**메인**/
.main{
  width: 700px;
  margin: auto;
  text-align: center;
}

.iteminfo{
	margin:auto;
	border-top: 2px solid #ACE8E5;
	display: grid;
	grid-template-columns: 2fr 7fr;
	height:150px;
}
.itemimg{
	margin:auto;
	display: flex;
    align-items: center;
}
#itemimg{
	width: 100px;
	height: 100px;
	background-size:contain;
}
#itemtxt{
	text-align:left;
	display: flex;
    align-items: center;
    font-size: 20px;
    font-weight: 500;
    color: #454545;
}
/**리뷰**/

#title{
	height: 50px;
	line-height:50px;
	display: grid;
	grid-template-columns: 1fr 8fr;
	border-top: 2px solid #ACE8E5;
	color: #454545;
}
#title>:nth-child(2), #writerDate>:nth-child(2){
	text-align:left;
	vertical-align:middle;
}
#writerDate{
	height: 50px;
	line-height:50px;
	display: grid;
	border-top: 2px solid #ACE8E5;
	grid-template-columns: 1fr 6fr 2fr;
	color: #454545;
}
#content{
	width: 700px;
	height: 300px;
	border-top: 2px solid #ACE8E5;
	border-bottom: 2px solid #ACE8E5;
	margin: auto;
	text-align:left;
	padding: 20px;
    color: #454545;
}

/**버튼**/
.bttn-area{
	margin:auto;
	display:flex;
	justify-content: center;
	height:170px;
}
.bttn-area>div{
	margin: 10px;
	background-color: #ACE8E5;
	color: #454545;
	border-radius:10px;
	box-shadow: 1px 1px 1px #454545;
	height: 30px;
	width: 80px;
	line-height:30px;
}
</style>
<body>
	<%@ include file="../common/header.jsp"%>
	<%@ include file="../mall/mallheader.jsp"%>
	
	<div id="container">
	
		<div class="main">
	
			<div class="iteminfo">
				<div class="itemimg">
					<img
						src="${root}/resources/upload/mall/${prodImglist[0].changeName }"
						id="itemimg">
				</div>
				<div id="itemtxt">
					${pvo.prodName}
				</div>
			</div>
			
			<div class="review" id="review">
				<div id="title">
					<div>제목 : </div>
					<div>${rvo.title }</div>
				</div>
				<div id="writerDate">
					<div>작성자 : </div>
					<div>${rvo.nick }</div>
					<div>${rvo.enrollDate }</div>
				</div>
				<div id="content">
					${rvo.content }
				</div>
				
					<div class="bttn-area">
						<div id="rv-bttn"><a href="${root }/mall/updateRv?rno=${rvo.rvNo}">리뷰수정</a></div>
						<div>
							<form id="deleteForm" action="${root}/mall/deleteRv" method="post">
								<input type="hidden" value="${rvo.rvNo}" name="rvNo">
								<a href="#" onclick="document.getElementById('deleteForm').submit();">리뷰삭제</a>
							</form>
						</div>
					</div>
				
			</div>

		</div>
	
	</div>
	
	<%@ include file="../common/footer.jsp"%>

</body>
</html>