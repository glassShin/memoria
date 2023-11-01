<%@page import="cart.CartListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cart.CartDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Payment.css" rel="stylesheet" type="text/css" />
<title>Payment</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
</head>
<body>
<%
String user = (String)session.getAttribute("user");
MemberDTO mdto = new MemberDAO().getmember(user);

ArrayList<CartListDTO> list = new CartDAO().cartSelect(user);

String title = list.size() > 1 ? title = list.get(0).getName() + " 외 " + (list.size()-1) + "건" : list.get(0).getName();

%>
   <!-- 공통 상단메뉴-->
   <jsp:include page="../header/Header.jsp" />
<script src="payment.js"></script>
   <!-- section -->
   <section>
      <div class="total">
      <div class="left-content">
         <!-- 배송지 작성 -->   
         <div class="delivery">
            <p class="delivery-info">배송지 정보</p>
            <p class="delivery-p">배송지를 입력해 주세요.</p>
            <p id="errmsg"></p>
       <form method="post" action="process/PaymentProcess.jsp" id="deliveryInfo" onsubmit="return validateForm();">
            <ul class="delivery-ul">
               <li><input type="text" class="u_line" name="name" value="<%=mdto.getName() %>"></li>
               <li><input type="text" class="u_code" id="postcode" name="postal_code" onclick="findaddr();" placeholder="우편번호" readonly>
               <input type="button" value="우편주소"  class="code_btn" onclick="findaddr();"></li>
               <li><input type="text" class="u_line" id="address" name="addr" placeholder="주소"></li>
               <li><input type="text" class="u_detailaddr" id="detail" name="detail" placeholder="상세주소">
               <input type="text" class="u_detailaddr" id="extra" name="detail" placeholder="참고항목">
               </li>
               <li><input type="tel" class="u_line" name="phonenum" value="<%=mdto.getPhoneNum()%>"></li>
            </ul>
            </form>
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
            <% 
            int total = 0;
            
            for(CartListDTO dto : list) {
               total += dto.getPrice() * dto.getCnt();
               %>
            <div class="innerList">
            <ul class="paymentList-ul">
               <li><img class="product-img1" src="../image2/장미_5x5.jpg" alt="상품이미지"></li>
            <div class="name">
               <li><span class="product-KName"><%=dto.getName() %> <%=dto.getProductml() %></span></li>
               <li><span class="product-EName"><%=dto.getEname() %> <%=dto.getProductml() %></span></li>
            </div>
               <li><span class="price"><%=dto.getPrice() %></span></li>
               <li><span class="stock"><%=dto.getCnt() %></span></li>
               <li><span class="total-pay"><%=dto.getPrice() * dto.getCnt() %></span></li>
            </ul>
            </div>
            <%} %>
            </div>      
         </div>
             <input type=button value="결제하기" form="deliveryInfo" class="pay_btn" onclick="requestPay('<%=total%>','<%=title%>','<%=user%>')">
      </div>
   </section>

   <!-- 공통footer -->
   <div class="footer-all">
      <%@include file="../../Footer/Footer.jsp"%>
   </div>
</body>
</html>