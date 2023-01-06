<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
/**/
.mall{
    width: 1200px;
    margin: auto;
    text-align: center;
}
.top{
    font-weight: 600;
    font-size: 40px;
    line-height: 40px;
    color: rgb(41, 41, 41);
    height: 150px;
    line-height: 150px;
}

#list-top,#list-bottom{
    border-top: 3px solid #ACE8E5;
    border-bottom: 3px solid #ACE8E5;
    font-weight: 600;
}
#list-top>div, #a>div{
    color: #0096C6;
}
/**수량버튼**/
input[type=number]{
    width: 100px;
    text-align: center;
    border-radius: 20px;
    background-color: #ACE8E5;
    border: none;
}
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
   opacity: 1;
}
.cartlist{
    text-align: center;
    display: grid;
	grid-template-columns: 1fr 2fr 3fr 3fr 3fr;
    height: 50px;
    align-content: center;
}
#list-bottom{
    height: 130px;
    line-height: 35px;
}

#b{
    font-size: 12px;
    font-weight: 250;
}
/*주문버튼*/
.bttn{
    height: 100px;
    display: flex;
    align-items: center;
    justify-content: center;
}
#bottom-bttn{
    background-color: #ACE8E5;
    height: 30px;
    line-height: 30px;
    width: 100px ;
    text-align: center;
}
#bottom-bttn:hover{
    background-color: #0096C6;
}
</style>
<body>
    <%@ include file="../common/header.jsp" %>
    <div class="head">
        <span>YeSS Mall</span>
       <img class="headimg" src="../resources/img/mall/image 71.png">
    </div>

    <div class="container">
        <div class="mall top">
            <div>Cart</div>
        </div>
	
			<form id="cart-area">
		        <div class="mall main">
		            <div class="cartlist" id="list-top">
		                <div><input id="all" type="checkbox" onclick='checkAll(this)'><label for="all"></label></div>
		                <div>제품</div>
		                <div>수량</div>
		                <div>금액</div>
		            </div>
		            
		            <c:forEach var="cartList" items="${cartList}" step="1" varStatus="st">	
			            <div class="cartlist" id="list">
			                <div><input id="check${st.index}" type="checkbox" name="check" value="${cartList.prodNo}"></div>
			                <div>${cartList.changeName}</div>
			                <div>${cartList.prodName}</div>
			                <div>
			                	<button type="button" class="plus-btn" onclick='plusCnt("${st.index}")'>+</button>
				                <input type="number" class="quantity" id="cnt${st.index}" name="cnt" value="${cartList.cnt}">
				            	<button type="button" class="minus-btn" onclick='minusCnt("${st.index}")'>-</button>
				            </div>
			                <div id="price${st.index}">${cartList.prodPrice}</div>
			            </div>
		           </c:forEach>

				   
				   <script>
					// 리스트 사이즈
					const size = "${fn:length(list)}";
					console.log("size : "+size);

					// 전체 금액 계산
					var totalPrice = 3000;
					function countTotal(){
						for(var i = 0; i < size; i++) {
		             		var isChecked = $("#check"+i).is(":checked"); //체크 여부 판단
							if(isChecked){
								var price = parseInt(price);
								var cnt = $("#cnt"+i).val();
								var count = price*cnt;
								totalPrice += count;
							}
						}
						console.log(totalPrice);
						$('#totalPrice').text(totalPrice);
					}

					//수량버튼 조작
					//수량추가버튼	
						function plusCnt(i){
							var quantity = $("#cnt"+i).val();
							$("#cnt"+i).val(++quantity);
							countTotal();
						}
					//수량감소버튼
						function minusCnt(i){
							var quantity = $("#cnt"+i).val();
							if(quantity <= 1){
								return false;									
							}
							$("#cnt"+i).val(--quantity);
							countTotal();
						}
						//전체 체크
						// function checkAll(selectAll)  {
						// 	const checkboxes 
						// 		= document.getElementsByName('check');
							
						// 	checkboxes.forEach((checkbox) => {
						// 	checkbox.checked = selectAll.checked;
						// 	});
						// 	countTotal();
						// }

						function checkAll(selectAll)  {
							if($(selectAll).is(":checked")) {$("input[name=check]").prop("checked", true);}
							else {$("input[name=check]").prop("checked", false);}
							countTotal();
						}



					</script>
		           
		            <div class="cartlist" id="list-bottom">
		                <div id="b">
		                    <div>전체삭제</div>
		                    <div>선택삭제</div>
		                </div>
		                <div></div>
		                <div id="a">
		                    <div>주문금액</div>
		                    <div>배송비</div>
		                </div>
		                <div>
		                    <div> 3000 원</div>
		                    <div id="totalPrice">3000</div>
		                    <div id="b">구매금액 50000원 이상 무료배송</div>	                 	
		                 	<script type="text/javascript">
		          			

		                 	</script> 
		                    
		                    
		                </div>
		                
		            </div>
		            
		        </div>
			</form>
        
        <div class="bttn">
            <div id="bottom-bttn">주문</div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>