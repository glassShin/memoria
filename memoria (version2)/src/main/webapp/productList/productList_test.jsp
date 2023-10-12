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
    <section class="section-area">
        <div class="p-area">
            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
               <p class="p-name"><%=dto.getP_kname() %></p>
                <p class="p-price"><%=dto.getP_price() %></p>
                <form method="post" action="../addToCart/addToCart.jsp">
                <input type="hidden" value="<%=dto.getP_id()%>" name="productid">
                <input type="submit" value="장바구니"/>
                </form>
            </div>

            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L00401_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>

            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>

            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>

            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>

            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>

            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>
            
              <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>
            
            
              <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>
            
            
              <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>
            
            
              <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>
            
            <div class="buy-product">
                <a href="">
                    <img class="p-img" src="https://www.jomalone.co.kr/media/export/cms/products/1000x1000/jo_sku_L3AF01_1000x1000_0.png">
                </a>
                <p class="p-name">이름</p>
                <p class="p-price">가격</p>
                <a href="">장바구니</a>
            </div>


        </div>
    </section>
</main>

	
	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	

</body>
</html>