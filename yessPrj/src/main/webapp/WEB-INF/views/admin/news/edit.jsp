<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Admin :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<link rel="shortcut icon" href="${root}/resources/img/common/earth.png"/>
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
    margin-top: 30px;
    margin: 10px 0px 10px 20px;
    font-weight: 700;
    font-size: 20px;
    color: #454545;
}
.news-delete-check{
    padding-right: 20px;
    height: 50px;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: end;
    gap: 20px;
    color: #ADADAD;
    font-weight: 700;
    font-size: 20px;
    
}
.news-delete-check input{
    display: none;
}
.news-delete-check label:hover{
    cursor: pointer;
}
.news-delete-check input[type="radio"]:checked + label {
    color: black;
}
.news-write-box{
    width: 100%;
    height: 45px;
    display: grid;
    grid-template-columns: 1fr 5fr;
    padding-left: 20px;
    align-items: center;
}
.news-write-date{
    grid-template-columns: 1fr 2fr 1fr 2fr;
    margin-top: 30px;
}
.news-write-date>span{
    width: 200px;
}
.news-write-box>p, .news-write-title{
    width: 150px;
    font-weight: 700;
    font-size: 20px;
    color: #454545;
}
.news-write-box>select, .news-write-box>select>option{
    width: 30%;
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    border: 1px solid #ADADAD;
}
.news-write-box>input{
    width: 100%;
    height: 32px;
    font-size: 15px;
    outline: none;
    padding-left: 10px;
    border: 1px solid #ADADAD;
}
.news-write-content>textarea{
    width: 100%;
    height: 500px;
    font-size: 15px;
    outline: none;
    padding: 20px;
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
#addAddressBox{
    display: none;
}
.news-write-title>a{
    text-decoration: none; 
	outline: none;
}
.news-write-title>a{
    text-decoration: none;
}
#owb, #cwb{
    color: rgb(172, 172, 172);
}
#owb:hover, #cwb:hover{
    color:black;
}
#cwb{
    display: none;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <%@ include file="common.jsp" %>
    <form action="" method="post" onsubmit="return checkValues(this)">
        <div class="news-write-wrap">
            <div class="news-write-head">
                <p>NEWS</p>
            </div>
            <div class="news-delete-check">
                <div>
                    <input type="radio" id="deleteN" value="N" name="deleteYn"<c:if test="${vo.deleteYn eq 'N'}">checked</c:if>>
                    <label for="deleteN">게시</label>
                </div>
                <div>
                    <input type="radio" id="deleteY" value="Y" name="deleteYn"<c:if test="${vo.deleteYn eq 'Y'}">checked</c:if>>
                    <label for="deleteY">미게시</label>
                </div>
            </div>
            <div class="news-write-box news-write-date">
                <p>작성일</p>
                <span>${vo.enrollDate}</span>
                <p>최종수정일</p>
                <span>${vo.modifyDate}</span>
            </div>
            <div class="news-write-box">
                <p>카테고리</p>
                <select name="newsTypeNo">
                    <option value="1" <c:if test='${vo.newsTypeNo eq 1}'>selected</c:if>>Recycle News</option>
                    <option value="2" <c:if test='${vo.newsTypeNo eq 2}'>selected</c:if>>Recycle Area</option>
                    <option value="3" <c:if test='${vo.newsTypeNo eq 3}'>selected</c:if>>Update Notice</option>
                </select>  
            </div>           
            <div class="news-write-box">
                <p>제목</p>
                <input type="text" name="title" value="${vo.title}">
            </div>
            <div class="news-write-box">
                <p>장소</p>
                <input type="text" name="name" placeholder="장소명을 입력해주세요." value="${vo.name}">
            </div>
            <div class="news-write-box">
                <p>주소</p> 
                <input type="text" name="address" placeholder="주소를 입력해주세요." value="${vo.address}">
            </div>
            <p>내용</p>
            <div class="news-write-content">
                <textarea id="summernote" name="content">${vo.content}</textarea>
            </div>
            <div class="news-write-btn">
                <input type="submit" value="Edit">
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
    <script>
        function checkValues(f){
            if(f.title.value == ""){
                alert("제목을 입력해 주세요");
                return false;
            }else if(f.content.value == ""){
                alert("내용을 입력해 주세요");
                return false;
            }else if(f.newsTypeNo.value != 2 && (f.name.value != "" || f.address.value != "")){
                alert("해당 카테고리에는 주소를 입력할 수 없습니다.");
                return false;
            }else if(f.newsTypeNo.value == 2 && (f.name.value == "" || f.address.value == "")){
                alert("장소 이름과 주소 모두 입력해주세요.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>