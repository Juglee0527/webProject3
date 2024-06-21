<%@page import="util.Util"%>
<%@page import="dao.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String title = null;
	String context = null;
	
	if (request.getParameter("title") != null) 
		title = request.getParameter("title");
	
	if (request.getParameter("context") != null)
		context = request.getParameter("context");
	
	PrintWriter script = response.getWriter();
	
	if (title==null || context==null) {
		%>
		<script type="text/javascript">
			alert("입력이 안된 사항이 있습니다.");
			history.go(-1);
		</script>
		<%
		return;
	}
	
	
	PostDAO postDAO = PostDAO.getInstance();
	System.out.println(session.getAttribute("userNo"));
	postDAO.addPost(0, 1, title, context);
	response.sendRedirect("community.jsp");

%>