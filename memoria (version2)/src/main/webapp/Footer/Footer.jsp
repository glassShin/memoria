<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
<style type="text/css">
html, body {
	margin: 0 auto;
	height: 100%;
	background-color: #f5ecec;
}

/* 로고 및 sns */
#logo {
	position: absolute;
	top: 4em;
	left: 75px;
}

#logo>img {
	width: 130px;
	height: 35px;
}

/* Footer 하단고정*/
footer {
	width: 100%;
	height: 250px;
	position: relative;
	bottom: 0;
}

/* Footer메뉴 */
.menu-ul {
	position: relative;
	left: 20rem;
	list-style: none;
	float: left;
}

.menu-li {
	padding: 0 40px 0;
	line-height: 25px;
}

.menu-h2{
	margin: 0 40px 20px;
	float: left;
}

/* sns */
.footer-sns{
	float: left;
	margin: 0 17px 0;
}

.company {
	background-color: white;
	min-height: 100%;
	font-size: 13px;
	color: black;
}

/* 기업정보 */
.company-info {
	border-top: 1.5px solid #b27979;
	color: rgba(0, 0, 0, 0.5);
	clear: both;
}

.company-ul{
	list-style: none;
}

</style>
</head>
<body>
	<footer>
		<div class="company">

			<!-- 로고 -->
			<div id="logo">
				<img alt="로고" src="../Main-image/로고.png">
			</div>

			<!-- Footer Menu  -->
			<div id="menu-all">
				<ul class="menu-ul">
					<h2 class="menu-h2">고객서비스</h2>
					<li class="menu-li">고객센터</li>
					<li class="menu-li">배송 및 반품</li>
				</ul>
				<ul class="menu-ul">
					<h2 class="menu-h2">메모리아 하우스</h2>
					<li class="menu-li">법적고지</li>
					<li class="menu-li">개인정보처리방침</li>
				</ul>
				<ul class="menu-ul">
					<h2 class="menu-h2">SNS</h2><br>
					<li class="footer-sns"><a href="#"><img src="../image2/카카오.png" alt="kakao" width="30" height="30"></a></li>
					<li class="footer-sns"><a href="#"><img src="../image2/인스타.png" alt="insta" width="30" height="30"></a></li>
				</ul>
			</div>
			<!-- 회사 정보 -->
			<div class="company-info">
				<ul class="company-ul">
				<li class="company-li">상호: Memoria</li>
				<li class="company-li">대표자: 메모리아</li>
				<li class="company-li">연락처: 010-0000-0000 | 사업자등록번호: 010-1111-0000</li>
				<li class="company-li">연이메일: Memoria@naver.com | 주소: 서울특별시 강서구 무네미로 478</li>
				<li class="company-li">ⓒ2023MEMORIACOMPANY</li>
				</ul>
			</div>
		</div>
	</footer>


	<script>
    // margin-top 값을 동적으로 설정
    //페이지별로 푸터 margin-top 조정
<%--     var marginValue = <%=request.getAttribute("margin_top")%> + "%";
    document.addEventListener("DOMContentLoaded", function () {
        var companyElements = document.querySelectorAll(".company");
        for (var i = 0; i < companyElements.length; i++) {
            companyElements[i].style.marginTop = marginValue;
        }
    }); --%>
    
    // 페이지 로드될 때와 요소 추가될 때 스크립트 실행
    //페이지별로 푸터 margin-top 조정
    //예비 방편으로 남겨둠
   <%--  function updateMargin() {
        var marginValue = <%= request.getAttribute("margin_top") %> + "%";
        var companyElements = document.querySelectorAll(".company");
        for (var i = 0; i < companyElements.length; i++) {
            companyElements[i].style.marginTop = marginValue;
        }
    }

    document.addEventListener("DOMContentLoaded", updateMargin);
    updateMargin(); --%>
    
</script>
</body>
</html>