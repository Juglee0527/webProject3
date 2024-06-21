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
		%>
		<script type="text/javascript">
			alert("입력이 안된 사항이 있습니다.");
			history.go(-1);
		</script>
		<%
		return;
	}
	
	
	UserDAO userDAO = new UserDAO();
	int userNo = userDAO.signIn(id, passwd);
	if ( userNo != -1 ) {
		%>
		<script type="text/javascript">
			alert("로그인에 성공하였습니다.");
		</script>
		<%
		session.setAttribute("userNo", userNo);
		response.sendRedirect("main_logout.jsp");
	} else {
		%>
		<script type="text/javascript">
			alert("로그인에 실패하였습니다.");
			history.go(-1);
		</script>
		<%
	}
	

%>