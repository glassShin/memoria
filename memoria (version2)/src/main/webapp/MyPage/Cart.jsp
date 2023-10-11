<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Cart.css">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<ProductDTO> list = (ArrayList<ProductDTO>) session.getAttribute("cart");
	%>
	<header>
		<%@include file="../../header/Header.jsp"%>
	</header>



	<main>
		<div class="p-box">
			<div class="productList pgroup">
				<p class="basket-product">장바구니상품</p>
				<div class="innerList">
					<ul class="paymentList-ul p-ul">
						<%
						if (list != null) {
							for (ProductDTO dto : list) {
						%>
						<li>
							<div class="li-inner">
								<img src="" alt="이미지 준비중" class="p-img">
								<p class="p-name">
									<%=dto.getP_kname()%>
								</p>
								<span class="item-price"><%=dto.getP_price()%></span> <select
									name="quantity" id="quantity_<%=dto.getP_id()%>">
									<option value='q-choice' selected disabled>수량</option>
									<option value='q-one'>1</option>
									<option value='q-two'>2</option>
									<option value='q-three'>3</option>
								</select> <span class="all-price" id="total_price_<%=dto.getP_id()%>"></span>
							</div>
						</li>
						<%
						}
						}
						%>
					</ul>
				</div>
			</div>
			<script>
			 // JavaScript를 사용하여 수량이 변경될 때 총 합계 업데이트
		    var products = document.querySelectorAll('.p-ul li');

		    products.forEach(function (product) {
		        var select = product.querySelector('select');
		        var price = parseFloat(product.querySelector('.item-price').textContent);

		        select.addEventListener('change', function () {
		            var quantity = parseInt(select.value.replace('q-', ''));
		            if (isNaN(quantity)) {
		                quantity = 0; // NaN인 경우 0으로 설정
		            }
		            var total = quantity * price;
		            product.querySelector('.all-price').textContent = '총합계: ' + total;
		        });
		    });
			</script>

			<aside class="payGroup pgroup">
				<div class="sticky-block">
					<p class="order-product">주문 상품</p>
					<form>
						<ul class="payGroup-ul p-ul">
							<li>상품금액 <span>10,000</span></li>
							<li>할인금액 <span>1,000</span></li>
							<li>배송비 <span>50,000</span></li>
						</ul>

						<div class="total-output">
							<p class="total-pay">
								총결제금액 <span>1,000,000</span>
							</p>
							<button type="button" class="total-btn">결제</button>
						</div>
					</form>

				</div>
			</aside>

		</div>


	</main>

	<!--  -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>

</body>
</html>