<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MARKET</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	color: #454545;
}
.main{
	width: 100%;
	padding: 0 200px;
}
.main-img{
	background-image: url('/yess/resources/img/market/market.png');
	background-repeat: no-repeat;
	background-size: cover;
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
}

.main-white input{
	width: 100%;
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

.file-btn{
	width: 170px;
	margin-left: 84%;
}

.file-btn > *{
	border: 0px;
	width: 70px;
	height: 28px;
	background: #D9D9D9;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	margin-right: 10px;
}

.btn-div{
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

</style>

</head>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<div class="main">
		<div class="main-img">
			
			<div class="main-white">
				
				<p class="p1"><a href="${root}/market/write">YeSS Market</a></p>
				<form action="" method="post" enctype="multipart/form-data">
					<p class="p2">제목</p>
					<div class="input1">
						<select class="select" name="marketTypeNo">
		                    <option value="1">팔아요</option>
			                <option value="2">구해요</option>
			                <option value="3">나눠요</option>
			                <option value="4">바꿔요</option>
		                </select>
		                <input type="text" placeholder="제목을 입력하세요." name="title">
					</div>
					
	                <p class="p2">물품 명</p>
	                <input type="text" class="input1" placeholder="물품 명을 입력하세요." name="objectName">
	                
	                <p class="p2">물품 정보</p>
	                <input type="text" class="input1" placeholder="물품 정보를 입력하세요. ex)수량, 사이즈, 색상" name="objectInfo">
	                
	                <p class="p2">거래 방법/거래 위치</p>
	                <input type="text" class="input1" placeholder="거래 방법/거래 위치를 입력하세요." name="tradeMethod">
	                
	                <p class="p2">물품 설명</p>
	                <textarea class="input2" placeholder="물품 설명을 입력하세요." name="objectPs"></textarea>
	                
	                <div class="photo-div">
		                <p class="p2">사진</p>
		                <input type="file"  name="f" class="input1">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
		                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
	
	                </div>
	                
	                <div class="file-btn">
	                	<button>파일선택</button> <button>추가</button>
	                </div>
	                
	                <div class="btn-div">
		                <input type="submit" value="등록" class="write-btn">
		                <button class="write-btn" onclick="history.back()">취소</button>
	                </div>
                </form>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>