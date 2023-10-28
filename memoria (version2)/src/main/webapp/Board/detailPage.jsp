<%@page import="product.ProductInfoDTO"%>
<%@page import="product.ProductDAO"%>
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
  <%
  String pid = request.getParameter("pid");
  ProductDAO dao = new ProductDAO();
  ProductInfoDTO dto = dao.getproductInfo(pid);
  %>
        <!-- <div class="modal-bg">
            <div class="review-modal">
                <h2>리뷰 작성</h2>
                <div class="md-ratingbox">
                    <span class="md-rating">5</span>/5
                </div>

                <div class="md-rieview">
                    <textarea>

                    </textarea>
                </div>
                <div class="md-btngroup">
                    <button></button>
                    <button></button>
                </div>
            </div> 
        </div> -->
        <div class="img-info">
         
            <div class="img-box">
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_LGT001_1000x1000_0.png">    
            </div>

            <div class="info-box">
                <div class="product-title">
                    <h1><%=dto.getKname()%></h1>
                </div>
                <div class="product-subtitle">
                    <h3><%=dto.getEname() %></h3>
                </div>
                <div class="product-price">
                    <h4><%=dto.getPrice() %></h4>
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


        <!-- 단순 이미지 구역(수정 후에 이미지 삽입 예정, 데이터 사용 필요 x)-->
        <p class="tip">설명서</p>
        <div class="p-manual">
                <div><img src="./manual/001.png"></div>
                <div><img src="./manual/002.png"></div>
                <div><img src="./manual/003.png"></div>
                <div><img src="./manual/004.png"></div>
        </div>


        <div class=" recommend-title">당신을 위한 추천상품</div>
        <div class ="recommend-item">
                <div>
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_LHRM01_1000x1000_0.png">
                    <h2>영어제목</h2>
                     <h5>한글제목</h5>
                    <button type="button">보러가기</button>
                </div>
                <div>
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L32R01_1000x1000_0.png">
                    <h2>영어제목</h2>
                     <h5>한글제목</h5>
                    <button type="button">보러가기</button>
                </div>
                <div>
                    <img src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L2W501_1000x1000_0.png">
                     <h2>영어제목</h2>
                     <h5>한글제목</h5>
                    <button type="button">보러가기</button>
                </div>
        </div>



        

        <div class="review-write">
            <a href="">리뷰 작성하기</a>
        </div>
        
        <div class="review-title">
            리뷰
        </div>



            <div class="ratingbox">
                <span class="p-rating">5</span>/5
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
                        <a href=""><span>yes</span><span class="good"> 0</span></a>
                        <a href=""><span>no</span><span class="bad"> 0</span></a>
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
                        <a href=""><span>yes</span><span class="good"> 0</span></a>
                        <a href=""><span>no</span><span class="bad"> 0</span></a>
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
</body>
</html>