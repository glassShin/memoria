<%@page import="utils.JSFunction"%>
<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String p_id = request.getParameter("productid");
	System.out.println(p_id);
	ProductDAO dao = new ProductDAO(application);
	ProductDTO dto = dao.getproduct(p_id);
	
	System.out.println(dto.getP_stock());
	if(dto.getP_stock() <= 0) {
		JSFunction.alertBack("재고가 부족합니다.",out);
	}else {
		ArrayList<ProductDTO> list = (ArrayList)session.getAttribute("cart");
		if(list == null) {
			list = new ArrayList<ProductDTO>();
		}
		list.add(dto);
		session.setAttribute("cart", list);
		JSFunction.alertBack("장바구니에 추가 되었습니다.",out);
	}
	
	
	%>

</body>
</html>