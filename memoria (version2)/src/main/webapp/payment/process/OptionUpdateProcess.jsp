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
String id = (String)request.getAttribute("cart");
String option = (String)request.getAttribute("option");
String cnt = (String)request.getAttribute("cnt");

CartDAO dao = new CartDAO();
dao.cartUpdate(id, option, cnt);
%>
</body>
</html>