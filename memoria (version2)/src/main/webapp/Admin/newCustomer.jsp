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
				<li><a href="newCustomer.jsp">�� ����</a></li>
				<li><a href="newProduct.jsp">��ǰ ����</a></li>
			</ul>
		</nav>

		<div class="manager-section">
			<p>�� ����</p>
			<div class="customer-search">
				<select name="customer-select">
					<option value="none">����</option>
					<option value="none">����</option>
					<option value="none">����</option>
					<option value="none">����</option>
					<option value="none">����</option>
				</select> <input type="text" placeholder="�˻�">
				<button type="button">��ȸ�ϱ�</button>
			</div>


			<div class="customer-tb">
				<table>
					<thead>
						<tr>
							<th><button type="button" class="customer-delete">����</button></th>
							<th>��ȣ</th>
							<th>�̸���</th>
							<th>��й�ȣ</th>
							<th>�̸�</th>
							<th>��ȭ��ȣ</th>
							<th>�ּ�</th>
							<th>������</th>
							<th>����</th>
							<th>ī�װ�</th>
						</tr>
					</thead>
					<tbody>
						<%if(memberlist.isEmpty()) { %>
						<tr>
							<td>��ϵ� ȸ�������� �����ϴ�.</td>
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