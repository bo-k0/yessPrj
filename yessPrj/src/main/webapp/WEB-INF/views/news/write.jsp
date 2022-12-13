<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Write :: YeSS</title>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.news-banner{
    position: relative;
    width: auto;
    height: 500px;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
}
.news-banner>img{
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.news-banner>p{
    z-index: 1;
    position: absolute;
    font-weight: 700;
    font-size: 130px;

    color: #FFFFFF;

    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.8);
}
.news-sort{
    width: 800px;
    height: 100px;
    margin: auto;

    display: flex;
    justify-content: center;
    align-items: center;

    font-weight: 700;
    font-size: 20px;
    gap: 130px;
}

/* ------------------------------------- */
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
}
.news-write-btn>button{
    background: #454545;
    color: white;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <div class="news-banner">
        <p>News</p>
        <img src="<c:url value='/resources/img/news/news.jpg'/>"/>
    </div>
    <div class="news-sort">
        <a>Recycle News</a>
        <a>Recycle Area</a>
        <a>Update News</a>
    </div>
    <form action="" method="post">
        <div class="news-write-wrap">
            <div class="news-write-head">
                <p>NEWS</p>
            </div>
            <p>제목</p>
            <div class="news-write-title">
                <select name="noticeSort">
                    <option value="recycleNews">Recycle News</option>
                    <option value="recycleArea">Recycle Area</option>
                    <option value="updateNews">Update News</option>
                </select>  
                <input type="text" name="newsTitle" placeholder="제목을 입력해주세요.">
            </div>
            <p>내용</p>
            <div class="news-write-content">
                <textarea name="newsContent" placeholder="내용을 입력해주세요."></textarea>
            </div>
            <div class="news-write-btn">
                <input type="submit" value="Sumbit">
                <button type="button">List</button>
            </div>
        </div>
    </form>
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>