<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: 1:1 문의</title>
<style>
.faq-img{
	background-image: url('/yess/resources/img/faq/faq.png');
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	width: 600px;
	height: 530px;
}
.faq-send, .faq-send > *{
	margin-left: 30px;
	margin-top: 28px;
	
}

.faq-send{
	padding: 10px;
	width: 520px;
	height:455px;
	background-color: rgba(255, 255, 255, 0.7);
	border-radius: 20px;
}
.title{
	width: 350px;
}

.content{
	width: 470px;
	height: 200px;
}
.btn-div{
	margin-left: 40%;
}
.p1{
	font-size: 25px;
	font-weight: bold;
}
</style>
</head>
<body>
<div class="faq-img">
	<div class="faq-send">
				
		<p class="p1">1:1 문의하기</p>
		
		<form action="" method="post">
		<p>문의유형</p>
		<div class="input">
			<select class="select" name="qnaTypeNo">
                <option value="1">Community</option>
             	<option value="2">YeSS Mall</option>
             	<option value="3">YeSS Market</option>
             	<option value="4">Etc</option>
            </select>
	              <input type="text" class="title" placeholder="제목을 입력하세요." name="title">
		</div>
		
	             <p>문의 내용</p>
	             <textarea class="content" placeholder="내용을 입력하세요." name="content"></textarea>
	             
	             <div class="btn-div">
	             <p></p>
		                <input type="submit" value="등록" class="write-btn" onClick='window.close()'>
		                <button class="write-btn" onClick='self.close()'>취소</button>
	                </div>
	       </form>
				
	</div>
</div>

</body>
</html>