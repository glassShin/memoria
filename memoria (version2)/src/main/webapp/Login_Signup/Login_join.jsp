<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%	String checked = "checked";
    String errmsg = (String)session.getAttribute("loginerr");
    if(errmsg == null) errmsg="";
    String mail = (String)session.getAttribute("mail");
    if(mail == null) mail="";
    String pass = (String)session.getAttribute("pass");
    if(pass == null) pass="";
    String check_pass = (String)session.getAttribute("check_pass");
    if(check_pass == null) check_pass="";
    String name = (String)session.getAttribute("name");
    if(name == null) name="";
    String phoneNum = (String)session.getAttribute("phoneNum");
    if(phoneNum == null) phoneNum="";
    String code = (String)session.getAttribute("code");
    if(code == null) code="";
    String birth = (String)session.getAttribute("birth");
    if(birth == null) birth="";
    //String code = (String)session.getAttribute("code");
    //if(code == null) code="";

    %>

<html>
<head>
<meta charset="EUC-KR">
<link href="Login_join.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
    const formDataJson = sessionStorage.getItem('formData');
    if (formDataJson) {
    	const formData = JSON.parse(formDataJson);

        // Set the form fields with the stored data
        document.forms['joinFrm'].mail.value = formData.mail;
        document.forms['joinFrm'].pass.value = formData.pass;
        document.forms['joinFrm'].name.value = formData.name;
        document.forms['joinFrm'].phonenum.value = formData.phonenum;
        document.forms['joinFrm'].birth.value = formData.birth;
        
        // Set the gender radio button based on the stored value
        const genderRadio = document.querySelector('input[name="gender"][value="' + formData.gender + '"]');
        if (genderRadio) {
            genderRadio.checked = true;
        }
    }
});
</script>

<title>Insert title here</title>
</head>
<body>
<!-- 공통 상단메뉴-->
<jsp:include page="../header/Header.jsp"/>

  <%--   <%
    String errmsg = (String)session.getAttribute("loginerr");
    if(errmsg == null) errmsg="";
    session.invalidate();
    %> --%>
    
    <main>
    <h1 class="mypage">마이페이지</h1>
        <section class="login_area box">
            <form method="post" action="../process/LoginProcess.jsp">
                <div class="u_login">
                	<strong class="user">기존회원</strong>	
                    <ul>
                        <li><span>아이디</span></li>
                        <li><input type="text" class="u_line" name="mail"></li>
                        <li><span>비밀번호</span></li>
                        <li><input type="password" class="u_line" name="pass"></li>
                        <li id="err"><%=errmsg %></li>
                        <li><a href="">비밀번호 찾기</a></li>
                        <li><input type="submit" value="로그인" class="login_btn"></li>
                    </ul>    
                </div>
            </form>
        </section>

        <section class="join_area box">
            <form method="post" action="../process/JoinProcess.jsp">
                <div class="u_join">
                	<strong class="newuser">신규회원</strong>
                    <ul>
                        <li>이메일</li>
                        <li><input type="text" class="u_line" name="mail" placeholder="*이메일"></li>
                        <li>비밀번호</li>
                        <li><input type="password" class="u_line" id="pass" name="pass"></li>
                        <li>비밀번호 재확인</li>
                        <li><input type="password" class="u_line" id="check_pass" onkeyup="checkpass();"></li>
                        <li id="pass_success"></li>
                        <li>이름</li>
                        <li><input type="text" class="u_line" name="name"></li>
                        <li>전화번호</li>
                        <li><input type="tel" class="u_line" name="phonenum"></li>
                        <li>생년월일</li>
                        <li><input type="date" class="u_line" name="birth"></li>
                        <li><input type="submit" value="회원가입" class="join_btn"></li>
                    </ul>
                </div>
            </form>
        </section>
        <script>
        var pass = document.getElementById("pass");
        var c_pass = document.getElementById("check_pass");
        var check = document.getElementById("pass_success");
        
        function checkpass() {
        	if(pass.value!=c_pass.value) {
        		check.innerHTML = "새 비밀번호가 일치하지 않습니다.";
        		console.log("비밀번호" + pass.value);
        		console.log("비밀번호체크" + c_pass.value);
        	}
        	if(pass==c_pass){
        		check.innerHTML = "비밀번호가 일치합니다.";   
        		console.log("비밀번호asdf");
        	}
        }
        </script>

    </main>
<!-- 공통footer -->
<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	

</body>
</html>