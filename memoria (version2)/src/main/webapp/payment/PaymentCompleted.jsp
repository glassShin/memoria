<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Completed</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Myeongjo&family=Noto+Sans+KR:wght@100&family=Old+Standard+TT:ital@1&family=Playfair+Display&display=swap')
	;

.completed {
	text-align: center;
	top: 50em;
}

.completed-msg {
	margin: 10px;
}

.more {
	margin: 30px 0 0;
	width: 130px;
	height: 50px;
	border: 1px solid #565c46;
	text-align: center;
	font-size: 15px;
	color: #565c46;
	background-color: white;
}
</style> 
</head>
<body>
	<div class="completed">
	<img alt="" src="../image2/체크아이콘.png">
	<p class="completed-msg">결제완료</p>
	<button class="more" onclick="location.href='../Main/PerfumeMain.jsp'">더보러가기</button>
	</div>
</body>
</html>