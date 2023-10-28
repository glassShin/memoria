<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeMain</title>
<link href="PerfumeMain.css" rel="stylesheet" type="text/css" />
<link href="Slide.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <!-- 공통 상단메뉴-->
   <jsp:include page="../header/Header.jsp" />

   <!-- section -->
   <main>
      <section>
         <!-- 슬라이드 -->
         <div class="slide slide_wrap">
            <div class="slide_item item1"></div>
            <div class="slide_item item2"></div>
            <div class="slide_item item3"></div>
            <div class="slide_prev_button slide_button">
               <img class="Direction-img" src="../Main-image/왼쪽.png">
            </div>
            <div class="slide_next_button slide_button">
               <img class="Direction-img" src="../Main-image/오른쪽.png">
            </div>
            <ul class="slide_pagination"></ul>
         </div>

         <!-- 상품슬라이드 -->
         <div class="product-slide">
            <h1 class="product-slide-h1">추천향수</h1>
            <div class="product">
               <div class="card-img">
                  <img alt="perfume" src="../Main-image/향수1.png" class="product-img"
                     height="250">
               </div>
               <div class="card-head">
                  <h3 class="E-name">English name</h3>
                  <h3 class="K-name">향수이름</h3>
               </div>
               <div class="card-main">
                  <p class="price">₩200,000 100ml</p>
               </div>
               <button type="button" class="card-btn">상품보기</button>
            </div>
            <!-- 중간 문구 -->
            <div class="image-moonjang">
               <p class="moonjang">
                  Sometimes, what is not visible <br> can awaken the most
                  intense memories
               </p>
            </div>

            <!-- 상품이동 페이지 -->
            <div class="product-page">
               <div class="page-img-r">
                  <img id="perfume-img-r" src="../Main-image/향수페이지3.jpg">
               </div>
               <div class="product-moonjang-r">
                  <p class="r-Title">나만의 DIY 하러가기</p>
                  <p class="r-moonjang">내가 원하는 향으로 나를 위한,<br>가장 잘 어울리는 나만의 향을 완성해 보세요</p>
                  <button class="product-btn-r" onclick="location.href='../Board/PerfumeDIYBoard.jsp'">보러가기</button>
               </div>
               <div class="page-img-l">
                  <img id="perfume-img-l" src="../Main-image/향수페이지2.jpg">
               </div>
               <div class="product-moonjang-l">
                  <p class="l-Title">향수 사러가기</p>
                  <p class="l-moonjang">테스트용 문장입니다.</p>
                  <a href="../Board/PerfumeBoard.jsp" class="product-btn-l">보러가기</a>
               </div>
            </div>
      </section>
   </main>
   
   <!-- 슬라이드js -->
   <script src="Slide.js"></script>

   <!-- 공통footer -->
   <div class="footer-all">
         <%@include file="../../Footer/Footer.jsp"%>
   </div> 
</body>
</html>