<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Edit :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
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
    display: flex;
    flex-direction: row;
    padding-left: 20px;
    align-items: center;
}
.news-write-date{
    margin-top: 30px;
    justify-content: space-between;
}
.news-write-date>span{
    width: 200px;
}
.news-write-box>p{
    width: 150px;
    font-weight: 700;
    font-size: 20px;
    color: #454545;
}
.news-write-box>select, .news-write-box>select>option{
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    border: 1px solid #ADADAD;
}
.news-write-box>input{
    width: 80%;
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
            <div class="news-delete-check">
                <div>
                    <input type="radio" value="N" name="deleteYn" id="deleteN" <c:if test="${vo.deleteYn eq 'N'.charAt(0)}">checked</c:if>>
                    <label for="deleteN">게시</label>
                </div>
                <div>
                    <input type="radio" value="Y" name="deleteYn" id="deleteY" <c:if test="${vo.deleteYn eq 'Y'.charAt(0)}">checked</c:if>>
                    <label for="deleteY">미게시</label>
                </div>
            </div>
            <div class="news-write-box news-write-date">
                <p>작성일</p>
                <span>220202</span>
                <p>최종수정일</p>
                <span>220202</span>
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
            <p>내용</p>
            <div class="news-write-content">
                <textarea name="content">${vo.content}</textarea>
            </div>
            <div class="news-write-btn">
                <input type="submit" value="Edit">
                <button type="button" onclick="history.back()">List</button>
            </div>
        </div>
    </form>
    <%@ include file="../common/footer.jsp" %>   
</body>
</html>