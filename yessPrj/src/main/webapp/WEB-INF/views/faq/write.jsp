<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="faq-send">
				
		<p class="p1">1:1 문의하기</p>
		
		<form action="" method="post">
		<p class="p2">문의유형</p>
		<div class="input1">
			<select class="select" name="qnaTypeNo">
                <option value="1">Community</option>
             	<option value="2">YeSS Mall</option>
             	<option value="3">YeSS Market</option>
             	<option value="4">Etc</option>
            </select>
	              <input type="text" placeholder="제목을 입력하세요." name="title">
		</div>
		
	             <p class="p2">문의 내용</p>
	             <textarea class="input2" placeholder="내용을 입력하세요." name="content"></textarea>
	             
	             <div class="btn-div">
		                <input type="submit" value="등록" class="write-btn">
		                <button class="write-btn" onClick='self.close()'>취소</button>
	                </div>
	       </form>
				
	</div>


</body>
</html>