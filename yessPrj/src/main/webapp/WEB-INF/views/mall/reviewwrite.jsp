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
<title>Insert title here</title>
<script>
    //서머노트(에디터)

    $(document).ready(function() {
        $('#summernote').summernote({
                placeholder: 'content',
            minHeight: 370,
            maxHeight: null,
            focus: true, 
            lang : 'ko-KR'
        });
    });

</script>
<style>
/**내용작성**/

/**버튼**/
.bttn{
display: flex;
justify-content: center;
}
#bottom-bttn{
    width: 60px;
    height: 25px;
    margin: auto;
    border: none;
    border-radius: 1px;
    background-color: #C9F0EE;
    box-shadow: 1px 1px 3px gray;
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

        <form method="post" action="/yess/mall/reviewwrite">
        	<input type="hidden" name="no" value="${no }">
            <input id="title" type="text" name="title" placeholder="제목을 입력하세요"/>
            <br><br> 
            <textarea id="summernote" name="content" placeholder="내용을 입력하세요"></textarea>
            <div class="bttn">
                <button type="submit" id="bottom-bttn">등록</button>
                <button type="reset" id="bottom-bttn">취소</button>
            </div>
        </form>

    </div>

    <%@ include file="../common/footer.jsp" %>
</body>
</html>