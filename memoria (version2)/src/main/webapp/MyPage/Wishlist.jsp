<%@page import="java.util.ArrayList"%>
<%@page import="interest.InterestDAO"%>
<%@page import="interest.InterestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Wishlist.css">
<title>Wishlist</title>
</head>
<body>
<%
String user = (String)session.getAttribute("user");

InterestDAO dao = new InterestDAO();

ArrayList<InterestDTO> list = new ArrayList<InterestDTO>();

list = dao.selectInterest(user);

%>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" /> 

	<!-- 네비바 목록 -->
	<nav>
		<div class="nav-bar">
			<p class="nav-myPage">마이페이지</p>
			<p class="logout"><a href="process/Logout.jsp">로그아웃</a></p>
			<ul class="nav-ul">
				<li class="nav-li"><a href="MyPage.jsp">회원 정보</a></li>
				<li class="nav-li"><a href="Order.jsp">주문 내역</a></li>
				<li class="nav-li"><a href="Wishlist.jsp">관심상품</a></li>
			</ul>
		</div>
	</nav>

	<!-- 가운데 콘텐츠 -->
	<main>
		<div class="p-box">
			<div class="productList pgroup">
				<p class="basket-product">관심상품 리스트</p>
				<div class="innerList">
				<%
				for(InterestDTO dto : list) {
				%>
					<ul class="paymentList-ul">
						<li><img class="product-img" src="../productimg/<%=dto.getProductid()+".png"%>" alt="상품이미지" width="80px"></li>
						<div class="name">
							<li><span class="product-KName"><%=dto.getKname() %></span></li>
							<li><span class="product-EName"><%=dto.getEname()%></span></li>
						</div>
						<div class="btn-class">
							<li><button class="detailPage-btn" onclick="location.href='../Board/detailPage.jsp?pid=<%=dto.getProductid()%>'">상세 보기</button></li>
							<li><a href="process/InterestDeleteProcess.jsp?pid=<%=dto.getProductid()%>" class="delete">삭제</a></li>
						</div>
					</ul>
					<%} %>
				</div>
			</div>
		</div>
	</main>
</body>
</html>