<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YeSS :: YESS MALL</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 아임포트 -->
<script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

</head>
<style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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
}

/**주문확인**/
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

#list-top,#list-bottom,.orderpay{
    border-top: 3px solid #ACE8E5;
    border-bottom: 3px solid #ACE8E5;
}
#list-top,#a{
    color: #0096C6;
    font-weight: 600;
}

.orderList{
    text-align: center;
    display: grid;
	grid-template-columns:  2fr 4fr 2fr 2fr 1fr;
    align-content: center;
    height: 70px;
	align-items:center;
}
.cartlist{
    text-align: center;
    display: grid;
	grid-template-columns: 6fr 2fr 2fr 1fr;
    align-content: center;
    height: 40px;
	align-items:center;
}

#list-top{
    height: 50px;
}

#list>div>img{
 width: 60px;
 height: 60px;
 background-size:cover;
}


#b{
    font-size: 12px;
    font-weight: 200;
}
.q{
    text-align: end;
}
.cartlist>div>input[type=text]{
    width: 100px;
    border: 1px solid #0096C6;
    border-radius: 10px;
    padding: 1px;
    padding-left: 10px;
    padding-right: 10px;
    text-align: right;
}
#point-bttn{
    width: 70px ;
    text-align: center;
    background-color: #ACE8E5;
    border-radius: 10px;
    font-size: 12px;
    box-shadow: 1px 1px 1px rgba(44, 44, 44, 0.8);
}

/**배송정보**/
.addr{
    display: grid;
    grid-template-columns: 2fr 10fr;
    height: 30px;
}
.orderaddr>div:nth-child(1){
    font-weight: 600;
    height: 40px;
    line-height:40px;
}
.orderaddr>div:nth-child(4){
    height: 90px;
}
.addr>div:nth-child(2){
    text-align: left;
}
.addr>div>input[type=text], .addr>div>div>input[type=text]{
    width: 500px;
    border: 1px solid #0096C6;
    border-radius: 10px;
    padding: 1px;
    padding-left: 10px;
    padding-right: 10px;
}

/**결제방법**/
.orderpay{
    height: 200px;
    align-items: center;
    line-height: 80px;
}
.pay{
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 100px;
}
.pay-bttn{
    width: 150px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    background-color: #ACE8E5;
    box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
    border-radius: 20px;
}

