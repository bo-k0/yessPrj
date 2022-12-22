<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Main :: YeSS</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${root}/resources/css/news/common.css">
<style>
.news-main-box{
    width: 900px;
    height: 850px;
    margin: auto;
    margin-bottom: 50px;

    display: flex;
    flex-direction: row;
    gap: 40px;   
}
.news-notice-box{
    width: 620px;

    display: flex;
    flex-direction: column;
    justify-content: space-between;
}
.news-notice{
    border: 1px solid #c0c0c0;
    border-radius: 15px;
}
.news-notice-sort{
    height: 90px;
}
.news-notice-sort>p{
    border-bottom: 2px solid #0096C6;
    margin-left: 10px;
    height: 60px;
    width: 160px;
    display: flex;
    justify-content: center;
    align-items: center;

    font-weight: 700;
    font-size: 18px;
    line-height: 22px;
    color: rgba(54, 54, 54, 0.85);
}
.news-notice-title>p{
    height: 35px;
    border-bottom: 1px solid #c0c0c0;
    padding-left: 50px;

    margin: 0 10px;
    font-weight: 300;
    font-size: 15px;
    line-height: 35px;
}
.news-notice-title>p:last-child{
	border: none;
}
.news-rank-box{
    width: 220px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    
}
.rank-box{
    height: 400px;
    background-color: #0096C6;
    border-radius: 15px;
    overflow: hidden;
    color: white;
    box-shadow: 5px 5px 20px grey;
}
.rank-box>p{
    height: 60px;
    display: grid;
    grid-template-columns: 1fr 4fr;
    align-items: center;
    justify-items: center;
    margin: 0 10px;
    color: white;

    font-weight: 600;
    font-size: 20px;
    margin-bottom: 5px;
}
.rank{
    background-color: white;
    border-radius: 10px;
    height: 325px;
    margin: 0 10px;
    padding: 2px 0;
    display: grid;
    grid-template-rows: repeat(10, 1fr);
    justify-items: stretch;
    align-items: center;
    color: #0096C6;
}

.rank-line{
    display: grid;
    grid-template-columns: 1fr 1fr 5fr;
    align-items: center;
    border-radius: 15px;
    margin: 0 5px;
    padding-bottom: 2px;
}
.rank-line>div{
    height: 25px;
    width: 25px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.rank-line>div>img{
    height: 80%;
    width: 80%;
}
.rank-number{
    height: 100%;
    margin: 0 2px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 500;
    font-size: 13px;
}
.ranker-name{
    display: flex;
    padding-left: 10px;
    justify-content: space-between;
    align-items: center;
    height: 100%;
    font-weight: 500;
    margin-right: 5px;
    font-size: 14px;
}
.rank-number-top{
    font-size:17px;
    font-weight: 600;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
    <%@ include file="common.jsp" %>
    <div class="news-main-box">
        <div class="news-notice-box">
            <div class="news-notice">
                <div class="news-notice-sort">
                    <p>Recycle News</p>
                    <a>더보기</a>
                </div>
                <div class="news-notice-title">
                <c:forEach var="newsList" items="${newsList}" begin="0" end="5" step="1">
					<p>${newsList.title}</p>
				</c:forEach>
                </div>
            </div>
            <div class="news-notice">
                <div class="news-notice-sort">
                    <p>Recycle Area</p>
                    <a>더보기</a>
                </div>
                <div class="news-notice-title">
                <c:forEach var="areaList" items="${areaList}" begin="0" end="5" step="1">
					<p>${areaList.title}</p>
				</c:forEach>
                </div>
            </div>
            <div class="news-notice">
                <div class="news-notice-sort">
                    <p>Update Notice</p>
                    <a>더보기</a>
                </div>
                <div class="news-notice-title">
                <c:forEach var="noticeList" items="${noticeList}" begin="0" end="5" step="1">
					<p>${noticeList.title}</p>
				</c:forEach>
                </div>
            </div>
        </div>
        <div class="news-rank-box">
            <div class="rank-box">
                <p><i class="fa-solid fa-ranking-star"></i>이달의 지키미</p>
                <div class="rank">
					<c:forEach var="rankMonthList" items="${rankMonthList}" begin="0" end="2" step="1" varStatus="st">
						<div class="rank-line"><p class="rank-number rank-number-top">${st.count}</p><div><img src="${root}/resources/img/grade/g5.png"></div><p class="ranker-name rank-number-top">${rankMonthList.nick}<i style="color:gold;" class="fa-solid fa-medal"></i></p></div>
					</c:forEach>
					<c:forEach var="rankMonthList" items="${rankMonthList}" begin="3" end="10" step="1" varStatus="st">
					    <div class="rank-line"><p class="rank-number">${st.count + 3}</p><div><img src="${root}/resources/img/grade/g2.png"></div><p class="ranker-name">${rankMonthList.nick}</p></div>
					</c:forEach>
                </div>
            </div>
            <div class="rank-box">
                <p><i class="fa-solid fa-ranking-star"></i>지키미 명예의 전당</p>
                <div class="rank">
					<c:forEach var="rankAllList" items="${rankAllList}" begin="0" end="2" step="1" varStatus="st">
						<div class="rank-line"><p class="rank-number rank-number-top">${st.count}</p><div><img src="${root}/resources/img/grade/g5.png"></div><p class="ranker-name rank-number-top">${rankAllList.nick}<i style="color:gold;" class="fa-solid fa-medal"></i></p></div>
					</c:forEach>
					<c:forEach var="rankAllList" items="${rankAllList}" begin="3" end="10" step="1" varStatus="st">
					    <div class="rank-line"><p class="rank-number">${st.count + 3}</p><div><img src="${root}/resources/img/grade/g2.png"></div><p class="ranker-name">${rankAllList.nick}</p></div>
					</c:forEach>
                </div>
            </div>
        </div>
    </div>	
	<%@ include file="../common/footer.jsp" %>
</body>
</html>