<%@page import="utils.JSFunction"%>
<%@page import="cart.CartDAO"%>
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
	String pid = request.getParameter("pid");

	CartDAO dao = new CartDAO();

	dao.cartDelete(pid);
	JSFunction.alertLocation("삭제되었습니다.", "../Cart.jsp", out);
	%>
</body>
</html>