/**주문버튼**/
.bttn{
    height: 100px;
    display: flex;
    align-items: center;
    justify-content: center;
}
#order-bttn{
    background-color: #ACE8E5;
    height: 30px;
    line-height: 30px;
    width: 100px ;
    text-align: center;
    box-shadow: 2px 2px 2px rgba(44, 44, 44, 0.8);
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
            <div>Order</div>
        </div>

        <div class="mall main">
            <div class="cartlist" id="list-top">
                <div>제품</div>
                <div>수량</div>
                <div>금액</div>
                <div></div>
            </div>
            
            <form id="orderInfo" action="${root}/mall/pay" method="post">
            
	            <c:forEach var="orderList" items="${orderList}" step="1" varStatus="st">	
		            <div class="orderList" id="list">
		                <div><img src="${root}/resources/upload/mall/${orderList.changeName}"></div>
		                <div>${orderList.prodName}</div>
		                <div>
			                <div>${orderList.cnt}</div>
			            </div>
		                <div>${orderList.prodPrice}</div>
		            </div>
	       		</c:forEach>
	
	            <div id="list-bottom">
	                <div class="cartlist">
	                    <div></div>
	                    <div id="a">주문금액</div>
	                    <div> ${orderVo.sumPrice } </div>
	                    <div>원</div>
	                </div>
	                <div class="cartlist">
	                    <div></div>
	                    <div id="a">배송비</div>
	                    <div> 3000 </div>
	                    <div>원</div>
	                </div>
	                <div class="cartlist">
	                    <div class="q" id="a">보유 포인트 ${loginMember.addPoint} 원</div>
	                    <div id="a">사용 포인트</div>
	                    <div><input type="number" name="usePoint" id="usePoint" min="0" max="${loginMember.addPoint}" value="0"> 원</div>
	                    <div id="point-bttn">전액사용</div>
	                </div>
	                <div class="cartlist">
	                    <div></div>
	                    <div id="a">총금액</div>
	                    <div id="sumPrice2">${totalPrice}</div>
	                    <input type="hidden" name="sumPrice" id="sumPrice">
	                    <div>원</div>
	                </div>
					<script type="text/javascript">
                        $("#usePoint").keyup(function(){
                            var totalPrice = "${totalPrice}"; //배송비 포함된 주문금액
                            console.log(totalPrice);
                            var usePoint = $("#usePoint").val(); //사용할 포인트  (보유한 포인트보다 클 수는 없음)
                            var addPoint = "${loginMember.addPoint}" //회원이 보유한 포인트
                            if(usePoint > addPoint){
                                usePoint = addPoint;
                            }                          
                            if(usePoint <= addPoint){
	                            var sumPrice = totalPrice - usePoint; //총합계금액 = 주문금액 - 사용포인트							                            	
                            }
                            var plusPoint = sumPrice * 0.05; //적립될 금액 = 총합계금액 * 5%
                            
                            
                            console.log(plusPoint);
                            $("#sumPrice").val(sumPrice);
                            $("#sumPrice2").text(sumPrice);
                            $("#plusPoint").text(plusPoint);
                        })
	                    
                        
                        $('#point-bttn').on("click",function(){
                        	var usePoint = $("#usePoint").val(); //사용할 포인트  (보유한 포인트보다 클 수는 없음)
                            var addPoint = "${loginMember.addPoint}" //회원이 보유한 포인트
                            
                        	console.log(addPoint);
                        	$("#usePoint").val(addPoint);
                        	console.log(usePoint);
                        })
					</script>
					
					<div class="cartlist">
	                    <div></div>
	                    <div id="a">적립예정금액</div>
	                    <div id="plusPoint"></div>
	                    <div>원</div>
	                </div>
	                <div class="cartlist">
	                    <div></div><div></div>
	                    <div id="b">구매금액의 5% 적립</div>
	                </div>
	            </div>
	            <div class="orderaddr">
	                <div class="addr">배송정보</div>
	                <div class="addr">
	                    <div id="a">수령인</div>
	                    <div> <input type="text" name="name" value="${loginMember.name }"> </div>
	                </div>
	                <div class="addr">
	                    <div id="a">연락처</div>
	                    <div> <input type="text" name="phone" value="${loginMember.phone }"> </div>
	                </div>
	                <div class="addr">
	                    <div id="a">주소</div>
	                    <div>
		                    <div> <input type="text" name="addr1" value="${loginMember.addr1}"> </div>
		                	<div> <input type="text" name="addr2" value="${loginMember.addr2}"> </div>
		                	<div> <input type="text" name="addr3" value="${loginMember.addr3}"> </div>
						</div>	                
	                </div>
	            </div>
	            <div class="orderpay">
	                <div id="a">결제수단</div>
	                <div class="pay">
	                    <div class="pay-bttn">무통장입금</div>
	                    <div class="pay-bttn">카드결제</div>
	                    <div class="pay-bttn" id="kakaopay">kakao pay</div>
	                </div>
	            </div>
	            
	    	</form>
	    	
	    	<script>
	    	//카카오 결제  API
	    	IMP.init(imp57435037);
	    	
	    	$("#kakaopay").click(function(){
	    		
		    	IMP.request_pay({
		    	    pg : 'kakaopay',
		    	    pay_method : 'card', //생략 가능
		    	    merchant_uid: 'order_no'+new Date().getTime(), // 상점에서 관리하는 주문 번호
		    	    name : 'abc',
		    	    amount : 3,
		    	    buyer_email : 'iamport@siot.do',
		    	    buyer_name : '구매자이름',
		    	    buyer_tel : '010-1234-5678',
		    	    buyer_addr : '서울특별시 강남구 삼성동',
		    	    buyer_postcode : '123-456'
		    	}, function(rsp) { // callback 로직
		    		if(rsp.success){//결제 성공시
		    			alert("결제가 완료되었습니다. 주문 버튼을 이용해 주문을 완료해 주세요.")
		    			
		    			console.log("결제성공");
		    		
		    		}else{
		    			alert("결제 실패");
		    		}
		    		//* ...중략 (README 파일에서 상세 샘플코드를 확인하세요)... *//
		    	});
	    	})
	    	
	    	</script>
        </div>
        
        <div class="bttn">
            <div id="order-bttn">주문</div>
        </div>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>