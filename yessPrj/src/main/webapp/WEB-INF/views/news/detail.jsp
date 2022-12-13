<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Detail :: YeSS</title>
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
.news-detail-wrap{
    margin: auto;
    width: 900px;
    height: auto;

}
.news-detail-edit{
    height: 50px;
    font-weight: 700;
    font-size: 20px;
    padding-right: 15px;

    display: flex;
    flex-direction: row-reverse;
    align-items: center;
    gap: 15px;   
}
.news-detail-title{
    height: 50px;
    background: #5C9AC1;
    
    
    padding: 0 20px 0 20px;

    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
}
#notice-title{
    font-weight: 600;
    font-size: 15px;
    color: white;
}
#notice-enroll-date{
    font-weight: 300;
    font-size: 13px;
    color: rgb(240, 240, 240);
}
.news-detail-content{
    min-height: 550px;
    height: auto;
    padding: 20px;
    border: 1px solid #5C9AC1;
}
.news-detail-btn{
    height: 80px;

    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
}
.news-detail-btn>button{
    width: 80px;
    height: 30px;
    border: none;   
    background: #0096C6;
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
    <p class="current-notice">
        Recycle News
    </p>
    <div class="news-detail-wrap">
        <div class="news-detail-edit">
            <a>삭제</a>
            <a>수정</a>
        </div>
        <div class="news-detail-title">
            <p id="notice-title">공지사항 101</p>
            <p id="notice-enroll-date">2122-11-30  11:30</p>
        </div>
        <div class="news-detail-content">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

        </div>
        <div class="news-detail-btn">
            <button type="button">List</button>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
    
</body>
</html>