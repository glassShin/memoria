<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="Cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<main>
		<div class="p-box">
			<div class="productList pgroup">
				<p class="basket-product">장바구니상품</p>
				<div class="carte-header">
					<p class="carte-header-p">상품</p>
					<p class="carte-header-p">가격</p>
					<p class="carte-header-p">수량</p>
					<p class="carte-header-p">총 합계</p>
				</div>
				<div class="innerList">
					<ul class="paymentList-ul p__ul">
						<li>장바구니 테스트</li>
						<li>장바구니 테스트</li>
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
							<li>상품금액 <span>10,000</span></li>
							<li>할인금액 <span>1,000</span></li>
							<li>배송비 <span>50,000</span></li>
						</ul>
						<div class="total-output">
							<p class="total-pay">
								총결제금액 <span>1,000,000</span>
							</p>
							<button type="button" class="total-btn">결제</button>
						</div>
					</form>
				</div>
			</aside>
		</div>
	</main>

	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>
</body>
</html>