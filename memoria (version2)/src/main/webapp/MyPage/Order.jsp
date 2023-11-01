<%@page import="java.util.ArrayList"%>
<%@page import="cart.CartListDTO"%>
<%@page import="cart.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Order.css" rel="stylesheet" type="text/css" />
<title>Order Details</title>
</head>
<body>
	<%
	String email = (String) session.getAttribute("user");
	ArrayList<CartListDTO> list = new ArrayList<CartListDTO>();
	CartDAO dao = new CartDAO();
	list = dao.cartSelect(email);
	%>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<!-- 네비바 목록 -->
	<nav>
		<div class="nav-bar">
			<p class="nav-myPage">마이페이지</p>
			<p class="logout">
				<p class="logout"><a href="process/Logout.jsp">로그아웃</a></p>
			</p>
			<ul class="nav-ul">
				<li class="nav-li"><a href="MyPage.jsp">회원 정보</a></li>
				<li class="nav-li"><a href="Delivery.jsp">배송 정보</a></li>
				<li class="nav-li"><a href="Order.jsp">주문 내역</a></li>
				<li class="nav-li"><a href="#관심상품">관심 상품</a></li>
			</ul>
		</div>
	</nav>
	<!-- 가운데 콘텐츠 -->
	<section>
		<!-- 주문내역 없을 때 -->
		<div class="order-content">
			<h3 class="order-total">주문전체보기</h3>
			<!-- 여기만 바꾸시오. -->
			<%if(list == null) { %>
			<p>고객님의 주문내역이 없습니다.</p>
			<button class="order-btn">쇼핑계속하기</button>
			<%}else { %>

			<!-- 주문내역 있을 때 -->
			<div class="p-box">
				<div class="productList pgroup">
					<ul class="basket-header">
						<li class="header-allprice">주문번호</li>
						<li class="header-product">제품</li>
						<li class="header-price">가격</li>
						<li class="header-cnt">수량</li>
						<li class="header-order">주문상태</li>
					</ul>
					<div class="innerList">
						<ul class="paymentList-ul">
							<div class="order-date">
								<li><span class="date">2023.10.19</span></li>
								<li><span class="orderNumber">2202110543</span></li>
							</div>
							<li><img class="product-img1" src="../image2/장미_5x5.jpg"
								alt="상품이미지"></li>
							<div class="name">
								<li><span class="product-KName">한국이름</span></li>
								<li><span class="product-EName">영어이름</span></li>
							</div>
							<li><span class="price">20000</span></li>
							<li><span class="stock">1</span></li>
							<div class="order-state">
								<li><span class="stock">입금완료</span></li>
								<li><button id="Cancel" class="Cancel">취소신청</button></li>
							</div>
						</ul>
					</div>
				</div>
			</div>
			<%}; %>
		</div>
	</section>
</body>
</html>