<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: ADMIN</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
*:not(span) {
	color: #454545;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
.main{
	width: 100%;
	padding: 0 200px;
}
.main-img{
	background-color: #454545;
	--background-size: cover;
	display: flex;
	width: 100%;
	height: 100%;
	padding: 50px 150px;
}

.main-img > img{
	position: absolute;
	width: 1500px;
	height: 925px;
}

.main-white{
	width: 100%;
	background-color: rgba(255, 255, 255, 0.9);
	border-radius: 50px;
	padding: 70px 120px;
	display: flex;
	gap: 10px;
	flex-direction: column;
}
.photo-div{
	display: flex;
	gap: 10px;
	flex-direction: column;
}

.p1{
	font-size: 30px;
	font-weight: 600;
}

.p2{
	font-size: 20px;
	margin-top: 20px;
}

.main-white input{
	width: 100%;
	height: 30px;
}

.input1{
	display: flex;
	gap: 10px;
	width: 100%;
}

.input2{
	height: 200px;
	width: 100%;
}

.upload-list{
	display: flex;
}

input:focus{ 
	outline: none; 
}

.fileName{
	border: 1px solid #454545;
	border-right: none;
	width: 500px;
	height: 30px; 
}
.delete{
	width: 50px;
	height: 30px;
	border: 1px solid #454545;
	border-left: none;
	background-color: #ffffff;
	font-size: 20px;
	margin-right: 10px;
	line-height: 5px;
	cursor: pointer;

}

.file-btn{
	border: 0px;
	width: 85px;
	height: 28px;
	background: #D9D9D9;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	vertical-align: middle;
	padding: 3px;
}


.btn-div{
	width: 200px;
	margin: auto;
	display: flex;
}
.write-btn{
	width: 70px;
	border: 0px;
	height: 28px;
	background: #D9D9D9;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	margin-top: 20px;
	margin-right: 10px;
	 
}

input[type="submit"] {
	width: 70px;	
}
</style>

</head>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<div class="main">
		<div class="main-img">
			
			<div class="main-white">
				
				<p class="p1">FAQ</p>
				
				<form action="" method="post">
					<p class="p2">FAQ 유형</p>
					<div class="input1">
						<select class="select" name="qnaTypeNo">
		                    <option value="1">Community</option>
			                <option value="2">YeSS Mall</option>
			                <option value="3">YeSS Market</option>
			                <option value="4">Etc</option>
		                </select>
		                <input type="text" placeholder="제목을 입력하세요. (필수 입력)" name="title" required>
					</div>
	                
	                <p class="p2">FAQ 내용</p>
	                <textarea class="input2" placeholder="물품 설명을 입력하세요. (필수 입력)" name="content" required></textarea>
	                
	                <div class="btn-div">
		                <input type="submit" value="등록" class="write-btn">
		                <button class="write-btn" onclick="history.back()">취소</button>
	                </div>
                </form>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>