<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MARKET</title>
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
	--background-image: url('/yess/resources/img/market/market.png');
	--background-repeat: no-repeat;
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
				
				<p class="p1">YeSS Market</p>
				
				<form action="" method="post" enctype="multipart/form-data">
					<p class="p2">제목</p>
					<div class="input1">
						<select class="select" name="marketType">
		                    <option value="1">팔아요</option>
			                <option value="2">구해요</option>
			                <option value="3">나눠요</option>
			                <option value="4">바꿔요</option>
		                </select>
		                <input type="text" placeholder="제목을 입력하세요. (필수 입력)" name="title" required>
					</div>
					
	                <p class="p2">물품 명</p>
	                <input type="text" class="input1" placeholder="물품 명을 입력하세요. (필수 입력)" name="objectName" required>
	                
	                <p class="p2">물품 정보</p>
	                <input type="text" class="input1" placeholder="물품 정보를 입력하세요. (필수 입력) ex)수량, 사이즈, 색상" name="objectInfo" required>
	                
	                <p class="p2">거래 방법/거래 위치</p>
	                <input type="text" class="input1" placeholder="거래 방법/거래 위치를 입력하세요. (필수 입력)" name="tradeMethod" required>
	                
	                <p class="p2">물품 설명</p>
	                <textarea class="input2" placeholder="물품 설명을 입력하세요. (필수 입력)" name="objectPs" required></textarea>
	                
	                <div class="photo-div">
		                <p class="p2">사진</p>
		                
		            <div class="upload-list">
						<input type="text" class="fileName" id="fileName1" placeholder="썸네일을 등록해 주세요. (필수 등록)" required>
						<button type="button" class="delete">x</button>
						<label class="file-btn"> 파일선택<input type="file" name="marketImg" id="file" style="display: none" onchange="javascript:document.getElementById('fileName1').value = this.value"></label>
					</div>
					
					<div class="upload-list">
						<input type="text" class="fileName" id="fileName2" placeholder="사진을 등록해 주세요.">
						<button type="button" class="delete">x</button>
						<label class="file-btn"> 파일선택<input type="file" name="marketImg" id="file" style="display: none" onchange="javascript:document.getElementById('fileName2').value = this.value"></label>
					</div>
					
					<div class="upload-list">
						<input type="text" class="fileName" id="fileName3" placeholder="사진을 등록해 주세요.">
						<button type="button" class="delete">x</button>
						<label class="file-btn"> 파일선택<input type="file" name="marketImg" id="file" style="display: none" onchange="javascript:document.getElementById('fileName3').value = this.value"></label>
					</div>
					
					<div class="upload-list">
						<input type="text" class="fileName" id="fileName4" placeholder="사진을 등록해 주세요.">
						<button type="button" class="delete">x</button>
						<label class="file-btn"> 파일선택<input type="file" name="marketImg" id="file" style="display: none" onchange="javascript:document.getElementById('fileName4').value = this.value"></label>
					</div>
					
					<div class="upload-list">
						<input type="text" class="fileName" id="fileName5" placeholder="사진을 등록해 주세요.">
						<button type="button" class="delete">x</button>
						<label class="file-btn"> 파일선택<input type="file" name="marketImg" id="file" style="display: none" onchange="javascript:document.getElementById('fileName5').value = this.value"></label>
					</div>

	
	                </div>
	                
	                <script>
	                /* function delete1(){
	                	document.querySelector('#fileName1').value = "";
	                } */
	                
	                const uploadList = document.querySelectorAll(".upload-list");
					/* 문서 안에서 .upload-list 클래스를 전부 가져와서 저장해서 배열에 저장 */
					for(let i = 0; i < uploadList.length; i++){
						const upload = uploadList[i];
						const btn = upload.querySelector("button"); //.upload-list 안에서 버튼을 찾음
						const fileName = upload.querySelector(".fileName"); //.upload-list 안에서 fileName을 찾음
						
						btn.addEventListener('click', function(){ /* 버튼 클릭됐을때 삭제 이벤트 */
							fileName.value = "";
						});
					}

	                </script>

	                
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