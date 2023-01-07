<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MALL</title>
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
  height: 360px;
  line-height: 40px;

}
#item>a>div>img{
  width: 200px;
  height: 200px;
}

/**삭제버튼**/
#bttn{
	width: 70px;
	height: 30px;
	background-color: #ACE8E5;
	font-size: 14px;
	line-height: 30px;
  border-radius: 10px;
  box-shadow: 1px 1px 1px rgba(44, 44, 44, 0.8);
  margin: auto;
}


</style>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  <%@ include file="../mall/mallheader.jsp"%>
  
  <div id="container">
     
    <div class="mall list">
    		
		<c:forEach var="zzimList" items="${zzimList }" step="1" varStatus="i">	
	      <div id="item"><a href="/yess/mall/detail?no=${zzimList.prodNo }">
		        <div><img src="${root}/resources/upload/mall/${zzimList.changeName}"></div>
	            ${zzimList.prodName }
	            <div>${zzimList.prodPrice } 원</div>
            </a>
	            <div id="bttn">
					<form id="deleteForm${i.index}" action="${root}/mall/deleteZzim" method="post">
						<input type="hidden" value="${zzimList.prodNo}" name="no">
						<a href="#" onclick='document.getElementById("deleteForm${i.index}").submit();'>삭제</a>
					</form>
				</div>
        </div>
		</c:forEach>
         
    </div>
  </div>
      
 <%@ include file="../common/footer.jsp" %>
</body>
</html>