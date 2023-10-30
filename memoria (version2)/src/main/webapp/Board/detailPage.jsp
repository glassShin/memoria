<%@page import="product.ProductInfoDTO"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="detailPage.css">
<title>제품상세 페이지</title>
</head>
<body>
    <!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp"/>
   
    <main>
    
    	<%
  			String pid = request.getParameter("pid");
  			ProductDAO dao = new ProductDAO();
  			ProductInfoDTO dto = dao.getproductInfo(pid);
  		%>
        <div class="img-info">
         
            <div class="img-box">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_LGT001_1000x1000_0.png">    
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

                <div class="buy-btn">
                    <button type="button" onclick="location.href='../addToCart/addToCart.jsp?productid=<%=dto.getPid()%>'">구매하기</button>
                </div>

            </div>
        </div>

        <div class="tasting-note">
                <div class="note">

                    <div class="note-img">
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Mandarin_Desktop.png">
                    </div>

                    <div class="note-info">
                        <p class="top note-position">탑 노트</p>
                        <p class="top-title note-title"><%=dto.getTop() %></p>
                        <p class="top-detail note-detail"><%=dto.getTopcontent() %></p>
                    </div>
                </div>

                <div class="note">
                    <div class="note-img">
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Basil_Desktop.png">
                    </div>
                    <div class="note-info">
                        <p class="middle note-position">미들 노트</p>
                        <p class="middle-title note-title"><%=dto.getMid() %></p>
                        <p class="middle-detail note-detail"><%=dto.getMidcontent() %></p>
                    </div>
                </div>

                <div class="note">
                    <div class="note-img">
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Amberwood_Desktop.png">
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
</script>

        <!-- 단순 이미지 구역(수정 후에 이미지 삽입 예정, 데이터 사용 필요 x)-->
        <p class="tip">설명서</p>
        <div class="p-manual">
                <div><img src="../image2/001.jpg"></div>
                <div><img src="../image2/002.jpg"></div>
                <div><img src="../image2/003.jpg"></div>
                <div><img src="../image2/004.jpg"></div>
        </div>


        <div class=" recommend-title">보고있는 상품과 유사한 상품</div>



        <div class="recommend-outline-box">
            <div class="left arrow">
                <img src="/detail_modify/arrow/left-arrow.png">
            </div> 
            
            <div class="recommend-slide">
               
                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어</h3>
                    <h5>제품한글</h5>
                    <button type="button">보러가기</button>
                </div>

               
                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어</h3>
                    <h5>제품한글</h5>
                    <button type="button">보러가기</button>
                </div>

                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어</h3>
                    <h5>제품한글</h5>
                    <button type="button">보러가기</button>
                </div>

            </div>

            <div class="right arrow">
                <img src="/detail_modify/arrow/right-arrow.png">
            </div>
        </div>


        
        <div class="review-title">
            리뷰
        </div>



            <div class="ratingbox">
                <span class="p-rating">5</span>/5
            </div>



            <div class="comment-area">
                <div class="comment-rating">
                    <select class="comment-select">
                        <option vlaue="">-평점-</option>
                        <option vlaue="one">1</option>
                        <option vlaue="two">2</option>
                        <option vlaue="three">3</option>
                        <option vlaue="four">4</option>
                        <option vlaue="five">5</option>
                    </select>
                </div>
                <div class="comment-textarea">
                    <textarea placeholder="제목"></textarea>
                    <textarea placeholder="후기를 작성해주세요"></textarea>

                    <div class="comment-btngroup">
                        <button>확인</button>
                    </div>
                </div>

            </div>
         

        <div id="review-display">
            <div class="pr-review">
                <div class="pr-review-header">
                    <div class="pr-rating">
                        5/5
                    </div>    
                    <h2 class="pr-review-title">남성도 어울릴만한 향수</h2>
                </div>
               
                <p class="pr-review-main">향수선물하고싶어서 이곳 저곳 향 맡아보는데 남여 구분없이 어울릴만한 향을 조말론에서 만들어서 반했습니다 너무 만족 샘플까지 꼼꼼하게 보내주셨어요 다음엔 쇼핑백까지 살려고요</p>
                <footer class="pr-review-footer">
                   <div class="emotion">
                            <img src="../image2/thumbUp.png" class="good-img"> <span class="good">0</span>
                            <img src="../image2/thumbDown.png" class="bad-img"><span class="bad">0</span>
                    </div> 
                    <div class="user">
                        <ul>
                            <li>작성자: <span class="writer">ㅁㄴㅇㄹ</span> </li>
                            <li>작성날짜: <span class="write-date">23/23/23</span></li>
                        </ul>
                    </div>
                </footer>
            </div>
           
            <div class="pr-review">
                <div class="pr-review-header">
                    <div class="pr-rating">
                        <span class="pr-inner-rating">5</span>/5
                    </div>    
                    <h2 class="pr-review-title">남성도 어울릴만한 향수</h2>
                </div>
               
                <p class="pr-review-main">향수선물하고싶어서 이곳 저곳 향 맡아보는데 남여 구분없이 어울릴만한 향을 조말론에서 만들어서 반했습니다 너무 만족 샘플까지 꼼꼼하게 보내주셨어요 다음엔 쇼핑백까지 살려고요</p>
                <footer class="pr-review-footer">
                   <div class="emotion"> 
                    <img src="../image2/thumbUp.png" class="good-img"> <span class="good">0</span>
                    <img src="../image2/thumbDown.png" class="bad-img"><span class="bad">0</span>
                    </div> 
                    <div class="user">
                        <ul>
                            <li>작성자: <span>ㅁㄴㅇㄹ</span> </li>
                            <li>작성날짜: <span>23/23/23</span></li>
                        </ul>
                    </div>
                </footer>
            </div>
        </div> 
    </main>
       
     	<!-- 공통footer -->
	<%-- <div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div> --%>	
	
	
	<script>


    // 좋아요 & 싫어요
    const reviews = document.querySelectorAll('.pr-review');

        reviews.forEach(review => {
            let goodImgClick = 0;
            let badImgClick = 0;
            let goodImg = review.querySelector('.good-img');
            let badImg = review.querySelector('.bad-img');
            let good = review.querySelector('.good');
            let bad = review.querySelector('.bad');

            goodImg.addEventListener('click', function() {
                if (goodImgClick === 0) {
                    goodImgClick = 1;
                    badImgClick = 0;
                    good.innerHTML = goodImgClick;
                    bad.innerHTML = badImgClick;
                } else {
                    goodImgClick = 0;
                    good.innerHTML = goodImgClick;
                }
            });


            // 싫어요(필요애 따라 기능 삭제 요망)
            badImg.addEventListener('click', function() {
                if (badImgClick === 0) {
                    badImgClick = 1;
                    goodImgClick = 0;
                    bad.innerHTML = badImgClick;
                    good.innerHTML = goodImgClick;
                } else {
                    badImgClick = 0;
                    bad.innerHTML = badImgClick;
                }
            });
        });

 

// 캐러셀(슬라이드)

</script>
	
</body>
</html>