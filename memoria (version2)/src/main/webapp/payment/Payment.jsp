<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Payment.css" rel="stylesheet" type="text/css" />
<title>Payment</title>
</head>
<body>
   <!-- 공통 상단메뉴-->
   <jsp:include page="../header/Header.jsp" />

   <!-- section -->
   <section>
      <div class="total">
      <form method="post" action="">
      <div class="left-content">
         <!-- 배송지 작성 -->   
         <div class="delivery">
            <p class="delivery-info">배송지 정보</p>
            <p class="delivery-p">배송지를 입력해 주세요.</p>
            <ul class="delivery-ul">
               <li><input type="text" class="u_line" name="name" placeholder="이름"></li>
               <li><input type="text" class="u_code" name="postal_code" placeholder="우편번호"></li>
               <input type="submit" value="우편주소" class="code_btn" >
               <li><input type="text" class="u_line" name="add" placeholder="주소"></li>
               <li><input type="tel" class="u_line" name="phonenum" placeholder="전화번호"></li>
            </ul>
         </div>
      </div>   
         <!-- 주문내역 -->
         <div class="p-box">
            <p class="order-p">주문상세내역</p>
            <div class="productList pgroup">
            <ul class="basket-header">
               <li class="header-product">제품</li>
               <li class="header-price">가격</li>
               <li class="header-cnt">수량</li>
               <li class="header-allprice">총 합계</li>
            </ul>
            <div class="innerList">
            <ul class="paymentList-ul">
               <li><img class="product-img1" src="../image2/장미_5x5.jpg" alt="상품이미지"></li>
            <div class="name">
               <li><span class="product-KName">테스트</span></li>
               <li><span class="product-EName">test</span></li>
            </div>
               <li><span class="price">40000</span></li>
               <li><span class="stock">1</span></li>
               <li><span class="total-pay">40000</span></li>
            </ul>
            </div>
            </div>      
         </div>
               <input type="submit" value="결제하기" class="pay_btn">
      </form>
      </div>
   </section>

   <!-- 공통footer -->
   <div class="footer-all">
      <%@include file="../../Footer/Footer.jsp"%>
   </div>
</body>
</html>