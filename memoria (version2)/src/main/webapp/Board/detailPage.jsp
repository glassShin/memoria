<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="detailPage.css">
<title>제품상세 페이지</title>
</head>
<body>
    <!-- 공통 상단메뉴-->
	<jsp:include page="../header/Header.jsp"/>
	
   
    <main>
            <div id="product">
                <div class="p1 pbox_li">
                	<img src="">
                </div>
                
                <ul class="pbox_ul">
                    <li class="p2 pbox_li">
                        <ul class="p2_ul">
                            <li><h2>상품 이름</h2></li>
                            <li><h4>상품 가격</h4></li>
                            <li><a class="" href="#review">리뷰이동</a></li>
                            <li>(향수라는 뜻의 perfume은 '연기를 내어 통과한다'라는 
                                의미의 라틴어인 perfumare에서 나왔다. 
                                향수의 기원은 종교적 의식, 곧 신과 인간과의 
                                교감을 위한 매개체로부터 출발하는데, 
                                그 역사는 메소포타미아 문명과 
                                고대 이집트 문명 시기인 약 5,000년 전으로 거슬러 올라간다. 
                                신을 신성하게 여겨온 고대의 사람들은 신에게 제사를 지낼 때 
                                몸을 청결히 하고, 향기가 풍기는 나뭇가지를 태우고, 
                                향나무잎으로 즙을 내어 몸에 발랐다고 한다.)
                            </li>
                            <li><input class="buy_btn" type="button" value="구매하기"></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div id="tasting_note">
                <ul class="note_ul">
                    <!-- <p><h3>테이스팅 노트</h3></p>구역이름 -->
                    <li class="note1 common_note">
                        <p class="note_position">탑 노트</p>
                        <p class="note_content">일단 내용</p>
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/King_William_Pear_Desktop.png" alt="" class="note_img">
                    </li>
                    <li class="note2 common_note">
                        <p class="note_position">탑 노트</p>
                        <p class="note_content">일단 내용</p>
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Freesia_Desktop.png" alt="" class="note_img">
                    </li>
                    <li class="note3 common_note">
                        <p class="note_position">탑 노트</p>
                        <p class="note_content">일단 내용 </p>
                        <img src="https://www.jomalone.co.kr/media/export/cms/spp/tasing_notes/desktop/Patchouli_Desktop.png" alt="" class="note_img">
                    </li>
                </ul>
            </div>




            <div id="perfuem-manual">
                <ul class="manual_ul">
                    <li class="manual1 common_manual">
                     <img src="../image2/001.png" alt="메뉴얼1"
                     class="img-manual">
                    </li>

                    <li class="manual2 common_manual">
                        <img src="../image2/002.png" alt="메뉴얼2"
                        class="img-manual">
                    </li>

                    <li class="manual3 common_manual">
                        <img src="../image2/003.png" alt="메뉴얼3"
                        class="img-manual">
                    </li>

                    <li class="manual4 common_manual">
                        <img src="../image2/004.png" alt="메뉴얼4"
                        class="img-manual">
                    </li>
                </ul>
        
            </div>


            <div id="best_list">
                <ul class="best_ul">
                    <li class="best1 common_best">
                        <img src="https://shop.dior.co.kr/cdn/shop/products/3348901582513_0.jpg?crop=center&height=1000&v=1641257208&width=1500" alt="아직 없어요" class="best_img">
                        <p class="best_name">제품이름</p>
                        <p class="best_price">가격</p>
                        <input type="button" class="b_btn"  value="구매하기">
                    </li>

                    <li class="best2 common_best">
                        <img src="https://shop.dior.co.kr/cdn/shop/products/3348901582513_0.jpg?crop=center&height=1000&v=1641257208&width=1500" alt="아직 없어요" class="best_img">
                        <p class="best_name">제품이름</p>
                        <p class="best_price">가격</p>
                        <input type="button" class="b_btn"  value="구매하기">
                    </li>

                    <li class="best3 common_best">
                        <img src="https://shop.dior.co.kr/cdn/shop/products/3348901582513_0.jpg?crop=center&height=1000&v=1641257208&width=1500" alt="아직 없어요" class="best_img">
                        <p class="best_name">제품이름</p>
                        <p class="best_price">가격</p>
                        <input type="button" class="b_btn"  value="구매하기">
                    </li>
                </ul>
        
            </div>





            <div id="review">
                <h1 class="r_title">리뷰</h1>
                    <!-- 댓글창 -->
                    <div class="review_box">
                        <header class="review_header"> 
                            <div class="rating">별점</div>
                            <div class="r_headline"><h2>제목</h2></div>
                        </header>
                    <div class="review_content">
                        <p class="user_review">
                            임시작성1
                        </p>
                    </div>

                    <footer class="review_footer">
                        <div class="emotion_area">
        
                            <input type="button" value="좋아요" class="emotion_btn">
                            <input type="button" value="싫어요" class="emotion_btn">
                        </div>
                    
                        <div class="user_log">
                            <ul>
                                <li>작성자: <span>흰둥이</span></li>
                                <li>작성날짜: <span>연도</span>-<span>월</span>-<span></span>일</li>
                            </ul>
                        </div>
                    </footer>
                </div>
                

                <div class="review_box">
                        <header class="review_header"> 
                            <div class="rating">별점</div>
                            <div class="r_headline"><h2>제목</h2></div>
                        </header>

                        <div class="review_content">
                            <p class="user_review">
                                임시작성2
                            </p>
                        </div>

                        <footer class="review_footer">
                            <div class="emotion_area">
                                <input type="button" value="좋아요" class="emotion_btn">
                                <input type="button" value="싫어요" class="emotion_btn">
                            </div>
                           
                            <div class="user_log">
                                <ul>
                                    <li>작성자:<span>흰둥이</span></li>
                                    <li>작성날짜:<span>연도</span>-<span>월</span>-<span></span>일</li>
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
</body>
</html>