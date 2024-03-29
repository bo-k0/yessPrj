<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<title>YeSS :: YESS MALL</title>
<script>
    //서머노트(에디터)

    $(document).ready(function() {
        $('#summernote').summernote({
            placeholder: '내용을 입력하세요.',
            height: 500,                 // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            
            //툴바 설정
            toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
                ['color', ['forecolor','color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert',['picture','link','video']],
                ['view', ['fullscreen', 'help']]
              ],
           fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
           fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
           onImageUpload : function(files, editor, welEditable){

               // 파일 업로드(다중업로드를 위해 반복문 사용)
               for (var i = files.length - 1; i >= 0; i--) {
                   uploadSummernoteImageFile(files[i], //파일관련
               this);
                   }
               }
            
        });
    });

</script>
<style>
/**내용작성**/
#container{
	display: flex;
	justify-content: center;
}
#title{
	width: 1000px;
}

/**버튼**/
.bttn{
	height: 100px;
	padding: 20px;
	text-align: center;
	margin: 0 auto;
}
#bottom-bttn{
    width: 60px;
    height: 25px;
    margin: 10px;
    border: none;
    border-radius: 1px;
    background-color: #C9F0EE;
    box-shadow: 1px 1px 3px gray;
    display: inline-block;
}
#bottom-bttn:hover{
    background-color: #0096C6;
}
</style>
    
    
</head>
<body>
    <%@ include file="../common/header.jsp" %>
    <%@ include file="../mall/mallheader.jsp"%>
    
    <div id="container">

		<div class="Review">
	        <form method="post" action="/yess/mall/reviewwrite">
	        
	        	<input type="hidden" name="no" value="${no }">
	            <div>제목 : <input id="title" type="text" name="title" placeholder="제목을 입력하세요" required="required"/></div>
	            <br><br>
	            
	            <!-- 썸머노트부분 -->
	            <textarea id="summernote" name="content" required="required"></textarea>
	            <div class="bttn">
	                <button type="submit" id="bottom-bttn">등록</button>
	                <button type="reset" id="bottom-bttn">취소</button>
	            </div>
	            
	        </form>
	    </div>

    </div>

    <%@ include file="../common/footer.jsp" %>
    
    
    
    
    
    <script>
    
 // summernote 부분 
    function textEdit(){
       jsonArray = [];
       

    </script>
</body>
</html>