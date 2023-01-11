<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: 문의내역 확인</title>
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
	background-color: rgb(92, 154, 193);
	border: 0px;
	color: white;
	height: 28px;
  	width: 80px;
  	font-size: 15px;
  	margin-top: 10px;
  	margin-left: 20px;
  	font-weight: 500;
}

</style>
</head>
<body>
<div class="faq-img">
	<div class="faq-send">
				
		<p class="p1">1:1 문의하기</p>
		
		<form action="" method="post">
			<div class="input">
				
				
				<div>문의유형 : ${vo.qnaType}</div>
				
				<div>제목 : ${vo.title}</div>
				<div>작성일자 : ${vo.modifyDate}</div>
		
	             <p>문의 내용</p>
	             <textarea class="content">${vo.content}</textarea>
	             
	             <p>답변 내용 (답변 일자 : ${vo.answerDate})</p>
	             <textarea class="content">${vo.answer}</textarea>
	             
	             <div class="btn-div">
		         	<button class="write-btn" onClick='self.close()'>확인</button>
	             </div>
	       </form>
				
	</div>
</div>

</body>
</html>