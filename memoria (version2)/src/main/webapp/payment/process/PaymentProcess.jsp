<%@page import="java.util.concurrent.atomic.AtomicInteger"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="cart.CartDAO"%>
<%@page import="order.OrderDAO"%>
<%@page import="payment.PaymentDAO"%>
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

String user = (String)session.getAttribute("user");
String imp_uid = request.getParameter("imp_uid");		// 결제
String merchant_uid = request.getParameter("merchant_uid");	//주문
String bname = request.getParameter("bname");
String baddr = request.getParameter("baddr");
String pname = request.getParameter("pname");
String price = request.getParameter("price");
String phone = request.getParameter("phone");

PaymentDAO pdao = new PaymentDAO();
pdao.insertpayment(imp_uid, user, pname, price);
OrderDAO odao = new OrderDAO();
CartDAO cdao = new CartDAO();
Map<String,Integer> clist = new HashMap<String,Integer>();
clist = cdao.selectInfo(user);

AtomicInteger i = new AtomicInteger(1);
clist.forEach((key, value) -> {
odao.orderInsert(merchant_uid+i.getAndIncrement(), imp_uid, key, value, bname, baddr, phone);
});



%>

</body>
</html>