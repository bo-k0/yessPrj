<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: #454545;
  }
  
  /**몰 헤더 사진**/
  .head{
    height: 600px;
    width: auto;
    overflow: hidden;
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .headimg{
    width: 100%;
    background-size: cover;
  }
  .head>span{
    font-size: 100px;
    font-weight: 700;
    position: absolute;
    text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.8);
    color:white;
  }
  
  /**메인**/
  .mall{
  width: 1200px;
  margin: auto;
  text-align: center;
}

/**카테고리**/
.top{
  display: grid;
  grid-template-columns: 3fr 1fr;
  height: 100px;
  margin-top: 40px;
}
.category{
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr 3fr;
  font-weight: 700;
  font-size: 19px;
}
/**검색바**/
.search-field {
  margin-bottom: 100px;
	width: 250px;
	border-radius: 50px;
	border: none;
	background-color: #ACE8E5;
}
.search-field>* {
  cursor: pointer;
	border: 0px;
	background-color: #ACE8E5;
	outline: none;
}
.search {
	width: 200px;
	height: 30px;
	cursor: text;
  border-radius: 20px;
}
.search-field>button>i {
	content: '\f52a';
	font-family: bootstrap-icons;
	font-size: 18px;
}

/**리스트**/
.list{
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
}
#item{
  margin: 30px;
  height: 300px;
  line-height: 40px;
}
#item>div>img{
  width: 200px;
  height: 200px;
}


</style>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  <div class="head">
    <span>YeSS Mall</span>
    <img class="headimg" src="../resources/img/mall/image 71.png">
  </div>
  
  <div id="container">
    <div class="mall top">
      <div class="category">
        <div>생활용품</div>
        <div>주방용품</div>
        <div>욕실용품</div>
        <div>일회용품</div>
        <div>패션잡화</div>
      </div>
      <div class="searchbar">
        <fieldset class="search-field">
          <input type="search" class="search">
          <button type="submit"><i class="bi bi-search bi-5x"></i></button>
        </fieldset>
      </div>
    </div>
    
    
    <div class="mall list">
      <div id="item">
        <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
          <div id="item">
            <div><img src="../resources/img/mall/image 59.png"></div>
            <a href="">제품</a>
            <div>금액원</div>
          </div>
        </div>
      </div>
      
 <%@ include file="../common/footer.jsp" %>
</body>
</html>