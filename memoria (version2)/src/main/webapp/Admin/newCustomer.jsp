<%@page import="member.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="newCustomer.css">
<title>Insert title here</title>
</head>
<body>
	<%
 MemberDAO dao = new MemberDAO();

Map<String,Object> param = new HashMap<String,Object>();

String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if (searchWord != null) {
	 param.put("searchField",searchField);
	 param.put("searchWord", searchWord);
}

int totalCount = dao.userCount(param);
List<MemberDTO> memberlist = dao.selectUserinfo(param);
dao.close();
%>

	<main>
		<nav class="sidebar">
			<ul>
				<li><a href="newCustomer.jsp">고객 관리</a></li>
				<li><a href="newProduct.jsp">상품 관리</a></li>
			</ul>
		</nav>

		<div class="manager-section">
			<p>고객 관리</p>
			<div class="customer-search">
				<select name="customer-select">
					<option value="none">선택</option>
					<option value="none">선택</option>
					<option value="none">선택</option>
					<option value="none">선택</option>
					<option value="none">선택</option>
				</select> <input type="text" placeholder="검색">
				<button type="button">조회하기</button>
			</div>


			<div class="customer-tb">
				<table>
					<thead>
						<tr>
							<th><button type="button" class="customer-delete">삭제</button></th>
							<th>번호</th>
							<th>이메일</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>가입일</th>
							<th>권한</th>
							<th>카테고리</th>
						</tr>
					</thead>
					<tbody>
						<%if(memberlist.isEmpty()) { %>
						<tr>
							<td>등록된 회원정보가 없습니다.</td>
						</tr>
						<%} else {
							int virtualNum = 1;
							for(MemberDTO dto : memberlist) {
								%>
						<tr>
							<td><input type="checkbox" name="customer-chk"></td>
							<td class="customer-order"><%=virtualNum %></td>
							<td class="customer-email"><%=dto.getMail() %></td>
							<td class="customer-pwd"><%=dto.getPassward() %></td>
							<td class="customer-name"><%=dto.getName() %></td>
							<td class="customer-num"><%=dto.getPhoneNum() %></td>
							<td class="customer-address"><%=dto.getAddr() %></td>
							<td class="customer-sign-date"><%=dto.getRegidate() %></td>
							<td class="customer-authority"><%=dto.getRole()%></td>
							<td class="customer-category"><%=dto.getCategory() %></td>
						</tr>
						<%virtualNum++; }}%>
					</tbody>
				</table>
			</div>
		</div>

	</main>

</body>
</html>