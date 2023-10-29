<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="Delivery.css" rel="stylesheet" type="text/css" />
<title>Delivery Information</title>
</head>
<body>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<!-- 네비바 목록 -->
	<nav>
		<div class="nav-bar">
			<p class="nav-myPage">마이페이지</p>
			<p class="logout"><a href="process/Logout.jsp">로그아웃</a></p>
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
		<div class="delivery-content">
			<div class="delivery-info">
				<h3 class="add-info">주소</h3>
				<ul>
					<li><p class="">이름</p></li>
					<li><p class="">우편번호</p></li>
					<li><p class="">주소</p></li>
					<li><p class="">상세주소</p></li>
					<li><p class="">전화 번호</p></li>
				</ul>
			</div>
			<div class="">
				<h3 class="add-info">다른 주소로 배송</h3>
				<ul>
					<li><p class="">이름</p></li>
					<li><p class="">우편번호</p></li>
					<li><p class="">주소</p></li>
					<li><p class="">상세주소</p></li>
					<li><p class="">전화 번호</p></li>
				</ul>
			</div>
		</div>
</body>
</html>