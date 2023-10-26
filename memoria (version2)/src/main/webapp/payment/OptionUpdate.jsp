<%@page import="product.ProductDTO"%>
<%@page import="cart.CartDAO"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="OptionUpdate.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>

<body>
	<%
	String id = request.getParameter("pid");
	String cnt = request.getParameter("cnt"); 
	String cid = request.getParameter("cid");

	ProductDTO dto = new ProductDAO().getproduct("test");
	%>
	<h5 class="info">변경할 옵션을 선택해주세요.</h5>
	<div class="container">
		<div class="imglocation">
		<img alt="image" src="../Main-image/향수1.png">
		</div>
		<form action="process/OptionUpdateProcess.jsp" method="post" id="update">
		<div class="contentlocation">
		<input type="hidden" name="productid" value="<%=cid%>">
			<p><%=dto.getP_kname() %></p>
			<hr style="border : solid 1.5px #565c46">
			<div class="optionselect">
				<select id = "optionbar" name="option" class="form-select form-select-sm"
					aria-label="Default select example">
					<option selected>옵션 선택</option>
					<option value="1">50ml</option>
					<option value="2">75ml</option>
					<option value="3">Three</option>
				</select>
			</div>

			<div class="cntselect">
				<select id = "cntbar" name="cnt" class="form-select form-select-sm"
					aria-label="Default select example">
					<option selected>수량선택</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</div>
		</div>
		</form>
	</div>
	<div class="buttongrop">
  <button class="cencelbtn" onclick="parent.popupclose();">취소</button>
  <input type="submit" class="updatebtn" value="변경" form="update">
  
</div>
</body>
</html>