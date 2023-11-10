<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%
   String code = (String)session.getAttribute("code");
    if(code == null) code="";
    %>
<!DOCTYPE html>
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
<title>login_join</title>
</head>
<body>
   <!-- 공통 상단메뉴-->
   <jsp:include page="../header/Header.jsp" />

   <%
   String errmsg = (String) session.getAttribute("loginerr");
   if (errmsg == null)
      errmsg = "";
   session.invalidate();
   %>
   <main>
      <section>
         <div id="login_join">
            <strong class="user">기존회원</strong>
            <form method="post" action="./process/LoginProcess.jsp">
               <div class="u_login">
                  <ul class="login-ul">
                     <li class="login-li"><span>이메일</span></li>
                     <li class="login-li"><input type="text" class="u_line" name="mail" placeholder="이메일"></li>
                     <li class="login-li"><span>비밀번호</span></li>
                     <li class="login-li"><input type="password" class="u_line" name="pass"></li>
                     <li id="err"><%=errmsg%></li>
                     <li class="login-li"><a href="./find_Password/find_pass.jsp">비밀번호 찾기</a></li>
                     <li ><input type="submit" value="로그인" class="login_btn"></li>
                  </ul>
               </div>
            </form>

            <strong class="newuser">신규회원</strong>
            <section class="join_area box">
            <form name = "joinFrm" method="post" action="./process/JoinProcess.jsp">
                <div class="u_join">
                    <ul>
                    	<li><input type = "hidden" name="action" value = "signup"></li>
                        <li>이메일</li>
                        <li><input type="text" class="u_line" name="mail" placeholder="*이메일" onkeyup="validEmail()"></li>
                        <li id="mail_err"></li>
                        <li>비밀번호</li>
                        <li><input type="password" class="u_line" name="pass" id="pass" onkeyup="validPass();"></li>
                        <li id="pass_err"></li>
                        <li>비밀번호 확인</li>
                        <li><input type="password" class="u_line" id="check_pass" onkeyup="checkpass();"></li>
                        <li id="pass_success"></li>
                        <li>이름</li>
                        <li><input type="text" class="u_line" name="name" onkeyup="validName();"></li>
                        <li id="name_err"></li>
                        <li>전화번호</li>
                        <li><input type="tel" class="u_line" name="phonenum" onkeyup="validPhone();">
                        	<button type = "button" onclick="sendCode();" value = "전송" ></button>
                        </li>
                        <li><input type = "hidden" name="code" value = "<%=code%>"></li>
                        <li id="num_err"></li>
                        <li>인증번호</li>
                        <li><input type="tel" class="u_line" name="checkPhoneCode">
                        	<button type = "button" onclick="checkCode();" value = "획인" ></button>
                        </li>
                        <li id="check_err"></li>
                        
                        <li>생년월일</li>
                        <li><input type="date" class="u_line" name="birth"></li>
                        <li id = "birth_err"></li>
                        <li>성별</li>
                        <li>
                            <label>
                                <input type="radio" name="gender" class="w_chk" value = "woman"><span>여성</span></li>
                            </label>   
                        <li>
                            <label>
                                <input type="radio" name="gender" class="m_chk" value = "men" ><span>남성</span></li>
                        <li id="gender_err"></li>
                            </label>
						<li><input type="submit" value="회원가입" class="join_btn" onclick="return postJoinProcess();"></li>
                    </ul>
                </div>
            </form>
        </section>
        <script src = "Login_Join.js" charset="UTF-8">
        </script>

   </main>

   <!-- 공통footer -->
   <div class="footer-all">
      <%@include file="../../Footer/Footer.jsp"%>
   </div>

</body>
</html>