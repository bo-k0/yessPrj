<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: FAQ</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
	display: grid;
	place-items: center;
}

.main2>* {
	width: 1200px;
}

.title {
	padding-top: 30px;
	font-size: 30px;
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
	background: #D5D5D5;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	position: absolute;
}
.btn-select{
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 50px;
	--border-bottom: 1px solid #454545;
}
.btn-select > *{
	border: 0px;
	width: 85px;
	height: 28px;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	margin-top: 30px;
	margin-bottom: 30px;
}

.all-btn{
	background: #ACE8E5;
}

.faq-btn{
	background: #D5D5D5;
}
.faq-div{
	display: flex;
	height: 100px;
	gap: 100px;
	border-top: 1px solid #454545;
	font-size: 20px;
	font-weight: 500;
	justify-content: center;
	align-items: center;
}

.faq-info-btn{
	border: 0;
	background-color: #ffffff;
	content: "\f282";
	font-family: bootstrap-icons !important;
	color: #454545;
	font-size: 30px;
	cursor: pointer;;
}
.info-chk{
	border: 0;
	background-color: #ffffff;
	content: "\f282";
	font-family: bootstrap-icons !important;
	color: #454545;
	font-size: 30px;
	cursor: pointer;;
}


.faq-type-div{
	width: 200px;
	text-align: center;
}
.faq-title-div{
	width: 600px;
	text-align: center;
}
.other{
	border-top: 1px solid #454545;
	font-size: 30px;
	font-weight: 600;
	margin-top: 100px;
	margin-bottom: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 20px;
}

.other > button{
	border: 0;
	background-color: #5C9AC1;
	color: #ffffff;
	font-size: 15px;
	cursor: pointer;
	width: 90px;
	height: 30px;
}
.faq-send{
	width: 80%;
	height: 800px;
	background-color: rgba(213, 213, 213, 0.9);
	border-radius: 50px;
	padding: 70px 120px;
	display: flex;
	gap: 10px;
	flex-direction: column;
	position: absolute;
	left: 50%;
	transform: translate(-50%, -50%);
}

.p1{
	font-size: 30px;
	font-weight: 600;
}

.p2{
	font-size: 20px;
}
.li-div{
	width: 500px;
}
.faq-content-div{
	--border-bottom: 1px solid red;
	font-size: 20px;
	width: 100%;
	min-height: 400px;
	display: none;
}
label.cmt-secret:before {
	content: "\f282";
	font-family: bootstrap-icons !important;
	--color: #454545;
	font-size: 30px;
	cursor: pointer;
}

.info-btn-check:checked + label.cmt-secret:before {
	content: "\f286";
}

.info-btn-check {
	display: none;
}
.open-content-div{
	display:block;
}

</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="main">
		
    	<div class="main1">
        	<p>FAQ</p>
			<img src="<c:url value='/resources/img/faq/faq.png'/>">
        </div>

		<div class="main2">
			
			<div class="title">고객센터를 통해 궁금증을 해결하세요.
				<div><button class="write-btn">글쓰기</button></div>
			</div>
			
			<div class="btn-select">
				<button class="all-btn">전체보기</button>
				<button class="faq-btn">YeSS Mall</button>
				<button class="faq-btn">YeSS Market</button>
				<button class="faq-btn">Community</button>
				<button class="faq-btn">Etc</button>
			</div>
			
			<div>
			
			<c:forEach var="faq" items="${faqList}" varStatus="st">

				<div class="faq-div">
					<div class="faq-type-div">${faq.qnaType}</div>
					<div class="faq-title-div">${faq.title}</div>
					
					<input type="checkbox" class="info-btn-check" id="info-btn${st.index}" onclick='openClose("${st.index}")'>
	       			<label class="cmt-secret" for="info-btn${st.index}"></label>
				</div>
						
				<div class="faq-content-div" id="open-close${st.index}">${faq.content}</div>

			</c:forEach>
			
			</div>
			
			
			<script>
				function openClose(i) {
				      if ( $('#info-btn'+i).prop('checked') ) {
				    	  console.log(i);
				    	  console.log($('#info-btn').prop('checked'));
				    	  $('#open-close'+i).css('display','block');
				      } else {
						$('#open-close'+i).css('display','none');
				      }
				    }
			</script>
			
			
			
			<div class="other">
				<i class="bi bi-envelope"></i>
				원하시는 답변이 없으신가요? 1:1 문의를 통해 문의 해 주세요.
				<button onclick="faq-send();">1:1 문의하기</button>
			</div>
			
			
			
			
			
			
				<!-- 1:1문의하기 팝업 -->
				<div class="faq-send" style="display:none;">
				
					<p class="p1">1:1 문의하기</p>
					
					<p class="p2">문의유형</p>
					<div class="input1">
						<select class="select">
		                    <option>YeSS Mall</option>
		                    <option>YeSS Market</option>
		                    <option>Community</option>
		                    <option>Etc</option>
		                </select>
		                <input type="text" placeholder="제목을 입력하세요.">
					</div>
					
	                <p class="p2">문의 내용</p>
	                <textarea class="input2" placeholder="내용을 입력하세요."></textarea>
				
				</div>
                
			
			
		</div>
			
			<script>
				var target = document.querySelectorAll('.faq-send');
			
			</script>

		</div>
		
	</div>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>