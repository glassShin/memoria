<%@page import="product.ProductDAO"%>
<%@page import="product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String id = request.getParameter("id");
ProductDAO dao = new ProductDAO();
ProductDTO dto = dao.getproduct(id);
%>

<html>
<head>
<meta charset="UTF-8">
<link href="admin.css" rel="stylesheet" type="text/css" />  
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header/Header.jsp" />


<div>
	<h1> 상품정보 변경</h1>
	<table>
		<tr>
			<th>상품아이디</th>
			<td><input type = "text" value="<%=dto.getP_id()%>"/></td>
		</tr>
	</table>
</div>
</body>
</html>