<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  <link rel="stylesheet" href="payment.css">
<title>Insert title here</title>
</head>
<body>

<header>
	<%@include file = "../../header/Header.jsp" %>
</header>

  
  
  <main> 
    <div class="p-box">
      <div class="productList pgroup">
        <p class="basket-product">��ٱ��ϻ�ǰ</p>
        <div class="innerList">
          <ul class="paymentList-ul p__ul">
            <li>��ٱ��� �׽�Ʈ</li>
            <li>��ٱ��� �׽�Ʈ</li>
 
          </ul>
        </div>
      </div>	
  
  
        <aside class="payGroup pgroup">
          <div class="sticky-block">
            <p class="order-product">�ֹ� ��ǰ</p>
            <form>
            <ul class="payGroup-ul p__ul">
              <li>��ǰ�ݾ�  <span>10,000</span></li>
              <li>���αݾ�  <span>1,000</span></li>
              <li>��ۺ�    <span>50,000</span></li>
            </ul>
            
            <div class="total-output">
              <p class="total-pay">�Ѱ����ݾ� <span>1,000,000</span></p>
              <button type="button" class="total-btn">����</button>
            </div>
          </form>

          </div>
        </aside>

    </div>
 

  </main>


	<%@include file = "../../Footer/Footer.jsp" %>	

</body>
</html>