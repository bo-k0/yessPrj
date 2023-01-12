<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESSMALL</title>
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: #454545;
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

/**페이징**/
.page {
	width: 200px;
	margin: auto;
	height: 100px;
	margin:auto;
}

#addProd{
	background-color: #454545;
    height: 30px;
    line-height: 30px;
    width: 100px ;
    border-radius: 10px;
    text-align: center;
    margin: auto;
}
#addProd>a{
	color:white;
}
#addProd:hover{
	background-color:gray;
}
</style>
</head>
<body>
  <%@ include file="../common/header.jsp" %>
  <%@ include file="../mall/mallheader.jsp"%>
  
  
  
  <div id="container">
    
	    <div class="mall list">
	    		
			<c:forEach var="malllist" items="${malllist }" begin="0" end="15" step="1">	
		      <div id="item">
		      <a href="/yess/admin/mall/detail?no=${malllist.prodNo }">
		        <div><img src="${root}/resources/upload/mall/${malllist.changeName}"></div>
	            ${malllist.prodName }
	            <div>${malllist.prodPrice } 원</div>
	            </a>
	          </div>
			</c:forEach>
	         
	    </div>
    
         <div class="page">
			<c:if test="${pv.startPage != 1}">
				<a href="#" onclick="return chk_form('1')"><i class="fa-solid fa-angles-left"></i></a>
				<a href="#" onclick="return chk_form('${pv.startPage-1}')"><i class="fa-solid fa-angle-left"></i></a>
			</c:if>
			<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }" step="1">
				<c:choose>
					<c:when test="${pv.currentPage == i}"><a id="currentPage">${i}</a></c:when>
					<c:otherwise><a href="${root }/admin/mall/list?p=${i}" onclick="return chk_form('${i}')">${i}</a></c:otherwise>
				</c:choose>	
			</c:forEach>
			<c:if test="${pv.endPage != pv.maxPage}">
				<a href="#" onclick="return chk_form('${pv.endPage+1}')"><i class="fa-solid fa-angle-right"></i></a>
				<a href="#" onclick="return chk_form('${pv.maxPage}')"><i class="fa-solid fa-angles-right"></i></a>
			</c:if>
		</div>

		<div id="addProd"><a href="${root}/admin/mall/adminadd">제품등록</a></div>
    
    <br><br><br>
  </div>

      
 <%@ include file="../common/footer.jsp" %>
</body>
</html>