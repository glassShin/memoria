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
String mail = request.getParameter("mail");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
String phonenum = request.getParameter("phonenum");
String birth = request.getParameter("birth");
String gender = request.getParameter("gender");
MemberDAO dao = new MemberDAO();
{
	boolean rs = dao.insertmember(mail, pass, name, phonenum, birth, gender);

	if(!rs){
		JSFunction.alertBack("이미 사용된 이메일 입니다.", out);
	}else{
		JSFunction.alertLocation("가입완료되었습니다", "../Login_join.jsp", out);
	}

}
%>
</body>
</html>