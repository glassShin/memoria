<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style type="text/css">

/* 로고바 */
#logobar {
width : 100%;
height : 90px;
background-color : white;
position : fixed;
top : 0;
margin : 0;
z-index: 1;
}


#logobar > ul {
	list-style : none;
	margin-right : 50px;
}

#logobar > ul > li {
	float : right;
	margin-left : 15px;
}
#logobar > ul > li > i{
width : 50px;
height : 50px;
cursor : pointer;
}

.logo > img{
	width: 160px;
    height: 40px;
    display : block;
    margin-left : 900px;
}

/* 네비바 */
#navbar {
	position : fixed;
	background-color : white;
	width : 100%;
	height : 90px;
	top : 90px;
	z-index: 1;	
	border-bottom : solid 2px lightgray;
}
#navbar > ul {
	list-style : none;
}

#navbar > ul > li {
	float : left;
	margin-left : 50px;
	margin-top : 15px;
}


#navbar > #mypage {
position : absolute;
width : 300px;
height : 400px;
background-color : rgba(255,255,255,0.5);
right : 50px;
top : -40px;
text-align : center;
border : solid 2px lightgray;
border-radius : 20px;
display : none;
z-index : 3;
}



#loginbtn{

width : 200px;
height : 50px;
margin-top : 100px;
}

#mypage > h2 {
margin-top : 100px;

}

/* 스크롤업 애니메이션 */
@keyframes logosilde {
	from {
	top : 0px;
	}
	to {
	top : -90px;
	}
}

@keyframes navsilde {
	from{
	top : 90px;
	}
	to{
	top : 0px;
	}
}

/* 스크롤업 애니메이션 */
@keyframes logodesilde {
	from {
	top : -90px;
	}
	to {
	top : 0px;
	}
}

@keyframes navdesilde {
	from{
	top : 0px;
	}
	to{
	top : 90px;
	}
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
<!-- 로고image -->
<header>
<div id="logobar">
	<ul>
	<li onclick="mypageclick()"><i class="bi bi-person"></i></li>
	<li><i class="bi bi-bag"></i><li>
	<li><i class="bi bi-heart"></i></li>
	<li><i class="bi bi-search"></i></li>
	</ul>
	<div class="logo">
    	<img alt="로고" src="../Main-image/로고.png">
    </div>
<script>
function mypageclick() {
		location.href="../Login_Signup/Login_join.jsp"
	}
}


</script>
</div>
<div id="navbar">
<ul>
<li>향수</li>
<li>디퓨저</li>
<li>나만의 커스텀</li>
</ul>
	<div id="mypage">
	<h2>마이페이지</h2>
	</div>
</div>

<!--메뉴바 생성 -->

</header>

<script>
var logobar = document.getElementById('logobar');
var navbar = document.getElementById('navbar');
window.addEventListener("scroll",function(){
	console.log(window.scrollY)
	if (window.scrollY >= 200) {
		logobar.style.animation = "logosilde 0.5s ease-out forwards";
		navbar.style.animation = "navsilde 0.5s ease-out forwards";
	}else if(window.scrollY <= 200) {
		logobar.style.animation = "logodesilde 0.5s ease-out forwards";
		navbar.style.animation = "navdesilde 0.5s ease-out forwards";
	}
	
})
</script>
</body>
</html>