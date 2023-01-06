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
  
  /**메인**/
  .mall{
  width: 1200px;
  margin: auto;
  text-align: center;
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
#item>a>div>img{
  width: 200px;
  height: 200px;
}


</style>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  <%@ include file="../mall/mallheader.jsp"%>
  
  <div id="container">
     
    <div class="mall list">
    		
		<c:forEach var="malllist" items="${malllist }" begin="0" end="15" step="1">	
	      <div id="item"><a href="/yess/mall/detail?no=${malllist.prodNo }">
		        <div><img src="${root}/resources/upload/mall/${malllist.changeName}"></div>
	            ${malllist.prodName }
	            <div>${malllist.prodPrice } 원</div>
            </a>
          </div>
		</c:forEach>
         
    </div>
  </div>
      
 <%@ include file="../common/footer.jsp" %>
</body>
</html>