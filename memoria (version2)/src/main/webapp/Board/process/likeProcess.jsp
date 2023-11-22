<%@page import="heart.HeartDAO"%>
<%
    String reviewId = request.getParameter("reviewId");
    boolean heartchk = Boolean.parseBoolean(request.getParameter("heartchk"));
    String user = (String)session.getAttribute("user");
    HeartDAO dao = new HeartDAO();

    response.setContentType("text/plain;charset=UTF-8");
    response.setCharacterEncoding("UTF-8");

    if (user == null) {
        response.getWriter().write("loginerr");
    } else {
        if (heartchk) {
            dao.insertHeart(user, reviewId);
            response.getWriter().write("insertsuccess");
        } else {
            dao.deleteHeart(user, reviewId);
            response.getWriter().write("deletesuccess");
        }
    }
%>