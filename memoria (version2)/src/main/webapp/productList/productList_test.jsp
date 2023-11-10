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

list = dao.getProductList();
%>
    
    <section class="stn">
    <div class="content">
        <div class="banner-sentence">
            <h2 class="best">베스트셀러</h2>
            <p class="best">가장 사랑받는 제품들, 완벽한 선물을 위한 영감, 일상의 즐거움과 새로운 루틴으로 향기로움을 채워 보세요</p>    
        </div>

        <div class="banner-img">
            <img src="https://www.jomalone.co.kr/media/export/cms/campaigns/brand_film/MPP/22G09_Evergreen_Brand_Film_MPP_Banner_Desktop.jpg">
        </div>

      <div class="flex-section"> 
      <%
      for(ProductDTO dto : list) {
   		%>
      
        <div class=list-item>
            <div class="item-img">
                 <img src="../productimg/<%=dto.getP_id()+".png"%>">
            </div>
            <div class="item-name">
                <h2><%=dto.getP_ename() %></h2>
                <h3><%=dto.getP_kname() %></h3>
            </div>
            <div class="item-price">
                <h4>₩<%=dto.getP_price() %></h4>    
            </div>
            <div class="item-btn">
                <button type="button" onclick="location.href='../Board/detailPage.jsp?pid=<%=dto.getP_id()%>'">보러가기</button>
            </div>
        </div>
        <%} %>
    </div>
    </div>    
    </section>

	
	<!-- 공통footer -->
	<div class="footer-all">
		<%@include file="../../Footer/Footer.jsp"%>
	</div>	

</body>
</html>