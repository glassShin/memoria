<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="MyPage.css" rel="stylesheet" type="text/css" />
<title>MyPage</title>
<%String email = (String)session.getAttribute("user");
MemberDTO dto = new MemberDTO();
dto = new MemberDAO().getmember(email);
%>
</head>
<body>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<!-- 네비바 목록 -->
	<nav>
		<div class="nav-bar">
				<p class="nav-myPage">마이페이지</p>
				<p class="logout"><a href="process/Logout.jsp">로그아웃</a></p>
			<ul class="nav-ul">
				<li class="nav-li"><a href="MyPage.jsp">회원 정보</a></li>
				<li class="nav-li"><a href="Delivery.jsp">배송 정보</a></li>
				<li class="nav-li"><a href="Order.jsp">주문 내역</a></li>
				<li class="nav-li"><a href="#관심상품">관심 상품</a></li>
			</ul>
		</div>
	</nav>
	<!-- 가운데 콘텐츠 -->
	<section>
		<div class="myPage-content">
			<h3 class="user-info">회원정보 입력</h3>
			<p class="user">개인정보 관리</p>
			<p class="user">*는 필수 입력 정보입니다</p>
			<div>
			<form method="post" action="process/MemberUpdateProcess.jsp" id="update">
				<ul class="myPage-ul">
					<li class="myPage-li">이메일</li>
					<li class="myPage-li"><input type="text" class="u_line" name="mail" value="<%=dto.getMail()%>" onkeyup="validEmail();"></li>
					<li id="mail_err"></li>
					<li class="myPage-li">이름</li>
					<li class="myPage-li"><input type="text" class="u_line" name="name" value="<%=dto.getName()%>" onkeyup="validName();"></li>
					<li id="name_err"></li>
					<li class="myPage-li">비밀번호</li>
					<li class="myPage-li"><input type="password" class="u_line" id="pass" name="pass" value="<%=dto.getPassward()%>" onkeyup="validPass()"></li>
					<li id="pass_err"></li>
					<li class="myPage-li">전화번호</li>
					<li class="myPage-li"><input type="tel" class="u_line" name="phonenum" value="<%=dto.getPhoneNum()%>" onkeyup="validPhone()"></li>
					<li id="num_err"></li>
					<li class="myPage-li">생년월일</li>
					<li class="myPage-li"><input type="date" class="u_line" name="birth" value="<%=dto.getBirth()%>"></li>
					<li id="birth_err"></li>
				</ul>
			</form>
			</div>
			<p>회원탈퇴를 하시면 메모리아 신제품 소식 및 이벤트 행사 내용과 관련된 정보를 제공받으실 수 없고 관련된 서비스의
				제공이 불가능하게 됩니다. 회원탈퇴를 원하시는 경우에는 <a href="process/MemberDelete.jsp" onclick="return confirm('정말 삭제하시겠습니까 ?\n(※삭제된 계정은 복구가 불가능합니다.)');">여기</a> 를 클릭하세요.</p>
			<button type="submit" class="myPage-btn" form="update" onclick="return postJoinProcess();">수정</button>
		</div>
		<script src="MyPage.js"></script>

	
	  <!-- 공통footer -->
   <div class="footer-all">
      <%@include file="../../Footer/Footer.jsp"%>
   </div>
</body>
</html>