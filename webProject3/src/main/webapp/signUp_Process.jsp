<%@page import="dao.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("UTF-8");
	String id = null;
	String passwd = null;
	String confirmPassword = null;
	String name = null;
	String nickname = null;
	String phoneNumber = null;
	String gender = null;
	String addr = null;
	String profileImage = null;

	//id
	//passwd
	// confirmPassword
	//name
	//phoneNumber
	
	if (request.getParameter("id") != null) {
		id = request.getParameter("id");
	}
	if (request.getParameter("passwd") != null) {
		passwd = request.getParameter("passwd");
	}
	if (request.getParameter("confirmPassword") != null) {
		confirmPassword = request.getParameter("confirmPassword");
	}
	if (request.getParameter("name") != null) {
		name = request.getParameter("name");
	}
	if (request.getParameter("phoneNumber") != null) {
		phoneNumber = request.getParameter("phoneNumber");
	}
	
	PrintWriter script = response.getWriter();
	
	if (id==null || passwd==null || name==null || phoneNumber==null) {
		%>
		<script type="text/javascript">
			alert("입력이 안된 사항이 있습니다.");
			history.go(-1);
		</script>
		<%
		return;
	}
	
	if (!passwd.equals(confirmPassword)) {
		%>
		<script type="text/javascript">
			alert("비밀번호가 일치하지 않습니다.");
			history.go(-1);
		</script>
		<%
		return;
	}
	
	UserDAO userDAO = new UserDAO();
	if (userDAO.signUp(id, passwd, name, nickname, phoneNumber, gender, addr, profileImage)) {
		%>
		<script type="text/javascript">
			alert("회원가입에 성공하였습니다.");
		</script>
		<%
		response.sendRedirect("login.jsp");
		return;
	}
	
%>