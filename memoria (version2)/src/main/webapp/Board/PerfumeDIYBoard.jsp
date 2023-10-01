<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeDIYBoard</title>
<link rel="stylesheet" href="PerfumeDIYBoard.css">
</head>
<body>
<!-- 공통 상단메뉴-->

	<%@include file = "../../header/Header.jsp" %>	
   

	<main>
		<section id="DIYcard-set">
			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>

			<ul class="DIYcard-ul">
				<li class=""><img src="" class="perfuem-img"></li>
				<li class="card-title"><h1>Lavender</h1></li>
				<li class="card-title"><h5>라벤더</h5></li>
				<li class="card-text">숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</li>
			</ul>


		</section>


		<section id="perfuem-choice-area">

			<div id="perfuem-container">
				<div class="perfuem-box">
					<div class="p-box top">
						<div class="inner-top"></div>
					</div>
					<div class="p-box middle">
						<div class="inner-middle">MIDDLE</div>
					</div>
					<div class="p-box bottom">
						<div class="inner-bottom"></div>
					</div>
				</div>
			</div>

			
				<div id="circle-button">
					<p class="TMB">TOP</p>
						<ul class="Lavender-ul">
							<li><button class="Lavender-btn L-btn1"> Lavender1 </button></li>
							<li><button class="Lavender-btn L-btn2"> Lavender2 </button></li>
							<li><button class="Lavender-btn L-btn3"> Lavender3 </button></li>
							<li><button class="Lavender-btn L-btn4"> Lavender4 </button></li>
							<li><button class="Lavender-btn L-btn5"> Lavender5 </button></li>
							<li><button class="Lavender-btn L-btn6"> Lavender6 </button></li>
							<li><button class="Lavender-btn L-btn7"> Lavender </button></li>
							<li><button class="Lavender-btn L-btn8"> Lavender </button></li>
							<li><button class="Lavender-btn L-btn9"> Lavender </button></li>
							<li><button class="Lavender-btn L-btn10"> Lavender </button></li>
							<li><button class="Lavender-btn L-btn11"> Lavender </button></li>
							<li><button class="Lavender-btn L-btn12"> Lavender </button></li>
						</ul>
				</div>

		</section>
	</main>



 <!-- 페이지 푸터 위치 조정(%값) -->
 <%-- <% request.setAttribute("margin_top", 73); %> --%>
	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	
	
	
	
	<!--애니메이션 테스트-->
	<script>
		let btn1 = document.querySelector('.L-btn1')
		let btn2 = document.querySelector('.L-btn2')
		let btn3 = document.querySelector('.L-btn3')
		let btn4 = document.querySelector('.L-btn4')
		let btn5 = document.querySelector('.L-btn5')
		let btn6 = document.querySelector('.L-btn6')
		
		let innerTop = document.querySelector('.inner-top')
		let innerMiddle = document.querySelector('.inner-middle')
		let innerBottom = document.querySelector('.inner-bottom')

		btn1.addEventListener('click',function(){
			innerTop.style.backgroundColor = "lightcoral";
		})

		btn2.addEventListener('click',function(){
			innerTop.style.backgroundColor = "lightgray";
		})

		btn3.addEventListener('click',function(){
			innerMiddle.style.backgroundColor = "lightgreen";
		})

		btn4.addEventListener('click',function(){
			innerMiddle.style.backgroundColor = "skyblue";
		})

		btn5.addEventListener('click',function(){
			innerBottom.style.backgroundColor = "lightgreen";
		})

		btn6.addEventListener('click',function(){
			innerBottom.style.backgroundColor = "lightblue";
		})

	</script>
	

</body>
</html>