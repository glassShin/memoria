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
String id = (String)session.getAttribute("user");
MemberDAO dao = new MemberDAO();

dao.deleteMember(id);

session.invalidate();
JSFunction.alertLocation("삭제 완료되었습니다.", "../../Main/PerfumeMain.jsp", out);
%>
</body>
</html>