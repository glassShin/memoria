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
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="detailPage.css">
<title>제품상세 페이지</title>
</head>
<body>

	<jsp:include page="../header/Header.jsp" />
	
    <main>
  
        <div class="img-info">
         
            <div class="img-box">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_LGT001_1000x1000_0.png">    
            </div>

            <div class="info-box">
                <div class="product-title">
                    <h1>상품제목</h1>
                </div>
                <div class="product-subtitle">
                    <h3>부제목</h3>
                </div>
                <div class="product-price">
                    <h4>가격</h4>
                </div>

                <div class="mlbox">
                    <select class="ml">
                        <option vlaue="">ml</option>
                        <option vlaue="50ml">50ml</option>
                        <option vlaue="75ml">75ml</option>
                        <option vlaue="100ml">100ml</option>
                    </select>
                </div>



                <div class="review-link">
                    <a href="#review-display">리뷰이동</a>
                </div>

    
                <div class="detail-info">
                    <p>
                        순수의 향. 블랙베리를 따던 어린 시절의 추억,
                         블랙베리로 물든 입술과 손. 이제 막 수확한 월계수 잎의
                         신선함에 톡 쏘는 블랙베리 과즙을 가미하였습니다. 
                        매력적이고 생기 넘치는 상쾌한 느낌의 향입니다.
                    </p>
                </div>

                <div class="buy-btn">
                    <button type="button">
                        구매하기
                    </button>
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
                        <p class="top-title note-title">오렌지</p>
                        <p class="top-detail note-detail">톡하고 과즙을 내뿜는 천연 블랙커런트 꽃봉오리가 과일 향과 새콤한 느낌을 더해주고, 버코 트리 에센스가 블랙베리 잎의 신선함과 풋풋함을 끌어올립니다.</p>
                    </div>
                </div>

                <div class="note">
                    <div class="note-img">
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Basil_Desktop.png">
                    </div>
                    <div class="note-info">
                        <p class="middle note-position">미들 노트</p>
                        <p class="middle-title note-title">월계수</p>
                        <p class="middle-detail note-detail">갈바넘의 천연향을 바탕으로 한 어코드가 향에 식물의 선명함과 눈부신 녹음의 느낌을 더해줍니다.</p>
                    </div>
                </div>

                <div class="note">
                    <div class="note-img">
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Amberwood_Desktop.png">
                    </div>
                    <div class="note-info">
                        <p class="base note-position">베이스 노트</p>
                        <p class="base-title note-title">시더우드</p>
                        <p class="base-detail note-detail">우디하고 드라이한 느낌이 하트 노트에 카리스마 있는 강렬함을 채워줍니다</p>
                    </div>
                </div>
        </div>


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
           
            <div class="multiple-items" style="transition: all 3s;"><!--*multiple-items*-->
               
                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어1</h3>
                    <h5>제품한글1</h5>
                    <button type="button">보러가기</button>
                </div>

               
                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어2</h3>
                    <h5>제품한글2</h5>
                    <button type="button">보러가기</button>
                </div>

                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어3</h3>
                    <h5>제품한글3</h5>
                    <button type="button">보러가기</button>
                </div>

                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어4</h3>
                    <h5>제품한글4</h5>
                    <button type="button">보러가기</button>
                </div>

                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어5</h3>
                    <h5>제품한글5</h5>
                    <button type="button">보러가기</button>
                </div>
                <div class="slide-item">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_LHWK01_670x670_0.png" alt="사진없음">
                    <h3>제품영어6</h3>
                    <h5>제품한글6</h5>
                    <button type="button">보러가기</button>
                </div>
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
               

                <!-- 290자 제한 걸어두기 -->
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

	<%-- <div class="footer-all">
         <%@include file="../../Footer/Footer.jsp"%>
   </div>  
    --%>


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

// slick.js
    $('.multiple-items').slick({
    infinite: false,
    slidesToShow: 3,
    slidesToScroll: 3,
    speed : 1000,
    dots: false
    //   prevArrow : "<button type='button' class='slick-prev'>Previous</button> ",
    //   nextArrow : "<button type='button' class='slick-next'>Next</button>",
    });

    var prevButton = document.querySelector('.slick-prev');
    var nextButton = document.querySelector('.slick-next');

    // 버튼 텍스트를 원하는 값으로 설정
    prevButton.textContent = '';
    nextButton.textContent = '';
</script>


</body>
</html>