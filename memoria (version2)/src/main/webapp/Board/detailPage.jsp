<%@page import="heart.HeartDAO"%>
<%@page import="review.ReviewDAO"%>
<%@page import="log.LogDAO"%>
<%@page import="review.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.ProductInfoDTO"%>
<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
<%@page import="interest.InterestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="detailPage.css">
<title>제품상세 페이지</title>
</head>
<body>
	<!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp" />

	<main>
		<%
    		String user = (String)session.getAttribute("user");
  			String pid = request.getParameter("pid");
  			
  			ProductDAO dao = new ProductDAO();
  			ProductInfoDTO dto = dao.getproductInfo(pid);
  			
  			ArrayList<ProductDTO> recommlist = dao.recommendlist(dto.getType());
  			ReviewDAO reviewdao = new ReviewDAO();
  			ArrayList<ReviewDTO> reviewlist = reviewdao.selectReview(pid);
  			
  			InterestDAO interestdao = new InterestDAO();
  			
  			boolean interestchk = interestdao.checkInterest(user, pid);
  			String interestaddr = interestchk ? "../image2/interestoff.png" : "../image2/intereston.png";
  			
  			boolean reviewchk = reviewdao.reviewcheck(pid,user);
  			int total = 0;
  			for(ReviewDTO gradetotal : reviewlist) {
  				total += gradetotal.getR_grade();
  			}
  			if(user!=null) {
  			new LogDAO().insertLog(user, pid);
  			}
  		%>
  		<script src="interestcheck.js"></script>
		<div class="img-info">

			<div class="img-box">
				<img
					src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_LGT001_1000x1000_0.png">
			</div>

			<div class="info-box">
				<div class="product-title">
					<h1><%=dto.getKname() %></h1>
				</div>
				<div class="product-subtitle">
					<h3><%=dto.getEname() %></h3>
				</div>

				<div class="product-price">
					<h4 id="priceValue"><%=dto.getPrice() %></h4>
				</div>

				<div class="mlbox">
					<select class="ml" id="mlSelect" onchange="updatePrice();">
						<option value="50ml">50ml</option>
						<option value="75ml">75ml</option>
						<option value="100ml">100ml</option>
					</select>
				</div>


				<div class="review-link">
					<a href="#review-display">리뷰이동</a>
				</div>


				<div class="detail-info">
					<p>
						<%=dto.getInfo() %>
					</p>
				</div>
				<div class="interest-btn">
					<img src="<%=interestaddr %>" class="heart" width="20px" onclick="interestclick('<%=interestchk%>','<%=pid%>')">
					<span>관심상품</span>
				</div>
				<div class="buy-btn">
					<button type="button" id="moveCartbtn"
						onclick="location.href='../addToCart/addToCart.jsp?productid=<%=dto.getPid()%>'">구매하기</button>
				</div>

			</div>
		</div>

		<div class="tasting-note">
			<div class="note">

				<div class="note-img">
					<img src="../image2/코튼.png">
				</div>

				<div class="note-info">
					<p class="top note-position">탑 노트</p>
					<p class="top-title note-title"><%=dto.getTop() %></p>
					<p class="top-detail note-detail"><%=dto.getTopcontent() %></p>
				</div>
			</div>

			<div class="note">
				<div class="note-img">
					<img
						src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Basil_Desktop.png">
				</div>
				<div class="note-info">
					<p class="middle note-position">미들 노트</p>
					<p class="middle-title note-title"><%=dto.getMid() %></p>
					<p class="middle-detail note-detail"><%=dto.getMidcontent() %></p>
				</div>
			</div>

			<div class="note">
				<div class="note-img">
					<img
						src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Amberwood_Desktop.png">
				</div>
				<div class="note-info">
					<p class="base note-position">베이스 노트</p>
					<p class="base-title note-title"><%=dto.getBase() %></p>
					<p class="base-detail note-detail"><%=dto.getBasecontent() %></p>
				</div>
			</div>
		</div>
		<script>
    function updatePrice() {
        var mlSelect = document.getElementById("mlSelect");
        var productPrice = document.getElementById("priceValue");
        var selectedMl = mlSelect.options[mlSelect.selectedIndex].value;
        var oriprice = <%=dto.getPrice()%>;
        
        if(selectedMl === '50ml') {
        	productPrice.innerText = oriprice * 1.0;
        }else if(selectedMl === '75ml'){
        	productPrice.innerText = oriprice * 1.25;
        }else if(selectedMl === '100ml') {
        	productPrice.innerText = oriprice * 1.5;
        }
    }
    
    document.getElementById('mlSelect').addEventListener('change', function() {
    var selectedOption = this.value;
    var button = document.getElementById('moveCartbtn');
    var productId = '<%=dto.getPid()%>' + selectedOption;
    button.onclick = function() {
        location.href = '../addToCart/addToCart.jsp?productid=' + productId;
    };
});
    
