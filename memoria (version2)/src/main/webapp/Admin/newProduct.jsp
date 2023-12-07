<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="product.ProductDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="newProduct.css" />
<title>상품관리</title>
</head>
<body>
	<%
	ProductDAO dao = new ProductDAO();

	Map<String, Object> param = new HashMap<String, Object>();

	String searchField = request.getParameter("searchField");
	String searchWord = request.getParameter("searchWord");
	if (searchWord != null) {
		param.put("searchField", searchField);
		param.put("searchWord", searchWord);
	}

	int totalCount = dao.productCount(param);
	List<ProductDTO> productList = dao.selectProductInfo(param);
	dao.close();
	%>
	<main>
		<nav class="sidebar">
			<ul>
				<li><a href="newCustomer.jsp">고객 관리</a></li>
				<li><a href="newProduct.jsp">상품 관리</a></li>
			</ul>
		</nav>

		<div class="manager-section">
			<p>상품 관리</p>

			<div class="modal-bg">
				<div class="modal">
					<h3>상품 정보 수정</h3>
					<div class="exitBtn">
						<img src="../image2/exitBtn.png">
					</div>

					<!-- <div class="customer-img">
                    <img src="/management_modify/imgFolder/customer.png">
                </div>
                 -->
					<table>
						<input type="hidden" class="md-id">
						<tr>
							<th>제품ID</th>
							<td><input type="text" class="md-product"></td>
							<td><button type="button" class="product-reset"
									onclick="updateProduct('id')">수정하기</button></td>
						</tr>
						<tr>
							<th>영문이름</th>
							<td><input type="text" class="md-eng"></td>
							<td><button type="button" class="eng-reset"
									onclick="updateProduct('ename')">수정하기</button></td>
						</tr>
						<tr>
							<th>한글이름</th>
							<td><input type="text" class="md-kr"></td>
							<td><button type="button" class="kr-reset"
									onclick="updateProduct('kname')">수정하기</button></td>
						</tr>
						<tr>
							<th>가격</th>
							<td><input type="text" class="md-price"></td>
							<td><button type="button" class="price-reset"
									onclick="updateProduct('price')">수정하기</button></td>
						</tr>


					</table>

					<div class="btn-group">
						<button type="button" class="cancle-btn">취소</button>
						<button type="button" class="confirm-btn">확인</button>
					</div>
				</div>
			</div>

			<div class="customer-tb">
				<table>
					<thead>
						<tr>
							<th>제품ID</th>
							<th>영문이름</th>
							<th>한글이름</th>
							<th>가격</th>
							<th>브랜드</th>
							<th>향</th>
						</tr>
					</thead>
					<tbody>
						<%
						if (productList.isEmpty()) {
						%>
						<h2>등록된 상품정보가 없습니다.</h2>
						<%
						} else {
						int virtualNum = 1;

						for (ProductDTO dto : productList) {
						%>
						<tr>
							<td class="product-name"><%=dto.getP_id()%></td>
							<td class="eng-name"><%=dto.getP_ename()%></td>
							<td class="kr-name"><%=dto.getP_kname()%></td>
							<td class="pd-price"><%=dto.getP_price()%></td>
							<td class="pd-brand"><%=dto.getP_brand()%></td>
							<td class="pd-scent"><%=dto.getScentid()%></td>
							<td>
								<button type="button" class="info-rewrite"
									onclick="open_modal('<%=dto.getP_id()%>', '<%=dto.getP_ename()%>', '<%=dto.getP_kname()%>', '<%=dto.getP_price()%>')">정보수정</button>
							</td>
						</tr>
						<%
						}
						}
						%>

					</tbody>
				</table>
			</div>
		</div>

	</main>
	<script src="newProduct.js"></script>
	<script>
		//모달창 열기
		let infoRewrite = $('.info-rewrite');
		let modalBg = $('.modal-bg');

		for (let i = 0; i < infoRewrite.length; i++) {
			infoRewrite.eq(i).on('click', function() {
				modalBg.addClass('show-modal');
			})
		}

		//모달창 닫기
		document.querySelector('.exitBtn').addEventListener(
				'click',
				function() {
					document.querySelector('.modal-bg').classList
							.remove('show-modal');
				})
		document.querySelector('.cancle-btn').addEventListener(
				'click',
				function() {
					document.querySelector('.modal-bg').classList
							.remove('show-modal');
				})
		document.querySelector('.confirm-btn').addEventListener(
				'click',
				function() {
					document.querySelector('.modal-bg').classList
							.remove('show-modal');
					window.location.href='newProduct.jsp';
				})
	</script>
</body>
</html>