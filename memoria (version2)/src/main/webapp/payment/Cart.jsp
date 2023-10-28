<%@page import="cart.CartListDTO"%>
<%@page import="cart.CartDAO"%>
<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Cart.css">
<title>Cart</title>
</head>
<body>
			<script src="Cart.js"></script>
	<header>
		<%@include file="../../header/Header.jsp"%>
	</header>
	<%
	CartDAO dao = new CartDAO();
	ArrayList<CartListDTO> list = dao.cartSelect();
	%>
	

	<div id="positionset">
		<div id="udpatepopup">
			<iframe src="OptionUpdate.jsp?" id='myFrame' width="500px"
				height="330px"></iframe>
		</div>
	</div>


	<main>
		<div class="p-box">
			<div class="productList pgroup">
				<p class="basket-product">장바구니상품</p>
				<ul class="basket-header">
					<li class="header-product">제품</li>
					<li class="header-price">가격</li>
					<li class="header-cnt">수량</li>
					<li class="header-order">주문관리</li>
					<li class="header-allprice">총 합계</li>
				</ul>

				<div class="innerList">
					<%
					int total = 0;
					for (CartListDTO dto : list) {
						total += dto.getPrice() * dto.getCnt();
					%>
					<ul class="paymentList-ul">
						<li><img class="product-img1" src="../image2/장미_5x5.jpg"
							alt="상품이미지"></li>
						<div class="name">
							<li><span class="product-KName"><%=dto.getName()%></span></li>
							<li><span class="product-EName"><%=dto.getEname()%></span></li>
						</div>
						<li><span class="price"><%=dto.getPrice()%></span></li>
						<li><span class="stock"><%=dto.getCnt()%></span></li>
						<li><button id = "optionUpdate"class="optionUpdate" onclick="openpopup('<%=dto.getProductid()%>','<%=dto.getCnt()%>','<%=dto.getCartid()%>')">옵션수정</button></li>
						<li><span class="total"><%=total%></span></li>
					</ul>
					<%
					}
					%>
				</div>
			</div>

			<aside class="payGroup pgroup">
				<div class="sticky-block">
					<p class="order-product">주문 상품</p>
					<form>
						<ul class="payGroup-ul p__ul">
							<li>상품금액<span id="p_price"><%=total %></span></li>
							<li>배송비 <span>3000</span></li>
						</ul>

						<div class="total-output">
							<p class="total-pay">
								총결제금액 <span id="total"><%=total + 3000 %></span>
							</p>
							<input type="submit" class="total-btn" form="list_info"
								value="결제">
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