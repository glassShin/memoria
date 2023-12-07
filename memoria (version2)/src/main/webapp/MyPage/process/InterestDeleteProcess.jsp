<%@page import="utils.JSFunction"%>
<%@page import="interest.InterestDAO"%>
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
String user = (String)session.getAttribute("user");

InterestDAO dao = new InterestDAO();
int result = dao.deleteInterest(user, pid);

if(result == 0) {
	JSFunction.alertBack("관심상품 삭제 실패했습니다. 다시 시도해주세요.", out);
}else {
	JSFunction.alertLocation("관심상품이 삭제 되었습니다.", "../Wishlist.jsp", out);
}
%>
</body>
</html>