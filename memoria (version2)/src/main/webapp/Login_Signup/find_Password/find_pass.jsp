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
                <li><a href="">�޴�1</a></li>
                <li><a href="">�޴�2</a></li>
                <li><a href="">�޴�3</a></li>
                <li><a href="">�޴�4</a></li>
                <li><a href="">�޴�5</a></li>
            </ul>
        </div>
        </section>
    </header>



    <main>
        <section class="find_pass">
        	<form name = "find_pass" action = "reset_pass.jsp"  method="post" onsubmit="return validateForm();">
                <ul>
                	<li><input type = "hidden" name = "action" value = "findpass"></li>
                    <li>��й�ȣ ã��</li>
                    <li><input type="text" name = "mail" placeholder="�̸����� �Է��� �ּ���."></li>
                    <li id="mail_err"></li>
                    <li>��ȭ��ȣ ã��</li>
                    <li><input type="tel" class="u_line" name="phonenum" >
                        	<button type = "button" onclick="sendCode();" value = "����" ></button>
                        </li>
                        <li><input type = "hidden" name="code" value = "<%=code%>"></li>
                        <li id="num_err"></li>
                        <li>������ȣ</li>
                        <li><input type="tel" class="u_line" name="checkPhoneCode">
                        	<button type = "button" onclick="checkCode();" value = "ȹ��" ></button>
                    	<li id="check_err"></li>
                    <li><input type="submit" value="������"></li>
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