<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="payment.css">
<title>Insert title here</title>
</head>
<body>

<header>
	<%@include file = "../../header/Header.jsp" %>
</header>

  
  
  <main> 
    <div class="p-box">
      <div class="productList pgroup">
        <p class="basket-product">장바구니상품</p>
        <div class="innerList">
          <ul class="paymentList-ul p__ul">
            <li>장바구니 테스트</li>
            <li>장바구니 테스트</li>
 
          </ul>
        </div>
      </div>	
  
  
        <aside class="payGroup pgroup">
          <div class="sticky-block">
            <p class="order-product">주문 상품</p>
            <form>
            <ul class="payGroup-ul p__ul">
              <li>상품금액  <span>10,000</span></li>
              <li>할인금액  <span>1,000</span></li>
              <li>배송비    <span>50,000</span></li>
            </ul>
            
            <div class="total-output">
              <p class="total-pay">총결제금액 <span>1,000,000</span></p>
              <button type="button" class="total-btn">결제</button>
            </div>
          </form>

          </div>
        </aside>

    </div>
 

  </main>


	<%@include file = "../../Footer/Footer.jsp" %>	

</body>
</html>