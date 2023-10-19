<%-- <%@page import="jdk.internal.org.jline.reader.History"%> --%>
<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
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


MemberDAO dao = new MemberDAO();

MemberDTO dto = dao.memberlogin(mail, pass);

if(dto.getMail() == null) {
	session.setAttribute("loginerr", "이메일 및 비밀번호가 일치하지 않습니다.");
	%>
	<script>
	location.href="../Login_join.jsp";
	</script>
	<%
} else {
	session.setAttribute("name", dto.getName());
	session.setAttribute("role", dto.getRole());
	session.setAttribute("user", dto.getMail());
	
	%>
	<script>
	location.href="../../Main/PerfumeMain.jsp";
	</script>
	<%
}
%>
</body>
</html>