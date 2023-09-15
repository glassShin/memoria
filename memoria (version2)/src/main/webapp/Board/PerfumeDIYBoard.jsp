<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeDIYBoard</title>
<link href="PerfumeDIYBoard.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 공통 상단메뉴-->
<header>
	<%@include file = "../../header/Header.jsp" %>	
     

<%--<%
String[] name = {"라벤더.jpg","자몽.jpg","장미.jpg"};

for(int i = 0; i < name.length; i++) {

--%>
	<main>

<div id="DIYcard_set">	
					<div class="DIYcard">
							<ul class="DIYcard_ul">
								<li class=""><img src="" class="real_img"></li>
								<li class="card_title"><h1>Lavender</h1></li>
								<li class="card_title"><h5>라벤더</h5></li>
								<li class="card_text">숙면효과로
									널리알려진 라벤더, 꿈의 정원에
									초대된듯한 은은한 꽃
									향기가 향긋한 향입니다.</li>
							</ul>
				</div>
	
			

				
							<div class="DIYcard">
								<ul class="DIYcard_ul">
									<li class=""><img src="" class="real_img"></li>
									<li class="card_title"><h1>Lavender</h1></li>
									<li class="card_title"><h5>라벤더</h5></li>
									<li class="card_text">숙면효과로
										널리알려진 라벤더, 꿈의 정원에
										초대된듯한 은은한 꽃
										향기가 향긋한 향입니다.</li>
								</ul>
					</div>



					<div class="DIYcard">
						<ul class="DIYcard_ul">
							<li class=""><img src="" class="real_img"></li>
							<li class="card_title"><h1>Lavender</h1></li>
							<li class="card_title"><h5>라벤더</h5></li>
							<li class="card_text">숙면효과로
								널리알려진 라벤더, 꿈의 정원에
								초대된듯한 은은한 꽃
								향기가 향긋한 향입니다.</li>
						</ul>
				</div>

	
				<div class="DIYcard">
					<ul class="DIYcard_ul">
						<li class=""><img src="" class="real_img"></li>
						<li class="card_title"><h1>Lavender</h1></li>
						<li class="card_title"><h5>라벤더</h5></li>
						<li class="card_text">숙면효과로
							널리알려진 라벤더, 꿈의 정원에
							초대된듯한 은은한 꽃
							향기가 향긋한 향입니다.</li>
					</ul>
			</div>


			<div class="DIYcard">
				<ul class="DIYcard_ul">
					<li class=""><img src="" class="real_img"></li>
					<li class="card_title"><h1>Lavender</h1></li>
					<li class="card_title"><h5>라벤더</h5></li>
					<li class="card_text">숙면효과로
						널리알려진 라벤더, 꿈의 정원에
						초대된듯한 은은한 꽃
						향기가 향긋한 향입니다.</li>
				</ul>
			</div>


			
			<div class="DIYcard">
				<ul class="DIYcard_ul">
					<li class=""><img src="" class="real_img"></li>
					<li class="card_title"><h1>Lavender</h1></li>
					<li class="card_title"><h5>라벤더</h5></li>
					<li class="card_text">숙면효과로
						널리알려진 라벤더, 꿈의 정원에
						초대된듯한 은은한 꽃
						향기가 향긋한 향입니다.</li>
				</ul>
			</div>

			
			
			<div class="DIYcard">
				<ul class="DIYcard_ul">
					<li class=""><img src="" class="real_img"></li>
					<li class="card_title"><h1>Lavender</h1></li>
					<li class="card_title"><h5>라벤더</h5></li>
					<li class="card_text">숙면효과로
						널리알려진 라벤더, 꿈의 정원에
						초대된듯한 은은한 꽃
						향기가 향긋한 향입니다.</li>
				</ul>
			</div>

			
			
			<div class="DIYcard">
				<ul class="DIYcard_ul">
					<li class=""><img src="" class="real_img"></li>
					<li class="card_title"><h1>Lavender</h1></li>
					<li class="card_title"><h5>라벤더</h5></li>
					<li class="card_text">숙면효과로
						널리알려진 라벤더, 꿈의 정원에
						초대된듯한 은은한 꽃
						향기가 향긋한 향입니다.</li>
				</ul>
			</div>

		</div>			

			<div id="perfuem_container">
					<div id="perfuem_box">
						<!-- 버튼으로 수정? -->
						<div class="p_box top"></div>
						<div class="p_box middle"></div>
						<div class="p_box bottom"></div>
					</div>
				</div>


		<div id="circle-button">
					<ul class="Lavender_ul">
						<li><button class="Lavender-btn"> Lavender1 </button></li>
						<li><button class="Lavender-btn"> Lavender1 </button></li>
						<li><button class="Lavender-btn"> Lavender1 </button></li>
						<li><button class="Lavender-btn"> Lavender1 </button></li>
					</ul>

					<ul class="Lavender_ul">
						<li><button class="Lavender-btn"> Lavender2 </button></li>
						<li><button class="Lavender-btn"> Lavender2 </button></li>
						<li><button class="Lavender-btn"> Lavender2 </button></li>
						<li><button class="Lavender-btn"> Lavender2 </button></li>
					</ul>

					<ul class="Lavender_ul"> 
						<li><button class="Lavender-btn"> Lavender3 </button></li>
						<li><button class="Lavender-btn"> Lavender3 </button></li>
						<li><button class="Lavender-btn"> Lavender3 </button></li>
						<li><button class="Lavender-btn"> Lavender3 </button></li>
					</ul>
		</div>

</main> 
<%-- 	<%
	}
	%>--%>
<!-- 공통footer -->
<%@include file = "../../Footer/Footer.jsp" %>	
</body>
</html>