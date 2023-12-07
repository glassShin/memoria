<%@page import="interest.InterestDAO"%>
<%
	String pid = request.getParameter("pid");
	boolean interchk = Boolean.parseBoolean(request.getParameter("interchk"));
	String user = (String)session.getAttribute("user");
	
	InterestDAO dao = new InterestDAO();
	
	response.setContentType("text/plain;charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
    
    if(user == null) {
    	response.getWriter().write("loginerr");
    }else {
    	if(interchk) {
    		response.getWriter().write("false");
    		dao.insertInterest(user, pid);
    	}else {
    		response.getWriter().write("true");
    		dao.deleteInterest(user, pid);
    	}
    }
%>