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
          <ul class="paymentList-ul p-ul">
            
            <li>
              <div class="li-inner">
                <img src="" alt="이미지 준비중" class="p-img">
                <p class="p-name">
                 1. 상품이름
                 2. 100ml 
                </p>
                  <span class="item-price">가격</span>
                    <select name="quantity">
                      <option value='q-choice' selected>수량</option>
                      <option value='q-one'>1</option>
                      <option value='q-two'>2</option>
                      <option value='q-three'>3</option>
                    </select>
                <span class="all-price">총합계</span>
              </div>
            </li> 

            <li>
              <div class="li-inner">
                <img src="" alt="이미지 준비중" class="p-img">
                <p class="p-name">
                 1. 상품이름
                 2. 100ml 
                </p>
                  <span class="item-price">가격</span>
                    <select name="quantity">
                      <option value='q-choice' selected>수량</option>
                      <option value='q-one'>1</option>
                      <option value='q-two'>2</option>
                      <option value='q-three'>3</option>
                    </select>
                <span class="all-price">총합계</span>
              </div>
            </li> 
              
            <li>
              <div class="li-inner">
                <img src="" alt="이미지 준비중" class="p-img">
                <p class="p-name">
                 1. 상품이름
                 2. 100ml 
                </p>
                  <span class="item-price">가격</span>
                    <select name="quantity">
                      <option value='q-choice' selected>수량</option>
                      <option value='q-one'>1</option>
                      <option value='q-two'>2</option>
                      <option value='q-three'>3</option>
                    </select>
                <span class="all-price">총합계</span>
              </div>
            </li> 
            
             <li>
              <div class="li-inner">
                <img src="" alt="이미지 준비중" class="p-img">
                <p class="p-name">
                 1. 상품이름
                 2. 100ml 
                </p>
                  <span class="item-price">가격</span>
                    <select name="quantity">
                      <option value='q-choice' selected>수량</option>
                      <option value='q-one'>1</option>
                      <option value='q-two'>2</option>
                      <option value='q-three'>3</option>
                    </select>
                <span class="all-price">총합계</span>
              </div>
            </li> 
            
              <li>
              <div class="li-inner">
                <img src="" alt="이미지 준비중" class="p-img">
                <p class="p-name">
                 1. 상품이름
                 2. 100ml 
                </p>
                  <span class="item-price">가격</span>
                    <select name="quantity">
                      <option value='q-choice' selected>수량</option>
                      <option value='q-one'>1</option>
                      <option value='q-two'>2</option>
                      <option value='q-three'>3</option>
                    </select>
                <span class="all-price">총합계</span>
              </div>
            </li> 

          </ul>
        </div>
      </div>
  
  
        <aside class="payGroup pgroup">
          <div class="sticky-block">
            <p class="order-product">주문 상품</p>
            <form>
            <ul class="payGroup-ul p-ul">
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


	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	

</body>
</html>