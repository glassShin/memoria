<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeMain</title>
<link href="PerfumeMain.css" rel="stylesheet" type="text/css" />
<link href="Slide.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<!-- section -->
	<main>
		<section>
			<!-- 슬라이드 -->
			<div class="slide slide_wrap">
				<div class="slide_item item1"></div>
				<div class="slide_item item2"></div>
				<div class="slide_item item3"></div>
				<div class="slide_prev_button slide_button">
					<img class="Direction-img" src="../Main-image/왼쪽.png">
				</div>
				<div class="slide_next_button slide_button">
					<img class="Direction-img" src="../Main-image/오른쪽.png">
				</div>
				<ul class="slide_pagination"></ul>
			</div>
			<!-- 상품슬라이드 -->
			<div class="product-slide"></div>
			<!-- 중간 문구 -->
			<div class="image-moonjang">
			<p class="moonjang">Sometimes, what is not visible <br> can awaken the most intense memories</p>
			</div>
			
			
			<!-- 상품이동 페이지 -->
			<div class="product-page">
				<div class="product-img-r">
					<img class="perfume-img" src="../Main-image/향수페이지3.jpg">
				</div>
				<div class="product-moonjang-r">
					<p class="r-Title">나만의 DIY 하러가기</p>
					<p class="r-moonjang">내가 원하는 향으로 나를 위한,<br>가장 잘 어울리는 나만의 향을 완성해 보세요</p>
					<button class="product-btn-r btn">보러가기</button>
				</div>
					<div class="product-img-l">
						<img class="perfume-img" src="../Main-image/향수페이지2.jpg">
					</div>
					<div class="product-moonjang-l">
						<p class="l-Title">향수 사러가기</p>
						<p class="l-moonjang">내가 원하는 향으로 나만의 향수를 만들어보세요.</p>
						<a href="../Board/PerfumeBoard.jpg" class="product-btn-l">보러가기</a>
					</div>
			</div>
		</section>
	</main>
	
	<!-- 슬라이드js -->
	<script src="Slide.js"></script>

	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>
</body>
</html>