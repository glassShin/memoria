<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="MyPage.css" rel="stylesheet" type="text/css" />
<title>MyPage</title>
</head>
<body>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<!-- 네비바 목록 -->
	<nav>
		<div class="nav-bar">
				<p class="nav-myPage">마이페이지</p>
				<p class="logout"><a href="#">로그아웃</a></p>
			<ul class="nav-ul">
				<li class="nav-li"><a href="#회원정보">회원 정보</a></li>
				<li class="nav-li"><a href="#배송주소정보">배송 정보</a></li>
				<li class="nav-li"><a href="#주문내역">주문 내역</a></li>
				<li class="nav-li"><a href="#관심상품">관심 상품</a></li>
			</ul>
		</div>
	</nav>
	<!-- 가운데 콘텐츠 -->
	<section>
		<div class="myPage-content">
			<h1>내 정보 및 주문 관리</h1>
			<p>*는 필수 입력 정보입니다</p>
			<p>000님 환영합니다.</p>
			<div>
				<ul class="myPage-ul">
					<li class="myPage-li">이름</li>
					<li class="myPage-li"><input type="text" class="u_line" name="name" placeholder="000"></li>
					<li class="myPage-li">전화번호</li>
					<li class="myPage-li"><input type="tel" class="u_line" name="phonenum"></li>
					<li class="myPage-li">생년월일</li>
					<li class="myPage-li"><input type="date" class="u_line" name="birth"></li>
				</ul>
			</div>
			<p>회원탈퇴를 하시면 메모리아 신제품 소식 및 이벤트 행사 내용과 관련된 정보를 제공받으실 수 없고 관련된 서비스의
				제공이 불가능하게 됩니다. 회원탈퇴를 원하시는 경우에는 <a href="#">여기</a> 를 클릭하세요.</p>
			<button class="myPage-btn">수정</button>
		</div>
<<<<<<< HEAD
	</section>
=======

	
	  <!-- 공통footer -->
   <div class="footer-all">
      <%@include file="../../Footer/Footer.jsp"%>
   </div>
>>>>>>> branch 'memoria_test_branch' of https://github.com/glassShin/memoria.git
</body>
</html>