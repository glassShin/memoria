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
								<span class="item-price"><%=dto.getP_price()%></span>
								 <select name="quantity" id="quantity_<%=dto.getP_id()%>" onchange="updateTotal('<%=dto.getP_id()%>','<%=dto.getP_price()%>')"> 
									<option value='q-choice' selected disabled>수량</option>
									<option value='1'>1</option>
									<option value='2'>2</option>
									<option value='3'>3</option>
								</select> <span class="all-price" id="total_price_<%=dto.getP_id()%>"><%=dto.getP_price()%></span>
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
			<!-- JavaScript 코드 블록을 페이지 하단에 추가합니다. -->
			function updateTotal(productid,price) {
			    var quantitySelect = document.getElementById("quantity_" + productid);
			    var totalPriceElement = document.getElementById("total_price_" + productid);
			    var selectedQuantity = quantitySelect.options[quantitySelect.selectedIndex].value;
			    var productPrice = price; // 제품 가격을 가져오는 방식에 따라 수정
			    var total = selectedQuantity * productPrice;
			    console.log(selectedQuantity +' '+ productPrice)
			    var temp_total = total.toLocaleString();
			    totalPriceElement.textContent = temp_total;  
			}
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