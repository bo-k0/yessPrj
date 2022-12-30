<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
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
</style>
<body>
    <div class="head">
        <span><a href="${root }/admin/mall/list">YeSS Mall</a></span>
        <img class="headimg" src="../resources/img/mall/image 71.png">
      </div>
      
      <div class="mall top">
          <div class="category">
              <div><a href="${root }/admin/mall/list?category=1">생활용품</a></div>
              <div><a href="${root }/admin/mall/list?category=2">주방용품</a></div>
              <div><a href="${root }/admin/mall/list?category=3">욕실용품</a></div>
              <div><a href="${root }/admin/mall/list?category=4">일회용품</a></div>
              <div><a href="${root }/admin/mall/list?category=5">패션잡화</a></div>
          </div>
          <div class="searchbar">
         	 <form action="" method="get" class="search-form">
              <fieldset class="search-field">
                  <input type="search" class="search" name="search">
                  <button type="submit"><i class="bi bi-search bi-5x"></i></button>
              </fieldset>
             </form>
          </div>
  
      </div>
</body>
</html>