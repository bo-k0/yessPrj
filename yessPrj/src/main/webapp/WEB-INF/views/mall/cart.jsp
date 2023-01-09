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
.quantity-bttn{
	width: 40px;
	height: 25px;
 	border-radius: 10px;
    background-color: white;
    border: 1px solid #ACE8E5;
	font-size: 13px;
	line-height: 25px;
}
.quantity-bttn:hover{
    background-color: #ACE8E5;
}

#list>div>img{
 width: 60px;
 height: 60px;
 background-size:cover;
}
.cartlist{
    text-align: center;
    display: grid;
	grid-template-columns: 1fr 2fr 3fr 3fr 3fr;
    height: 70px;
	align-items:center;
    align-content: center;
}
#list-bottom{
    height: 130px;
    line-height: 35px;
}
#nothing{
	height:300px;
	line-height: 300px;
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
	
		        <div class="mall main">
		            <div class="cartlist" id="list-top">
		                <div><input id="all" type="checkbox" onclick='checkAll(this)'><label for="all"></label></div>
		                <div></div>
		                <div>제품</div>
		                <div>수량</div>
		                <div>금액</div>
		            </div>
		            
		            	<c:if test="${empty cartList }">
		            		<div id="nothing">장바구니에 제품이 없습니다.</div>
		            	</c:if>
		            	<form id="order" action="${root}/mall/order" method="get">
				            <c:forEach var="cartList" items="${cartList}" step="1" varStatus="st">	
					            <div class="cartlist" id="list">
					                <div><input id="check${st.index}" type="checkbox" name="check" value="${cartList.prodNo}" onclick='countTotal()'></div>
					                <div><img src="${root}/resources/upload/mall/${cartList.changeName}"></div>
					                <div>${cartList.prodName}</div>
					                <div>
						            	<button type="button" class="minus-btn" onclick='minusCnt("${st.index}")'>-</button>
						                <input type="number" class="quantity" id="cnt${st.index}" name="cnt" value="${cartList.cnt}" disabled>
					                	<button type="button" class="plus-btn" onclick='plusCnt("${st.index}")'>+</button>
						            </div>
									<input id="price${st.index}" type="hidden" name="price" value="${cartList.prodPrice}" disabled>
					                <div>${cartList.prodPrice}</div>
					                
					            </div>
			           		</c:forEach>
			           		<input type="hidden" id="totalPriceValue" name="totalPrice">
			           	</form>
					
					<script>
					</script>
				   
				   <script>
					// 리스트 사이즈
					const size = "${fn:length(cartList)}";
					console.log("size : "+size);

					// 전체 금액 계산
					function countTotal(){
						var totalPrice = 3000;
						for(var i = 0; i < size; i++) {
		             		var isChecked = $("#check"+i).is(":checked"); //체크 여부 판단
							if(isChecked){
								console.log(isChecked);
								var price = $("#price"+i).val();
								console.log("price : " + price);
								var cnt = $("#cnt"+i).val();
								console.log("cnt : " + cnt);
								totalPrice += price*cnt;
							}
						}
						console.log("totalPrice : " + totalPrice);
						$('#totalPrice').text(totalPrice);
						$('#totalPriceValue').val(totalPrice);
					}

					//수량버튼 조작
					//수량추가버튼	
						function plusCnt(i){
							var quantity = $("#cnt"+i).val();
							$("#cnt"+i).val(++quantity);
							
							var form = {
									memberNo : '${loginMember.no}',
									prodNo : $("#check"+i).val(),
									cnt : quantity							
							}

							$.ajax({
								url: './changeCnt',
								type: 'POST' ,
								data: form,
								success: function(result){
									countTotal();
								}
								
							})

						}
					//수량감소버튼
						function minusCnt(i){
							var quantity = $("#cnt"+i).val();
							if(quantity <= 1){
								return false;									
							}
							$("#cnt"+i).val(--quantity);
							
							var form = {
									memberNo : '${loginMember.no}',
									prodNo : $("#check"+i).val(),
									cnt : quantity							
							}

							$.ajax({
								url: './changeCnt',
								type: 'POST' ,
								data: form,
								success: function(result){
									countTotal();
								}
								
							})
						}
					
					
						//수량 변경 알림
						
						function changeAlert(result){										
							if(result == '0'){
								alert("수량 변경에 실패하였습니다.");
							}else if(result == '1'){
								alert("수량이 변경되었습니다.");
							}
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

						function checkOne(selectOne){

						}



					</script>
		           
		            <div class="cartlist" id="list-bottom">
		                <div id="b">
		                    <div>선택삭제</div>
		                </div>
		                <div></div>
		                <div id="a">
		                    <div>주문금액</div>
		                    <div>배송비</div>
		                </div>
		                <div>
		                	
		                    <div id="totalPrice"> 3000 원</div>
		                    <div>3000 원</div>
		                    <div id="b">구매금액 50000원 이상 무료배송</div>	  
		                </div>
		                
		            </div>
		            
		        </div>
        
        <div class="bttn">
            <div id="bottom-bttn" onclick='order()'>주문</div>
        </div>
        <script>
        	//체크한 상품 정보들과 함께 주문 페이지로 이동 (????제품이 여러갠데.)
        	
        
        	
        	function order(){
        		$('#order').submit();
        		
        	}
        </script>
        
        
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>