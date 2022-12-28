<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Admin :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<style>
.news-write-wrap{
    margin: auto;
    width: 900px;
    height: auto;
    background: #F8F8F8;
    border-radius: 15px;
    padding: 20px;
}
.news-write-head{
    height: 90px;
    font-weight: 600;
    font-size: 40px;
    color: #454545;
}
.news-write-head>p{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 90px;
    width: 150px;
    border-bottom: 3px solid #0096C6;
    margin-left: 10px;
}
.news-write-wrap>p{
    margin-left: 21px;
    margin-top: 30px;
    margin: 21px 0px 10px 30px;
    font-weight: 700;
    font-size: 20px;
    color: #454545;
}
.news-write-title{
    width: 100%;
}
.news-write-title>select, .news-write-title>select>option{
    width: 20%;
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    padding-left: 10px;
    border: 1px solid #ADADAD;
}
.news-write-title>input{
    margin-left: 3px;
    width: 79%;
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    padding-left: 10px;
    border: 1px solid #ADADAD;
}
.news-write-content>textarea{
    width: 100%;
    height: 500px;
    font-size: 15px;
    border: 0;
    outline: none;
    padding: 10px;
    resize: none;
    border: 1px solid #ADADAD;
}
.news-write-btn{
    height: 80px;

    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}
.news-write-btn>*{
    width: 80px;
    height: 30px;
    border: none;   
}
.news-write-btn>input{
    background: #0096C6;
    color: white;
    cursor: pointer;
	outline: none;
}
.news-write-btn>button{
    background: #454545;
    color: white;
    cursor: pointer;
	outline: none;
}
.news-write-btn>*:hover{
	top:-2px;
	position: relative;
	box-shadow: 1px 3px 0 rgb(0,0,0,0.5);
}
.news-write-btn>*:active{
	box-shadow: 1px 1px 0 rgb(0,0,0,0.5);
	position: relative;
	top:2px;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <%@ include file="common.jsp" %>
    <form action="" method="post">
        <div class="news-write-wrap">
            <div class="news-write-head">
                <p>NEWS</p>
            </div>
            <p>제목</p>
            <div class="news-write-title">
                <select name="newsTypeNo">
                    <option value="1">Recycle News</option>
                    <option value="2">Recycle Area</option>
                    <option value="3">Update Notice</option>
                </select>  
                <input type="text" name="title" placeholder="제목을 입력해주세요.">
            </div>
            <p>내용</p>
            <div class="news-write-content">
                <textarea id="summernote" name="content" placeholder="내용을 입력해주세요."></textarea>
            </div>
            <div class="news-write-btn">
                <input type="submit" value="Sumbit">
                <button type="button" onclick="history.back()">List</button>
            </div>
        </div>
    </form>
    <%@ include file="../common/footer.jsp" %>
    
    <script>
    //서머노트(에디터)
    $(document).ready(function() {
        $('#summernote').summernote({
                placeholder: '내용을 입력해 주세요',
            minHeight: 370,
            maxHeight: null,
            focus: true, 
            lang : 'ko-KR'
        });
    });
	</script>
</body>
</html>