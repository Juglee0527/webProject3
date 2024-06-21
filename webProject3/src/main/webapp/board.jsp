<%@page import="util.Util"%>
<%@page import="dto.ProductDTO"%>
<%@page import="dao.ProductDAO"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고거래 게시판</title>
</head>
<body>
	<div class="header-wrapper">
        <h1>중고거래 게시판</h1>
         <a href="boardAdd.jsp">
         	<button class="register-btn">등록하기</button>
         </a>
    </div>
	
	<div class="post-container">
		<%
			ProductDAO pDao = ProductDAO.getInstance();
			ArrayList<ProductDTO> productList = pDao.getProductList();	
			Collections.reverse(productList);
			for (int i = 0; i < productList.size(); i++) {
				ProductDTO product = productList.get(i);
				
		%>
		<h2 class="post-title"><%= product.getTitle() %></h2>
		<img class="product-image" src="images/product<%= product.getNo() %>.jpg" alt="제품 사진">
		<div class="additional-info">
            <p><%= product.getDescription() %></p>
            <p>가격: <%= Util.formatNum(product.getPrice()) %></p>
        </div>
		<div class="comment-section">
            <h3>댓글</h3>
            <input type="text" class="comment-input" placeholder="댓글을 입력하세요">
            <button class="btn-comment">댓글 작성</button>
        </div>
		
		<%} %>
	</div>
	
   
</body>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 20px;
    }
    .header-wrapper {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }
    .header-wrapper h1 {
        margin: 0;
        font-size: 24px;
    }
    .register-btn {
        padding: 8px 16px;
        background-color: #28a745;
        color: #fff;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }
    .register-btn:hover {
        background-color: #218838;
    }
    .post-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
    .post-title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
    }
    .product-image {
        max-width: 100%;
        height: auto;
        max-height: 300px;
        margin-bottom: 10px;
    }
    .additional-info {
        margin-bottom: 10px;
    }
    .additional-info p {
        margin: 0;
    }
    .comment-section {
        margin-top: 10px;
    }
    .comment-input {
        width: calc(100% - 110px);
        padding: 8px;
        margin-bottom: 10px;
        box-sizing: border-box;
    }
    .btn-comment {
        padding: 8px;
        width: 100px;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        color: #ffffff;
        font-size: 16px;
        cursor: pointer;
    }
    .btn-comment:hover {
        background-color: #0056b3;
    }
</style>


</html>