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
String user = (String)session.getAttribute("user");
if(user == null) {
	JSFunction.alertLocation("로그인 후 이용해주세요.", "../../Login_Signup/Login_join.jsp", out);
}else {
request.setCharacterEncoding("UTF-8");
String pid = request.getParameter("pid");
String grade = request.getParameter("regrade");
String title = request.getParameter("retitle");
String content = request.getParameter("recontent");

ReviewDAO dao = new ReviewDAO();
boolean result = dao.insertReview(user, pid, grade, title, content);

if(result) {
	response.sendRedirect("../detailPage.jsp?pid=" + pid);
}else {
	JSFunction.alertBack("리뷰 등록에 실패했습니다. 다시 시도 해주세요.", out);
}
}

%>
</body>
</html>