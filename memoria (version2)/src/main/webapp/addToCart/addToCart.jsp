<%@page import="cart.CartDAO"%>
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
	CartDAO dao = new CartDAO();
	boolean check = dao.cartcheck("khang", p_id);
	
	if(check) {
		JSFunction.alertBack("이미 장바구니에 존재합니다.", out);
	}else {
		String msg = dao.cartInsert("khang", p_id);
		
		if(msg.equals("stock zero")) {
			JSFunction.alertBack("재고가 부족합니다.", out);
		}else if(msg.equals("completion")){
			JSFunction.alertBack("장바구니에 추가되었습니다.", out);
		}
	}
	%>

</body>
</html>