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

.write-btn{
	width: 70px;
	border: 0px;
	height: 28px;
	background: #D9D9D9;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.25);
	cursor: pointer;
	margin-top: 20px;
	margin: auto;
}

</style>

</head>
<body>
	<%@ include file="../common/header.jsp"%>
	
	<div class="main">
		<div class="main-img">
			
			<div class="main-white">
				
				<p class="p1">YeSS Market</p>
				
				<p class="p2">제목</p>
				<div class="input1">
					<select class="select">
	                    <option>팔아요</option>
	                    <option>구해요</option>
	                    <option>나눠요</option>
	                    <option>바꿔요</option>
	                </select>
	                <input type="text" placeholder="제목을 입력하세요.">
				</div>
				
                <p class="p2">물품 명</p>
                <input type="text" class="input1" placeholder="물품 명을 입력하세요.">
                
                <p class="p2">물품 정보</p>
                <input type="text" class="input1" placeholder="물품 정보를 입력하세요. ex)수량, 사이즈, 색상">
                
                <p class="p2">거래 방법/거래 위치</p>
                <input type="text" class="input1" placeholder="거래 방법/거래 위치를 입력하세요.">
                
                <p class="p2">물품 설명</p>
                <textarea class="input2" placeholder="물품 설명을 입력하세요."></textarea>
                
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
	                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
	                <input type="text" class="input1" placeholder="첨부파일을 선택하세요.">
                </div>
                
                <div class="file-btn">
                	<button>파일선택</button> <button>추가</button>
                </div>
                <button type="submit" class="write-btn">등록</button>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>