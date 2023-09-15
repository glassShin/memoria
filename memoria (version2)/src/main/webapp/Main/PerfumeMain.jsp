<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeMain</title>
<link href="PerfumeMain.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 공통 상단메뉴-->
<jsp:include page="../header/Header.jsp"/>

<!-- section -->
<section>
<div id="sec-img-all">
<div class="sec-img-r">
	<div class="r-element">
	<h2>나만의 향수 만들기</h2><br>
	<button type="button" onclick="location.href='../Board/PerfumeDIYBoard.jsp'" class="btn-l">보러가기</button>
	</div>
</div>
<div class="sec-img-l">
	<div class="l-element">
	<h2>향수 사러가기</h2><br>
	<button type="button" onclick="#" class="btn-r">보러가기</button>
	</div>
</div>
</div>

<!-- 멘트 -->
<div id="moonjang">
	<h3 class="moonjang-t">향기로 좋은 추억을 기억하다.</h3>
	<p>혹시 좋은 추억을 떠올리는 향이 있나요<br>
		좋은 향기로 좋은 추억을 선물하세요</p>
</div>

<!-- 비디오 -->
<div id ="perfume-video">

</div>

<!-- 추천향수 -->
<div id="Perfume-recommend">
	<h3>000님을 위한 향수 추천</h3>
	
	<div class="user-recommend">
		<div  class="card-img">
  			
		</div>
		<div class="card-head">
			<h3 class="card-title">향수 영어이름</h3>
			<h3 class="card-title">향수이름</h3>
    	</div>
    	<div class="card-main">
			<p class="price">₩50000 100ml</p>
    	</div>
	</div>
</div>

</section>

<!-- 공통footer -->
<%@include file = "../../Footer/Footer.jsp" %>
</body>
</html>