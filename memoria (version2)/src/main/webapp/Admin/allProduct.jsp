<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% ProductDAO dao = new ProductDAO();

Map<String,Object> param = new HashMap<String,Object>();

String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if (searchWord != null) {
	 param.put("searchField",searchField);
	 param.put("searchWord", searchWord);
}

int totalCount = dao.productCount(param);
List<ProductDTO> productList = dao.selectProductInfo(param);
dao.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all User List</title>
<link href="admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="../header/Header.jsp" />
<nav id="menu">
<h1> 상품관리</h1>
<div class = "option">
	<ul>
		
		<li onclick="location.href='allUserList.jsp'">
			<a>전체회원조회</a>
		</li>
	</ul>
</div>
</nav>
<div class = "ProductOption">
	<ul>
		<li onclick="location.href='DeleteProduct.jsp'">
			<a>상품삭제</a>
		</li>
		
		<li onclick="location.href='addProduct.jsp'">
			<a>상품추가</a>
		</li>
		
	</ul>
</div>
<%if (productList.isEmpty()) {%>
	<h2> 등록된 상품정보가 없습니다.</h2>
	<%} else {%>
<div class = "search">
	<form method = "get">
		<table class ="searchinfo">
		<tr>
			<td>
				<select name = "searchField">
    				<option value="productid">ProductID</option>
    				<option value="productkname">Korean Name</option>
    				<option value="productEname">English Name</option>
    				<option value="productprice">Price</option>
    				<option value="productstock">Stock</option>
    				<option value="productbrand">Brand</option>
    				<option value="scentid">Scent</option>
				</select>
				<input type = "text" name="searchWord" class="input-t" />
				<input type = "submit" value="검색하기" class="select-b"/>
			</td>
		</tr>
		</table>
	</form>
</div>

<div class = "productlist">
	<table class = "productinfotbl" style="margin: 0 auto;">
		<tbody class = "tbodytbl">
		<tr>
			<th width = "5%">번호</th>
			<th width = "15%">ProductID</th>
			<th width = "15%">Korean Name</th>
			<th width = "5%">English Name</th>
			<th width = "10%">Price</th>
			<th width = "5%">Stock</th>
			<th width = "25%">Brand</th>
			<th width = "10%">Scent</th>
		</tr>
		<%
		int virtualNum = 1;
	
		for(ProductDTO dto : productList) {
		%>
		
		<tr>
			<td align ="center" id = "productid"><%=virtualNum %></td>
			<td align ="center" id="productkname" ><%=dto.getP_id() %></td>
			<td align ="center" id="productEname"><%=dto.getP_kname() %></td>
			<td align ="center" id="productEname"><%=dto.getP_ename() %></td>
			<td align ="center" id="price"><%=dto.getP_price() %></td>
			<td align ="center" id="brand"><%=dto.getP_brand() %></td>
			<td align ="center" id="scentid"><%=dto.getScentid() %></td>
			<td align ="center"> <button onclick = "location.href='updateProduct.jsp?id=<%=dto.getP_id()%>'">변경</button></td>
			<td align ="center"> <button onclick = "location.href='deleteProduct.jsp?id=<%=dto.getP_id()%>'">삭제</button></td>
		</tr>
		</form>
		<%virtualNum++;}}  %>
		</tbody>
	</table>
</div>


</body>
</html>