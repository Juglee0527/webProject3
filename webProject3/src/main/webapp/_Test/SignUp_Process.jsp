<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = null;
	String passwd = null;
	String name = null;
	String nickname = null;
	String phoneNumber = null;
	int gender = -1;
	String addr = null;
	String profileImage = null;
	
	if (request.getParameter("id") != null) 
		id = request.getParameter("id");
	
	if (request.getParameter("passwd") != null)
		passwd = request.getParameter("passwd");
	
	if (request.getParameter("name") != null)
		name = request.getParameter("name");
	
	if (request.getParameter("nickName") != null)
		nickname = request.getParameter("nickName");
	
	if (request.getParameter("phoneNumber") != null)
		phoneNumber = request.getParameter("phoneNumber");
	
	if (request.getParameter("gender") != null)
		gender = Integer.parseInt(request.getParameter("gender"));
	
	if (request.getParameter("addr") != null)
		addr = request.getParameter("addr");
	
	if (request.getParameter("image") != null)
		profileImage = request.getParameter("image");
	
	
	PrintWriter script = response.getWriter();
	
	if (id==null || passwd==null || name==null || nickname==null || phoneNumber==null || gender==-1 || addr==null || profileImage==null) {
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("</script>");
		script.close();
		return;
	}
	
	UserDAO userDAO = new UserDAO();
	if (userDAO.signUp(id, passwd, name, nickname, phoneNumber, gender, addr, profileImage)) {
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.')");
		script.println("</script>");
		script.close();
		return;
	}
	
	
%>