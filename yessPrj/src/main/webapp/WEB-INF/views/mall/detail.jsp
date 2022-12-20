<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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

/**위치**/
.main>div:nth-child(1){
  text-align: left;
  color: #454545;
  padding-left: 40px;
}

/**iteminfo**/
.iteminfo{
  padding: 70px;
  display: grid;
  grid-template-columns: 2fr 1fr;
}
#itemimg{
  height: 300px;
  width: 450px;
}
#itemtxt{
  padding: 30px;
  text-align: left;
  font-size: 18px;
  font-weight: 500;
  display: grid;
  grid-template-rows: 1fr 1fr 1fr 2fr;
  align-items: center;
}
#cart-bttn{
  width: 150px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  background-color: #ACE8E5;
  font-weight: 400;
  box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
}

/**클릭**/
.click{
  padding-left: 70px;
  padding-right: 70px;
  display: grid;
  grid-template-columns: 1fr 1fr;
  height: 35px;
  line-height: 35px;
}
.click>div:nth-child(1){
	background-color: #ACE8E5;
  color: white;
  border: 1px solid white;
}
.click>div:nth-child(2){
  background-color: #ACE8E5;
  color: white;
  border: 1px solid white;
}

/**제품상세**/
.detail{
  min-height: 700px;
  
}
.detail>div:nth-child(1){
  text-align: center;
  line-height: 60px;
  font-size: 17px;
  font-weight: 500;
}

/**리뷰**/
.review{
  padding-left: 70px;
  padding-right: 70px;
}
.review>div:nth-child(1){
  text-align: center;
  line-height: 60px;
  font-size: 17px;
  font-weight: 500;
}
.review>.rv{
  display: grid;
  grid-template-columns: 4fr 1fr 1fr;
}
.review>div:nth-child(2){
  border-top: 3px solid #ACE8E5;
  border-bottom: 3px solid #ACE8E5;
}
.cont:last-child{
  border-bottom: 3px solid #ACE8E5;
}
.cont{
  border-bottom: 1px solid #ACE8E5;
}
    
</style>
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

        <div class="mall main">

          <div>YeSS Mall > 카테고리명 > 제품명</div>

            <div class="iteminfo">
              <div class="itemimg">
                <img src="../resources/img/mall/image 41.png" id="itemimg">
              </div>
              <div id="itemtxt">
                <div>제품명</div>
                <div>가격</div>
                <div>수량</div>
                <div id="cart-bttn">장바구니버튼</div>
              </div>
            </div>

            <div class="click">
              <div href="">Detail</div>
              <div href="" >Review</div>
            </div>

            <div class="detail">
              <div>Detail</div>
              difjsfjdsjfsdfjdsjflsfsjdl
              사진
              사진
              사진
              내용
            </div>

            <div class="click">
              <div href="">Detail</div>
              <div href="" >Review</div>
            </div>

            <div class="review">
              <div>Review</div>
              <div class="rv">
                <div>제목</div>
                <div>작성자</div>
                <div>작성일</div>
              </div>
              <div class="rv cont">
                <div>너무 귀여워요~~~</div>
                <div>환경운동가</div>
                <div>22.12.18</div>
              </div>
              <div class="rv cont">
                <div>너무 귀여워요~~~</div>
                <div>환경운동가</div>
                <div>22.12.18</div>
              </div>
              <div class="rv cont">
                <div>너무 귀여워요~~~</div>
                <div>환경운동가</div>
                <div>22.12.18</div>
              </div>
            </div>

        </div>


    </div>

<%@ include file="../common/footer.jsp" %>
</body>
</html>