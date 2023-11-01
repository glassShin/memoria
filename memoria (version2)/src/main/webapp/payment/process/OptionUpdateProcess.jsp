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
String user = (String) session.getAttribute("user");
String pid = (String) request.getParameter("pid");
String id = (String)request.getParameter("cartid");
//String option = (String)request.getAttribute("option");
String cnt = (String)request.getParameter("cnt");

CartDAO dao = new CartDAO();
boolean result = dao.cartcheck(user,pid );
if(result) {
	JSFunction.alertBack("이미 장바구니에 존재합니다.", out);
}else {
dao.cartUpdate(id, cnt);
JSFunction.alertLocationreload("수정이 완료되었습니다.", "../Cart.jsp","window.parent.location.reload();", out);
}
%>
</body>
</html>