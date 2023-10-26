<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="admin.css" rel="stylesheet" type="text/css" />
<title>Admin Page</title>
</head>
<body>

<jsp:include page="../header/Header.jsp" />

<nav id="menu">
<h1> 관리자 페이지 </h1>
<div class = "option">
	<ul>
		
		<li onclick="location.href='allUserList.jsp'">
			<a>전체회원조회</a>
		</li>
		
		<li onclick="location.href='allProduct.jsp'">
			<a>상품관리</a>
		</li>

		
	</ul>
</div>
</nav>
</body>
</html>