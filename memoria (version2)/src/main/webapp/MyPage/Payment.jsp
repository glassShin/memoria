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
		<p>배송지 정보</p>
		<form method="post" action="">
			<div class="delivery">
				<ul class="delivery-ul">
					<li>이름</li>
					<li><input type="text" class="u_line" name="name"></li>
					<li>우편번호</li>
					<li><input type="text" class="u_code" name="postal_code"></li>
					<input type="submit" value="우편주소" class="code_btn">
					<li>주소</li>
					<li><input type="text" class="u_line" name="add"></li>
					<li>전화번호</li>
					<li><input type="tel" class="u_line" name="phonenum"></li>
					<li><input type="submit" value="결제하기" class="pay_btn"></li>
				</ul>
			</div>
			<div class="">
			
			
			</div>
			<div class="">
			
			
			</div>
			
		</form>
		
		
	</section>

	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>
</body>
</html>