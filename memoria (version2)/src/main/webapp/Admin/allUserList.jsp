<%@page import="member.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% MemberDAO dao = new MemberDAO();

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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all User List</title>
<link href="admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="../header/Header.jsp" />
<nav id="menu">
<h1> 전체회원조회 </h1>
<div class = "option">
	<ul>
		
		<li onclick="location.href='AdminPage.jsp'">
			<a>관리자 페이지</a>
		</li>
		
		<li onclick="location.href='allProduct.jsp'">
			<a>상품관리</a>
		</li>

		
	</ul>
</div>
</nav>


<div class = "search">
	<form method = "get">
		<table class ="searchinfo">
		<tr>
			<td>
				<select name = "searchField">
					<option value = "memberemail">이메일 </option>
					<option value = "membername">닉네임 </option>
					<option value = "memberphonenumber">전화번호</option>
					<option value = "role">권한</option>
				</select>
				<input type = "text" name="searchWord" class="input-t" />
				<input type = "submit" value="검색하기" class="select-b"/>
			</td>
		</tr>
		</table>
	</form>
</div>

<div class = "memberlist">
	<table class = "userinfotbl" style="margin: 0 auto;">
		<tbody class = "tbodytbl">
		<tr>
			<th width = "5%">번호</th>
			<th width = "15%">이메일</th>
			<th width = "15%">비밀번호</th>
			<th width = "5%">권한</th>
			<th width = "10%">닉네임</th>
			<th width = "15%">주소</th>
			<th width = "15%">전화번호</th>
			<th width = "10%">가입일</th>
			<th width = "10%">카태고리</th>
		</tr>
		<%if (memberlist.isEmpty()) {%>
		<tr>
			<td> 등록된 회원정보가 없습니다.</td>
		</tr>
		<%} else {
		int virtualNum = 1;
	
		for(MemberDTO dto : memberlist) {
		%>
		<tr>
			<td align ="center"><%=virtualNum %></td>
			<td align ="center"><%=dto.getMail() %></td>
			<td align ="center"><%=dto.getPassward() %></td>
			<td align ="center"><%=dto.getRole() %></td>
			<td align ="center"><%=dto.getName() %></td>
			<td align ="center"><%=dto.getAddr() %></td>
			<td align ="center"><%=dto.getPhoneNum() %></td>
			<td align ="center"><%=dto.getRegidate() %></td>
			<td align ="center"><%=dto.getCategory() %></td>
		</tr>
		<%virtualNum++;}}  %>
		</tbody>
	</table>
</div>


</body>
</html>