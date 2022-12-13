<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News List :: YeSS</title>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.news-banner{
    position: relative;
    width: auto;
    height: 600px;
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

.current-notice{
    margin: auto;
    width: 140px;
    height: 80px;
    border-bottom: 2px solid #0096C6;

    display: flex;
    justify-content: center;
    align-items: center;

    font-weight: 700;
    font-size: 20px;
}
.news-search-wrap{
    margin: auto;
    margin-top: 50px;
    width: 900px;
    height: 60px;

    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}
.news-search-wrap select, .news-search-wrap option{
    width: 150px;
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233, 233, 233);
}
.news-search-content{
    margin-left: 5px;
    margin-right: 5px;
    width: 500px;
    height: 32px;
    font-size: 15px;
    border: 0;
    outline: none;
    padding-left: 10px;
    background-color: rgb(233, 233, 233);
}
.news-search-btn{
    background-color: white;
    border: 0;
    outline: 0;
    font-size: 22px;
}
.news-list-wrap{
    margin: auto;
    width: 900px;
    height: auto;
}
.news-list-write{
    position: relative;
    height: 50px;
}
.news-list-write>span{
    position: absolute;
    left: 90%;
    top: 20%;

    font-weight: 700;
    font-size: 20px;
}
.news-list-head, .news-list-body{
    display: grid;
    grid-template-columns: 100px 650px 150px;
    align-items: center;
    justify-items: center;
    height: 50px;
}
.news-list-head{
    background: #5C9AC1;
    color: white;
    font-weight: 700;
    font-size: 15px;
}
.news-list-body{
    border: 1px solid #E6E6E6;;
}
.news-list-body-title{
    width: 100%;
    padding-left: 50px;
}
.page-number-wrap{
    margin: auto;
    width: 300px;
    height: 70px;

    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    gap: 20px;

    font-weight: 700;
    font-size: 15px;
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
    <p class="current-notice">
        Recycle News
    </p>
    <div class="news-search-wrap">
        <form action="" method="get"></form>
            <select name="noticeSort">
                <option value="recycleNews">Recycle News</option>
                <option value="recycleArea">Recycle Area</option>
                <option value="updateNews">Update News</option>
            </select>        
            <input class="news-search-content" type="text" name="noticeSearch" placeholder="검색어를 입력하세요.">
            <button type="submit" class="news-search-btn">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </form>
    </div>
    <div class="news-list-wrap">
        <div class="news-list-write">
            <span>글쓰기</span>
        </div>
        <div class="news-list-head">
            <p>번호</p>
            <p>제목</p>
            <p>날짜</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        <div class="news-list-body">
            <p>101</p>
            <p class="news-list-body-title"><a>공지사항1</a></p>
            <p>22.12.09</p>
        </div>
        

    </div>
    <div class="page-number-wrap">
        <a>1</a>
        <a>2</a>
        <a>3</a>
        <a>4</a>
        <a>5</a>
    </div>
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>