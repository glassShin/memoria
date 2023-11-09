<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeDIYBoard</title>
<link rel="stylesheet" href="PerfumeDIYBoard.css">

<style>/*DIY박스 스타일*/
	*{box-sizing: border-box;}
	html, body{margin: 0;}
	ul{margin: 0; padding: 0;}
	ul > li{list-style: none;}
	.inner{width: 750px; margin: 0 auto;}
	main{margin-top: 30px;}
	section{min-height: 100vh;}

	/* 헤더 */
	header{width: 100%; height: 60px; line-height: 60px; text-align: center; font-weight: 700; border-bottom: 1px solid #ddd; position: relative;}
	header h1{margin: 0; display: inline-block;}
	header .menu{display: flex; gap: 5px; position: absolute; top: 0; right: 20px;}

	/* 장바구니 */
	.product_wrap{display: flex; gap: 50px; justify-content: space-between;}
	.product_wrap .product_cart{width: 300px;}
	.product_wrap .product_cart ul > li{padding: 10px 0; overflow: hidden;}
	.product_wrap .product_cart ul > li + li{border-top: 1px solid #ddd;}

	/* 향수 */
	.cont_perfume{display: flex; align-items: center; position:relative;}
	.cont_perfume .inner{height: 100%;}
	.perfume_box{display: flex; justify-content: space-between; align-items: center;}
	.perfume_box .purfume_choice{display: flex; flex-direction: column; background: #fff; width: 300px; height: 600px; border: 1px solid #ddd; position: relative;}
	.perfume_box .purfume_choice:hover .choice_item{opacity: .3;}
	.perfume_box .purfume_choice .choice_item{display: flex; flex: 1; justify-content: center; align-items: center;}
	.perfume_box .purfume_choice .choice_item + .choice_item{border-top: 1px solid #ddd;}
	+
	
	.perfume_box .purfume_choice .choice_item ul{display: flex; flex-wrap: wrap; background: #fff; border-radius: 10px; border: 1px solid #ddd; width: 100%; height: 600px; box-shadow: 0 0 5px #ddd; box-shadow: 1px 1px 10px 0px rgb(0 0 0 / 7%);}
	.perfume_box .purfume_choice .choice_item ul > li{width: 25%; display: flex; justify-content: center; align-items: center;}
	.perfume_box .purfume_choice .choice_item ul > li > a{width: 90px; height: 90px; border-radius: 50px; border: 1px solid #ddd; display: flex; justify-content: center; align-items: center; text-align: center;}
	.perfume_box .purfume_choice .choice_item .menu{display: none; position: absolute; left: 100%; top: 0; width: 500px; height: 600px; padding-left: 15px;}
	.perfume_box .purfume_choice .choice_item .menu:before{content: ""; display: inline-block; background: #fff; position: absolute; top: 100px; left: 10px; width: 10px; height: 10px; transform: rotate(45deg); border: 1px solid #ddd; border-width: 0 0 1px 1px;}
	.perfume_box .purfume_choice .choice_item .menu2:before{top: 296px;}
	.perfume_box .purfume_choice .choice_item .menu3:before{top: 496px;}
	.perfume_box .purfume_choice .choice_item:hover{box-shadow: 1px 1px 10px 0px rgb(0 0 0 / 10%); opacity: 1;}
	.perfume_box .purfume_choice .choice_item:hover .menu{display: block;}

</style>


</head>
<body>
<!-- 공통 상단메뉴-->

	<%@include file = "../../header/Header.jsp" %>	
   


<!-- DIYcard-set, Diycard-ul
section은 ul, ul은 li로 바꾸고 묶어주기  -->
	<div class="DIYcard-area">
		<ul class="DIYcard">
			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>

			<li>
				<img src="" class="perfuem-img">
				<h1>Lavender</h1>
				<h3>라벤더</h3>
				<p>숙면효과로
					널리알려진 라벤더, 꿈의 정원에
					초대된듯한 은은한 꽃</p>
			</li>
		</ul>
	</div>

			<div class="perfume_info">
					<img src="../image2/향수노트.jpg" alt="비어있음">
				</div>


	<section class="cont_perfume">
		<div class="inner">
			<div class="perfume_box">
				<form action = "DIYprocess.jsp" method = "post" id ="perfumeForm">
			   	<select name="ml_selectBox" id = "ml">
               		<option value="50ml">50ml</option>
               		<option value="75ml">75ml</option>
               		<option value="100ml">100ml</option>
            	</select>
            	<input type = "hidden" id = "top"  name="top">
            	<input type = "hidden" id = "mid"  name="mid">
            	<input type = "hidden" id = "base" name="base">
            	<button type = "submit"> 완료하기 </button>
          		</form>
				<div class="purfume_choice">
					<div class="choice_item">
						<span>향수1</span>
						<div class="menu menu1">
							<ul>
								<li><a href="javascript:void('Rose');"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
							</ul>
						</div>
					</div>
					<div class="choice_item">
						<span>향수2</span>
						<div class="menu menu2">
							<ul>
								<li><a href="javascript:;" onclick="test('Rose')"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
							</ul>
						</div>
					</div>
					<div class="choice_item">
						<span>향수3</span>
						<div class="menu menu3">
							<ul>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
								<li><a href="javascript:;"><span>메뉴1</span></a></li>
								<li><a href="javascript:;"><span>메뉴2</span></a></li>
								<li><a href="javascript:;"><span>메뉴3</span></a></li>
								<li><a href="javascript:;"><span>메뉴4</span></a></li>
							</ul>
						</div>
				</div>
				</div>
			</div>
		</div>
	</section>


 <!-- 페이지 푸터 위치 조정(%값) -->
 <%-- <% request.setAttribute("margin_top", 73); %> --%>
	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	

	<script>
	
	const lists = document.querySelectorAll('.menu > ul > li');
	const form = document.querySelector('#perfumeForm');
	const predefinedColors = {
	  'Whitemusk': '#e3eaf2',
	  'Rose': '#a12222',
	  'Grapefruit': '#ff5546',
	  'Lemon': '#ffd734',
	  'Woody': '#8d5549',
	  'Aqua': '#6eb2ff',
	  'Peach': '#ff937b',
	  'Fig': '#9c6688',
	  'Lime': '#dddb74',
	  'Lilac': '#d2a8ff',
	  'Lavender': '#8d579f',
	  'Ivory': '#fffbe8',
	  'Babypowder': '#ffffff'
	};

	for (list of lists) {
	  list.children[0].addEventListener('click', function () {
		  console.log(scent);
	    const randomScentName = getRandomScentName(predefinedColors);
	    const color = predefinedColors[randomScentName];
	    console.log('Selected Scent: ' + randomScentName);
	    console.log(color);
	    
	    const menuClass = this.parentNode.parentNode.parentNode.className; // Get the menu class
	    console.log('menuClass:', menuClass);
	    if (menuClass.includes('menu1')) {
	      form.querySelector('#top').value = randomScentName;
	    } else if (menuClass.includes('menu2')) {
	      form.querySelector('#mid').value = randomScentName;
	    } else if (menuClass.includes('menu3')) {
	      form.querySelector('#base').value = randomScentName;
	    }
	    
	    this.parentNode.parentNode.parentNode.parentNode.style.backgroundColor = color;
	  });
	}

	function getRandomScentName(colors) {
	  const scentNames = Object.keys(colors);
	  const randomIndex = Math.floor(Math.random() * scentNames.length);
	  return scentNames[randomIndex];
	}
        
    </script>
	

</body>
</html>