<%@page import="product.ProductDAO"%>
<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="productList_test.css">
<title>Insert title here</title>
</head>
<body>

<%@include file = "../../header/Header.jsp" %>	
<%
ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
ProductDAO dao = new ProductDAO();

ProductDTO dto = dao.getproduct("test");
%>
    
    <main>
        <div class="banner-sentence">
            <h2>베스트셀러</h2>
            <p>가장 사랑받는 제품들, 완벽한 선물을 위한 영감, 일상의 즐거움과 새로운 루틴으로 향기로움을 채워 보세요</p>    
        </div>

        <div class="banner-img">
            <img src="https://www.jomalone.co.kr/media/export/cms/campaigns/brand_film/MPP/22G09_Evergreen_Brand_Film_MPP_Banner_Desktop.jpg">
        </div>

      <div class="flex-section"> 
        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>


        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>


        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>


        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_JMKR15_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>


        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_L3AF01_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_L3AF01_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_L3AF01_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>

        <div class=list-item>
            <div class="item-img">
                <img src="https://www.jomalone.co.kr/media/export/cms/products/670x670/jo_sku_L3AF01_670x670_0.png">
            </div>
            <div class="item-name">
                <h2>영어 제목</h2>
                <h3>한글 제목</h3>
            </div>
            <div class="item-price">
                <h4>가격</h4>    
            </div>
            <div class="item-btn">
                <button type="button">
                    구매하기
                </button>
            </div>
        </div>
    </div>    
    </main>

	
	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	

</body>
</html>