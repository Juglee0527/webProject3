<%@page import="dto.ProductDTO"%>
<%@page import="dao.ProductDAO"%>
<%@page import="java.io.File"%>
<%@page import="util.Util"%>
<%@page import="dao.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%
request.setCharacterEncoding("UTF-8");

String uploadDir = application.getRealPath("images");
out.println(uploadDir);
MultipartRequest multi = new MultipartRequest(request, uploadDir, 5 * 1024 * 1024, "utf-8",
		new DefaultFileRenamePolicy());

String title = null;
String context = null;
int price = 0;

String originalFileName = multi.getFilesystemName("photo");
if (originalFileName != null) {
	String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));

	String newFileName = "product" + (ProductDAO.getInstance().getLastRow() + 1) + ".jpg";
	out.println(newFileName);

	// 파일 객체 생성
	File oldFile = new File(uploadDir + "/" + originalFileName);
	File newFile = new File(uploadDir + "/" + newFileName);

	oldFile.renameTo(newFile);
}

ProductDAO pDAO = ProductDAO.getInstance();

if (multi.getParameter("title") != null) 
	title = multi.getParameter("title");

if (multi.getParameter("context") != null)
	context = multi.getParameter("context");

if (multi.getParameter("price") != null)
	price = Util.parseInt(multi.getParameter("price"));

pDAO.addProduct(1, title, context, "", price);
%>