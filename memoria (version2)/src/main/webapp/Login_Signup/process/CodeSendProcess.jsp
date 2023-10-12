<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="utils.JSFunction"%>
<%@page import="member.MemberDAO"%>
<!DOCTYPE html>
<%

String phonenum = request.getParameter("phonenum");
String action = request.getParameter("action");

MemberDAO dao = new MemberDAO();

MemberDTO dto = dao.checkTel(phonenum);

if(action.equals("signup")){
	if(dto.getMail()!=null){
		System.out.println("that number has been used before");
		JSFunction.alertBack("이미 사용된 전화번호 입니다.", out);
	}else{
		System.out.println("can use that number");
		String sendedCode = dao.sendRandomMessage(phonenum);

  
		session.setAttribute("code", sendedCode);
		//JSFunction.alertBack("code sended", out);
		JSFunction.alertLocation("문자 보냈습니다.", "../Login_join.jsp", out);
	
	}
}else if(action.equals("findpass")){
	String mail = request.getParameter("mail");
	if(dto.getMail() == null){
		JSFunction.alertBack("이메일 이나 전화번호 잘못 입력 했습니다.", out);
	}else{
		System.out.println("sended code");
		String sendedCode = dao.sendRandomMessage(phonenum);

  
		session.setAttribute("code", sendedCode);
		JSFunction.alertLocation("문자 보냈습니다.", "../find_Password/find_pass.jsp", out);
	
	 }
}
%>