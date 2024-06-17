<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = null;
	String passwd = null;
	
	if (request.getParameter("id") != null) 
		id = request.getParameter("id");
	
	if (request.getParameter("passwd") != null)
		passwd = request.getParameter("passwd");
	
	PrintWriter script = response.getWriter();
	
	if (id==null || passwd==null) {
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("</script>");
		script.close();
		return;
	}
	
	
	UserDAO userDAO = new UserDAO();
	if (userDAO.signIn(id, passwd)) {
		script.println("<script>");
		script.println("alert('로그인에 성공했습니다.')");
		// 성공하면 href 바꾸던가 하면될듯
		script.println("</script>");
		script.close();
	} else {
		script.println("<script>");
		script.println("alert('로그인에 실패했습니다.')");
		script.println("</script>");
		script.close();
	}
	

%>