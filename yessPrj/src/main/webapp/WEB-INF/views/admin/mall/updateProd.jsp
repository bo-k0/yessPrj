<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
        color: #454545;
}
/** 몰 헤더 사진 **/
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
.container{
    justify-content: center;
    margin: auto;
}
.mall{
   width: 1200px;
   margin: auto;
}
.top{
    width: 1200px;
    height: 100px;
    display: grid;
    grid-template-columns: 1fr 0.5fr 1fr 10fr;
    line-height: 100px;
}

.bttn{
    justify-content: center;
}
#bottom-bttn{
    width: 60px;
    height: 25px;
    margin: auto;
    border: none;
    border-radius: 1px;
    background-color: #C9F0EE;
    box-shadow: 1px 1px 3px gray;
}
#bottom-bttn:hover{
    background-color: #0096C6;
}
</style>
<body>
    <%@ include file="../common/header.jsp" %>
    
    <div class="head">
        <span>YeSS Mall</span>
       <img class="headimg" src="${root}/resources/img/mall/image 71.png">
    </div>

    <div class="container">

        <div class="mall top">
            <div>YeSS Mall</div>

        </div>

        <div class="mall main">

            <div class="prod">
	            <form action="/yess/admin/mall/updateProd" method="post" enctype="multipart/form-data">
	            
	            	<input type="hidden" name="prodNo" value=${prod.prodNo }>
		            <table>
		                <tr>
		                    <td>제품명 :</td>
		                    <td><input type="text" name="prodName" value="${prod.prodName}"></td>
		                </tr>
		                <tr>
		                    <td>카테고리</td>
		                    <td>
		                        <select id="option" name="prodCateNo">
		                            <option value="0" selected>선택</option>
		                            <option value="1"<c:if test='${prod.prodCateNo eq 1}'>selected</c:if>>생활용품</option>
		                            <option value="2"<c:if test='${prod.prodCateNo eq 2}'>selected</c:if>>욕실용품</option>
		                            <option value="3"<c:if test='${prod.prodCateNo eq 3}'>selected</c:if>>주방용품</option>
		                            <option value="4"<c:if test='${prod.prodCateNo eq 4}'>selected</c:if>>일회용품</option>
		                            <option value="5"<c:if test='${prod.prodCateNo eq 5}'>selected</c:if>>패션잡화</option>
		                        </select>
		                    </td>
		                </tr>
		                <tr>
		                    <td>제품소개 : </td>
		                    <td><input rows="10" style="resize:none;" name="prodInfo" value="${prod.prodInfo}"></input></td>
		                </tr>
		                <tr>
		                    <td>가격 : </td>
		                    <td><input type="text" name="prodPrice" value=${prod. prodPrice}></td>
		                </tr>
		                <tr>
		                    <td>재고수량 : </td>
		                    <td><input type="text" name="prodStock" value=${prod. prodStock}></td>
		                </tr>
		            </table>
		            
		            <div class="detail">
		                <textarea rows="10" cols="100" style="resize:none;" placeholder="입력하세요" name="prodDetail">${prod.prodDetail}</textarea>
		            </div>
		            
		            <label>파일업로드</label>
		            <input multiple="multiple" type="file" name="prodImg">
		            
		            <div class="bttn">
		                <button type="submit" id="bottom-bttn">등록</button>
		                <button type="reset" id="bottom-bttn">취소</button>
		            </div>
		            
	            </form>
            
            
            
            
          </div>  
        </div>
    
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>