<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String mail = request.getParameter("mail");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<section class="find_pass">
	<form name = "reset_pass" action = "../process/ResetPassProcess.jsp"  method="post">
                    <input type = "hidden" name = "mail" value = <%=mail %>>
                <ul>
                    <li>새비번 입력</li>
                    <li><input type="password" name ="newpass" placeholder="새비번 입력해 주세요."></li>
                    <li><input type="password" name ="check" placeholder="다시 입력해 주세요."></li>
                    <li><input type="submit" value="완료"></li>
                </ul>
	</form>
</section>
</body>
</html>