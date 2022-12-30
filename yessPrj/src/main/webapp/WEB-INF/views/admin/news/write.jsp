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
.news-write-title{
    margin-left: 21px;
    margin-top: 30px;
    margin: 21px 0px 10px 30px;
    font-weight: 700;
    font-size: 20px;
    color: #454545;
}
.news-write-box{
    width: 100%;
}
.news-write-box>select, .news-write-box>select>option{
    width: 20%;
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    padding-left: 10px;
    border: 1px solid #ADADAD;
}
.news-write-box>input{
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
    <form name="" action="" method="post" onsubmit="return checkValues(this)">
        <div class="news-write-wrap">
            <div class="news-write-head">
                <p>NEWS</p>
            </div>
            <p class="news-write-title">제목</p>
            <div class="news-write-box">
                <select name="newsTypeNo">
                    <option value="1">Recycle News</option>
                    <option value="2">Recycle Area</option>
                    <option value="3">Update Notice</option>
                </select>  
                <input type="text" name="title" placeholder="제목을 입력해주세요.">
            </div>
            <p class="news-write-title">
                <a id="owb" href="javascript:openAddAddress()">주소 추가</a>          
                <a id="cwb" href="javascript:closeAddAddress()">주소 추가</a>
            </p>
            <div id="addAddressBox">
                <p class="news-write-title">장소</p>
                <div class="news-write-box">
                    <input type="text" name="name" placeholder="장소명을 입력해주세요.">
                </div>
                <p class="news-write-title">주소</p> 
                <div class="news-write-box">
                    <input type="text" name="address" placeholder="주소를 입력해주세요.">
                </div>
            </div>
            <p class="news-write-title">내용</p>
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

    <script type="text/javascript">
        function openAddAddress() {
            document.getElementById("addAddressBox").style.display = "block";
            document.getElementById("owb").style.display = "none";
            document.getElementById("cwb").style.display = "block";
        }
        function closeAddAddress() {
            document.getElementById("addAddressBox").style.display = "none";
            document.getElementById("cwb").style.display = "none";
            document.getElementById("owb").style.display = "block";
        }
    </script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function checkValues(f){
            if(f.title.value == ""){
                Swal.fire({
                    icon: 'warning',
                    title: 'Oops...',
                    text: '제목이 부실해요',
                });
                return false;
            }else if(f.content.value == ""){
                Swal.fire({
                    icon: 'warning',
                    title: 'Oops...',
                    text: '내용이 부실해요',
                });
                return false;
            }else if(f.newsTypeNo.value != 2 && (f.name.value != "" || f.address.value != "")){
                Swal.fire({
                    icon: 'warning',
                    title: 'Oops...',
                    text: '여기는 주소를 적을 수 없어요',
                });
                return false;
            }else if(f.newsTypeNo.value == 2 && (f.name.value == "" || f.address.value == "")){
                Swal.fire({
                    icon: 'warning',
                    title: 'Oops...',
                    text: '주소가 부실해요',
                });
                return false;
            }
            return true;
        }
    </script>
</body>
</html>