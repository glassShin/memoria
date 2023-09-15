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
String mail = request.getParameter("mail");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
String phonenum = request.getParameter("phonenum");
String birth = request.getParameter("birth");

MemberDAO dao = new MemberDAO(application);


%>
</body>
</html>