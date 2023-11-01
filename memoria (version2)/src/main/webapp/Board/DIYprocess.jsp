<%@page import="utils.JSFunction"%>
<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String userName = (String)session.getAttribute("name");
if(userName == null ){
	JSFunction.alertBack("로그인하고 다시하세요", out);
}

String ml = request.getParameter("ml_selectBox");
String top = request.getParameter("top");
String mid = request.getParameter("mid");
String base = request.getParameter("base");

ProductDAO dao = new ProductDAO();
ProductDTO dto = new ProductDTO();

String type =dao.findType(mid);

String id = userName +" DIY"+ml;

dto.setP_id(id);
dto.setP_kname(userName + " DIY");
dto.setP_ename(userName + " DIY");
int price =0;
if(ml.equals("50ml")){
	price = 100;
}else if (ml.equals("75ml")){
	price = 150;
}else{
	price = 175;
}
dto.setP_price(price);
dto.setP_stock(1);
dto.setP_brand(userName);
dto.setScentid(mid);
dto.setP_ml(ml);
dto.setType(type);
dto.setImage(mid);
dto.setTop(top);
dto.setMid(mid);
dto.setBase(base);
dto.setInfomation("설명");
System.out.println(ml);
System.out.println(top);
System.out.println(mid);
System.out.println(base);
System.out.println(type);
boolean check = dao.addDIYProduct(dto);
if(check){
	JSFunction.alertLocation("완료되었습니다.", "../addToCart/addToCart.jsp?id="+id, out);
}

%>