<%@page import="utils.JSFunction"%>
<%@page import="review.ReviewDAO"%>
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
String reviewid = request.getParameter("reviewid");
String pid = request.getParameter("pid");
ReviewDAO dao = new ReviewDAO();
boolean result = dao.reviewDelete(reviewid);

if(result) {
	JSFunction.alertLocation("삭제 완료 되었습니다.", "../detailPage.jsp?pid" + pid, out);
}else {
	JSFunction.alertBack("리뷰 삭제에 실패했습니다. 다시 시도 해주세요.", out);
}
%>
</body>
</html>