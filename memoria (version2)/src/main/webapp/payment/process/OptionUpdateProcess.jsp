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
String id = (String)request.getParameter("cartid");
//String option = (String)request.getAttribute("option");
String cnt = (String)request.getParameter("cnt");

CartDAO dao = new CartDAO();
dao.cartUpdate(id, cnt);


JSFunction.alertLocationreload("수정이 완료되었습니다.", "../Cart.jsp","window.parent.location.reload();", out);
%>
</body>
</html>