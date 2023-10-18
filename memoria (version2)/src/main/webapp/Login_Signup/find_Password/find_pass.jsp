<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

String code = (String)session.getAttribute("code");
if(code == null) code="";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="find_pass.css">
    <title>Document</title>
    <script type="text/javascript">
		document.addEventListener('DOMContentLoaded', function () {
    	const formDataJson = sessionStorage.getItem('formFindPass');
    	if (formDataJson) {
    		const formData = JSON.parse(formDataJson);

       	 // Set the form fields with the stored data
       		document.forms['find_pass'].mail.value = formData.mail;
        	document.forms['find_pass'].phonenum.value = formData.phonenum;
    }
});
</script>
</head>
<body>
    <header>
        <div id="logo">
            <span>MEMORIA</span>
        </div>

        <section>
        <div id="menubar">
            <ul>
                <li><a href="">메뉴1</a></li>
                <li><a href="">메뉴2</a></li>
                <li><a href="">메뉴3</a></li>
                <li><a href="">메뉴4</a></li>
                <li><a href="">메뉴5</a></li>
            </ul>
        </div>
        </section>
    </header>



    <main>
        <section class="find_pass">
        	<form name = "find_pass" action = "reset_pass.jsp"  method="post" onsubmit="return validateForm();">
                <ul>
                	<li><input type = "hidden" name = "action" value = "findpass"></li>
                    <li>비밀번호 찾기</li>
                    <li><input type="text" name = "mail" placeholder="이메일을 입력해 주세요."></li>
                    <li id="mail_err"></li>
                    <li>전화번호 찾기</li>
                    <li><input type="tel" class="u_line" name="phonenum" >
                        	<button type = "button" onclick="sendCode();" value = "전송" ></button>
                        </li>
                        <li><input type = "hidden" name="code" value = "<%=code%>"></li>
                        <li id="num_err"></li>
                        <li>인증번호</li>
                        <li><input type="tel" class="u_line" name="checkPhoneCode">
                        	<button type = "button" onclick="checkCode();" value = "획인" ></button>
                    	<li id="check_err"></li>
                    <li><input type="submit" value="보내기"></li>
                </ul>
			</form>
        </section>
		<script src = "find_pass.js" charset="UTF-8"></script>
    </main>



  <div class="footer-all">
      <%@include file="../../Footer/Footer.jsp"%>
   </div>
</body>
</html>