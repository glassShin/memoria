<%@page import="java.util.ArrayList"%>
<%@page import="order.OrderDAO"%>
<%@page import="order.OrderDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="DetailOrder.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
String payid = request.getParameter("payid");
String user = (String)session.getAttribute("user");

OrderDAO dao = new OrderDAO();
ArrayList<OrderDTO> list = dao.orderSelect(payid);
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
				<li class="nav-li"><a href="Order.jsp">주문 내역</a></li>
			</ul>
		</div>
	</nav>
	<!-- 가운데 콘텐츠 -->
	<section>
		<!-- 주문내역 없을 때 -->
		<div class="order-content">
			<h3 class="order-total">주문상세보기</h3>
			<!-- 주문내역 있을 때 -->
			<div class="p-box">
				<div class="productList pgroup">
					<ul class="basket-header">
						<li class="header-allprice">주문번호</li>
						<li class="header-product">제품</li>
						<li class="header-price">가격</li>
						<li class="header-price">수량</li>
						<li class="header-order">주문자</li>
						<li class="header-order">주소</li>
						<li class="header-order">전화번호</li>
						<li class="header-order">주문일자</li>
					</ul>
					<div class="innerList">
					<%for(OrderDTO dto : list) { %>
						<ul class="paymentList-ul">
							<div class="order-date">
								<li><span class="orderNumber"><%=dto.getO_id() %></span></li>
							</div>
							<li><img class="product-img1" src="../productimg/<%=dto.getProductid()+".png" %>"
								alt="상품이미지"></li>
							<div class="name">
								<li><span class="product-Info"><%=dto.getProductid() %></span></li>
							</div>
							<li><span class="price"><%=dto.getProductprice() %></span></li>
							<li><span class="price"><%=dto.getO_cnt() %></span></li>
							<li><span class="price"><%=dto.getO_user() %></span></li>
							<li><span class="price"><%=dto.getAddr() %></span></li>
							<li><span class="price"><%=dto.getO_phone() %></span></li>
							<li><span class="price"><%=dto.getO_date() %></span></li>
						</ul>
						<%}; %>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>