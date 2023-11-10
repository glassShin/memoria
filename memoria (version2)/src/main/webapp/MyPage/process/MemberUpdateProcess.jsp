<%@page import="utils.JSFunction"%>
<%@page import="member.MemberDAO"%>
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
request.setCharacterEncoding("UTF-8");
String user = (String)session.getAttribute("user");

String name = request.getParameter("name");
String mail = request.getParameter("mail");
String pass = request.getParameter("pass");
String phone = request.getParameter("phonenum");
String birth = request.getParameter("birth");

MemberDAO dao = new MemberDAO();

boolean result = dao.memberUpdate(name,mail,pass,phone,birth,user);

if(!result) {
	JSFunction.alertBack("이미 존재하는 이메일 입니다.", out);
}else {
	session.setAttribute("user", mail);
	session.setAttribute("name", name);
	JSFunction.alertLocation("수정 완료되었습니다.", "../MyPage.jsp", out);
	
}
%>

</body>
</html>