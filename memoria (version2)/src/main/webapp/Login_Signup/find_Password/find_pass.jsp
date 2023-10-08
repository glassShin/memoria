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



    <footer>
        <div class="footer-list"> 
            <div class="company">
            <!-- sns -->
            <a><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
              <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
            </svg></a><br>
            <!-- 회사 정보 -->
            <strong>회사정보</strong><br><br>
            상호: Memoria<br>
            대표자: 메모리아 <br>
            연락처: 010-0000-0000<br>
            이메일: Memoria@naver.com<br>
            사업자등록번호: 010-1111-0000<br>
            주소: 인천광역시 부평구 무네미로 478
            <hr size = "2" color = "white">
            <p class="company-info">ⓒ2023MEMORIACOMPANY</p>

    </footer>
</body>
</html>