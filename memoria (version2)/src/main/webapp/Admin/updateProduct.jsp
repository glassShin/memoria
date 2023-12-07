<%@page import="product.ProductDAO"%>
<%
String id = request.getParameter("productid");
String type = request.getParameter("type");
String val = request.getParameter("val");

response.setContentType("text/plain;charset=UTF-8");
response.setCharacterEncoding("UTF-8");

ProductDAO dao = new ProductDAO();
dao.updateProduct(type, val, id);
response.getWriter().write("success");
%>
