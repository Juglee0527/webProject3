<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@page import="dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
    <header>
        <a href="#" class="logo">고수</a>
         <nav>
            <a href="board.jsp">중고 거래 게시판</a>
            <a href="community.jsp">커뮤니티</a>
            <a href="ranking.jsp">이달의 거래왕</a>
            <a href="history.jsp">구매&판매내역</a>
        </nav>
        
        <nav>
            <a href="main.jsp">로그아웃</a>
        </nav>
    </header>
	
    <div class="main-content">
        <h2>현재 조회수가 높은 상품</h2>
        <div class="product-list">
            <div class="product-item">
                <img src="images/product1.jpg" alt="상품1">
                <div class="product-info">
                    <p>프라다 정품 가방</p>
                    <p>가격: 890,000원</p>
                </div>
            </div>
            <div class="product-item">
                <img src="images/product2.jpg" alt="상품2">
                <div class="product-info">
                    <p>아이폰12프로맥스 512기가</p>
                    <p>가격: 650,000원</p>
                </div>
            </div>
        </div>

        <h2>현재 채팅수가 많은 상품</h2>
        <div class="product-list">
            <div class="product-item">
                <img src="images/product3.jpg" alt="상품3">
                <div class="product-info">
                    <p>i mac 싸게 팝니다</p>
                    <p>가격: 100,000원</p>
                </div>
            </div>
            <div class="product-item">
                <img src="images/product4.jpg" alt="상품4">
                <div class="product-info">
                    <p>전여친한테 받은거 정리</p>
                    <p>가격: 450,000원</p>
                </div>
            </div>
        </div>
    </div>
</body>

<style>
	body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 20px;
        margin: 0;
    }
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #ffffff;
        padding: 10px 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .logo {
        font-size: 24px;
        font-weight: bold;
        text-decoration: none;
        color: #333333;
    }
    nav {
        display: flex;
        gap: 20px;
    }
    nav a {
        text-decoration: none;
        color: #333333;
        font-weight: bold;
    }
    .main-content {
        margin-top: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .product-list {
        display: flex;
        justify-content: center;
        gap: 20px;
        width: 100%;
        max-width: 1000px;
        margin-top: 20px;
    }
    .product-item {
        width: 40%;
        background-color: #ffffff;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    .product-item img {
        width: 100%;
        border-radius: 5px;
    }
    .product-info {
        margin-top: 10px;
    }
    .product-info p {
        margin: 5px 0;
    }
</style>

</html>