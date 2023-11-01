<%@page import="java.util.ArrayList"%>
<%@page import="product.ProductDAO"%>
<%@page import="product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PerfumeMain</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link href="PerfumeMain.css" rel="stylesheet" type="text/css" />
<link href="Slide.css" rel="stylesheet" type="text/css" />
<title>메모리아</title>
</head>
<body>
       <!-- 공통 상단메뉴-->
   <jsp:include page="../header/Header.jsp" />
<%
ProductDAO dao = new ProductDAO();
ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
String user = (String)session.getAttribute("user");
if(user == null) {
	list = dao.recommendlist("고급스러운");
}else {
	list = dao.recommendlist(user);
}

%>
 
   <main>

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

       
            <!-- 중간 문구 -->
            <div class="image-moonjang">
               <p class="moonjang">
                  Sometimes, what is not visible <br> can awaken the most
                  intense memories
               </p>
            </div>
            
        
               <!-- <h1 class="multiple-items-h1">추천향수</h1> -->
            <div class="recommend-area"> 
                <div class="multiple-items">
                <%for(ProductDTO dto : list) {%>
                    <div class="slide-item">
                        <img src=""  alt="테스트">
                        <h3 class="E-name"><%=dto.getP_ename() %></h3>
                        <h4 class="K-name"><%=dto.getP_kname() %></h4>
                        <span class="price"><%=dto.getP_price() %></span>
                        <button type="button" class="card-btn" onclick="location.href='../Board/detailPage.jsp?pid=<%=dto.getP_id()%>'">상품보기</button>
                    </div>
                    <%} %>
                </div> 
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
   </main>
   
   <!-- 슬라이드js -->
   <script src="Slide.js"></script>

   <!-- 공통footer -->
   <div class="footer-all">
         <%@include file="../../Footer/Footer.jsp"%>
   </div>  
   
   <script>
// slick.js
    $('.multiple-items').slick({
        slide: '.slide-item',
        infinite: false,
        arrows : true,
        slidesToShow: 4,
        slidesToScroll: 4,
        speed : 1000,
    });

        var prevButton = document.querySelector('.slick-prev');
        var nextButton = document.querySelector('.slick-next');

        // 버튼 텍스트를 원하는 값으로 설정
        prevButton.textContent = '';
        nextButton.textContent = '';
   </script>

</body>
</html>