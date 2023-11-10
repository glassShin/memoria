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
				<li class="nav-li"><a href="Order.jsp">주문 내역</a></li>
			</ul>
		</div>
	</nav>
	<!-- 가운데 콘텐츠 -->
	<section>
		<div class="delivery-content">
			<div class="delivery-info1">
				<h3 class="add">주소</h3>
				<ul class="add-ul">
					<li class="add-li"><p class="">이름</p></li>
					<li class="add-li"><p class="">우편번호</p></li>
					<li class="add-li"><p class="">주소</p></li>
					<li class="add-li"><p class="">상세주소</p></li>
					<li class="add-li"><p class="">전화 번호</p></li>
				</ul>
			</div>
			<div class="delivery-info2">
				<h3 class="different-add">다른 주소로 배송</h3>
				<ul class="add-ul">
					<li><p class="">이름</p></li>
					<li><p class="">우편번호</p></li>
					<li><p class="">주소</p></li>
					<li><p class="">상세주소</p></li>
					<li><p class="">전화 번호</p></li>
				</ul>
			</div>
		</div>
	</section>
</body>
</html>