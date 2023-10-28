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
	<section>
		<p class="delivery-info">배송지 정보</p>
		<form method="post" action="">
			<div class="delivery">
				<ul class="delivery-ul">
					<li class="delivery-li">이름</li>
					<li><input type="text" class="u_line" name="name"></li>
					<li class="delivery-li">우편번호</li>
					<li ><input type="text" class="u_code" name="postal_code"></li>
					<input type="submit" value="우편주소" class="code_btn">
					<li class="delivery-li">주소</li>
					<li><input type="text" class="u_line" name="add"></li>
					<li class="delivery-li">전화번호</li>
					<li><input type="tel" class="u_line" name="phonenum"></li>
				</ul>
			</div>
			<!-- 결제방법  -->
			<p>결제방법</p>
			<div>
			
			</div>
			<!-- 주문내역 -->
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
						<form method="post" action="../MyPage/Payment.jsp" id="list_info">
							<ul class="paymentList-ul">
								<li><img class="product-img1" src="../image2/장미_5x5.jpg" alt="상품이미지"></li>
							<div class="name">
								<li><span class="product-KName">테스트</span></li>
								<li><span class="product-EName">test</span></li>
							</div>
								<li><span class="price">40000</span></li>
								<li><span class="stock">1</span></li>
								<li><button class="qu">옵션수정</button></li>
								<li><span class="total">40000</span></li>
							</ul>
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