<%@page import="utils.JSFunction"%>
<<<<<<< HEAD
<%@page import="utils.JSFunction"%>
=======
<% %>@page import="utils.JSFunction"%>
>>>>>>> branch 'memoria_test_branch' of https://github.com/glassShin/memoria.git
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String mail = request.getParameter("mail");
System.out.println(mail);
String newpass = request.getParameter("newpass");
System.out.println(newpass);
MemberDAO dao = new MemberDAO();
boolean check = dao.resetPassword(mail, newpass);
if(!check){
	JSFunction.alertBack("실패", out);
}else{
	JSFunction.alertLocation("비번 reset 성공", "../Login_join.jsp", out);
}

%>