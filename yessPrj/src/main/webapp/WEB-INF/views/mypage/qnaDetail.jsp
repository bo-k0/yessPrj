<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<meta charset="UTF-8">
<title>YeSS :: 1:1문의</title>
<style>
.faq-img{
	background-image: url('/yess/resources/img/faq/faq.png');
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	width: 600px;
	height: 690px;
}
.faq-send, .faq-send > *{
	margin-left: 30px;
	margin-top: 28px;
	
}

.faq-send{
	padding: 10px;
	width: 520px;
	height:620px;
	background-color: rgba(255, 255, 255, 0.7);
	border-radius: 20px;
}
.title{
	width: 350px;
}


.btn-div{
	margin-left: 43%;
}
.p1{
	font-size: 25px;
	font-weight: bold;
}

.content{
	width: 470px;
	height: 150px;
}
.write-btn{
  	width: 70px;
  	font-size: 15px;
}

</style>
</head>
<body>
<div class="faq-img">
	<div class="faq-send">
				
		<p class="p1">1:1 문의하기</p>
		
		<form action="" method="post">			
				
				<div>문의유형 : ${vo.qnaType}</div>
				
				<div>제목 : ${vo.title}</div>
				<div>작성일자 : ${vo.modifyDate}</div>
		
	             <p>문의 내용</p>
	             <textarea class="content">${vo.content}</textarea>
	             
	             <p>답변 내용 (답변 일자 : ${vo.answerDate})</p>
	             <textarea class="content" disabled>${vo.answer}</textarea>
	             
	             <div class="btn-div">
		         	<button class="write-btn" onClick='self.close()'>확인</button>
	             </div>
	       </form>
				
	</div>
</div>

</body>
</html>