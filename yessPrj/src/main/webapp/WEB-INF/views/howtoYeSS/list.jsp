<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  * 
  {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
  }
  
  .search-field {
    margin-bottom: 100px;
    width: 440px;
    border-radius: 50px;
    border: 0px;
    background-color: #ACE8E5;
      margin-left: 60%;
  }
  
  .select {
    margin-left: 10px;
    font-size: 18px;
  }
  
  .col-lg-3 {
      padding: 100px;
  }
  
  .search-field>* {
    cursor: pointer;
    border: 0px;
    background-color: #ACE8E5;
    outline: none;
  }
  
  .search {
    width: 200px;
    height: 45px;
    cursor: text;
  }
  
  i:before {
    content: '\f52a';
    font-family: bootstrap-icons;
    font-size: 20px;
  }
  
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
  }
  </style>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
    <div class="head">
       <span>How to YeSS</span>
       <img class="headimg" src="/resources/img/HowtoYess/HowtoYessMain.png">
    </div>
    <fieldset class="search-field">
        <select class="select">
            <option>생활용품</option>
            <option>욕실 / 주방용품</option>
            <option>가전제품</option>
            <option>화학용품</option>
            <option>패션 / 잡화</option>
            <option>용기 / 포장</option>
            <option>식품</option>
            <option>기타</option>
        </select>
        <input type="search" class="search">
        <button type="submit"><i class="bi bi-search bi-5x"></i></button>
    </fieldset>
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">생활용품</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">욕실 / 주방용품</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">가전제품</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">화학용품</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">패션 / 잡화</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">용기 / 포장</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">식품</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="card" style="width: 18rem;">
                <img src="./바탕화면1(흐린꽃병).png" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">기타</h5>
                  <p class="card-text">어떤것들이있을까요~?</p>
                  <a href="#" class="btn btn-primary">자세히보기</a>
                </div>
            </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <%@ include file="../common/footer.jsp" %>
</body>
</html>