</script>

		<!-- 단순 이미지 구역(수정 후에 이미지 삽입 예정, 데이터 사용 필요 x)-->
		<p class="tip">설명서</p>
		<div class="p-manual">
			<div>
				<img src="../image2/001.jpg">
			</div>
			<div>
				<img src="../image2/002.jpg">
			</div>
			<div>
				<img src="../image2/003.jpg">
			</div>
			<div>
				<img src="../image2/004.jpg">
			</div>
		</div>


		<div class=" recommend-title">보고있는 상품과 유사한 상품</div>


		<div class="recommend-outline-box">
			<div class="left arrow">
				<img src="../Main-image/왼쪽.png">
			</div>

			<!-- <div class="recommend-slide"> -->
				<%for(ProductDTO redto : recommlist) { %>

				<div class="multiple-items" style="transition: all 3s;">
					<!--*multiple-items*-->

					<div class="slide-item">
						<img
							src="../productimg/<%=redto.getP_id() + ".png"%>"
							alt="사진없음">
						<h3><%=redto.getP_kname() %></h3>
						<h5><%=redto.getP_ename() %></h5>
						<button type="button"
							onclick="location.href='../Board/detailPage.jsp?pid=<%=redto.getP_id()%>'">보러가기</button>
					</div>
				</div>
				<%} %>
			<!-- </div> -->
			<div class="right arrow">
				<img src="../Main-image/오른쪽.png">
			</div>
		</div>

		<div class="review-title">리뷰</div>
		<div class="ratingbox">
			<%if(total == 0) { %>
			<span class="p-rating"> <%=total%></span>/5
			<%}else { %>
			<span class="p-rating"> <%=total / reviewlist.size()%></span>/5
			<%} %>
		</div>
		<%if(reviewchk) { %>
		<form method="post" action="process/ReviewInsertProcess.jsp?pid=<%=pid%>">
			<div class="comment-area">
				<div class="comment-rating">
					<select class="comment-select" name="regrade">
						<option value="">-평점-</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
				<div class="comment-textarea">
					<textarea name="retitle" placeholder="제목"></textarea>
					<textarea name="recontent" placeholder="후기를 작성해주세요"></textarea>

					<div class="comment-btngroup">
						<button type="submit">확인</button>
					</div>
				</div>
			</div>
		</form>
		<%}else {%>
		 <!-- <span>-상품 구매 후 리뷰 작성 가능 합니다.-</span> -->
		<%} %>
		<script src="recommendcheck.js"></script>
		<div id="review-display">
        <%
        boolean heartwcheck = true;
        boolean reviewcheck = true;
        for(ReviewDTO redto : reviewlist) { 
        	reviewcheck = new ReviewDAO().reviewDelCheck(redto.getR_id(), user);
        	heartwcheck = new HeartDAO().checkHeart(user, redto.getR_id());
        	String imgsrc = heartwcheck ? "../image2/thumbUp_off.png" : "../image2/thumbUp_on.png";
        %>
        	
            <div class="pr-review">
                <div class="pr-review-header">
                    <div class="pr-rating">
                        <%=redto.getR_grade() %>/5
                    </div>    
                    <h2 class="pr-review-title"><%=redto.getR_title() %></h2>
                </div>
               
                <p class="pr-review-main"><%=redto.getR_content() %></p>
                <footer class="pr-review-footer">
                   <div class="emotion emotion<%=redto.getR_id()%>">
                            <img src=<%=imgsrc %> class="good-img" onclick="likeclick('<%=redto.getR_id()%>','<%=heartwcheck%>');"> <span class="good"><%=redto.getR_like() %></span>
                            
                    </div> 
                    <div class="user">
                        <ul>
                            <li>작성자: <span class="writer"><%=redto.getEmail() %></span> </li>
                            <li>작성날짜: <span class="write-date"><%=redto.getDate() %></span></li>
                            <%if(reviewcheck) {%>
                            <li><a href="process/reviewDeleteProcess.jsp?reviewid=<%=redto.getR_id() %>&pid=<%=pid %>" onclick="return confirm('정말 삭제하시겠습니까 ?');">삭제</a></li>
                            <%} %>
                        </ul>
                    </div>
                </footer>
            </div>
            <%} %>
           
        </div> 
    </main>

	<%-- <div class="footer-all">
         <%@include file="../../Footer/Footer.jsp"%>
   </div>  
    --%>


	<script>
// 캐러셀(슬라이드)
	  $('.left').on('click',function(){
       $('.recommend-area').css('transform','translate(0px)');
     })
     $('.right').on('click',function(){
       $('.recommend-area').css('transform','translate(1200px)');
     })
// slick.js
  /*   $('.multiple-items').slick({
    infinite: false,
    slidesToShow: 3,
    slidesToScroll: 3,
    speed : 1000,
    dots: false */
    //   prevArrow : "<button type='button' class='slick-prev'>Previous</button> ",
    //   nextArrow : "<button type='button' class='slick-next'>Next</button>",
    });

     // 버튼 텍스트를 원하는 값으로 설정
 /*    var prevButton = document.querySelector('.slick-prev');
    var nextButton = document.querySelector('.slick-next'); */

 /*    prevButton.textContent ='';
    nextButton.textContent = '';  */
</script>


</body>
</html>