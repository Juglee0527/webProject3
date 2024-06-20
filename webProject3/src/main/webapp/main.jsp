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
        <a href="#" class="logo">사이트 로고</a>
        <nav>
            <a href="login.jsp">로그인</a>
            <a href="myPage.jsp">My page</a>
        </nav>
    </header>

    <div class="main-content">
        <nav>
            <a href="board.jsp">중고 거래 게시판</a>
            <a href="community.jsp">커뮤니티</a>
            <a href="ranking.jsp">랭킹</a>
            <a href="history.jsp">구매&판매내역</a>
        </nav>

        <h2>현재 조회수가 높은 상품</h2>
        <div class="product-list">
            <!-- 조회수가 높은 상품 예시 -->
            <div class="product-item">
                <img src="product1.jpg" alt="상품1">
                <div class="product-info">
                    <p>상품 제목 1</p>
                    <p>가격: 10,000원</p>
                </div>
            </div>
            <div class="product-item">
                <img src="product2.jpg" alt="상품2">
                <div class="product-info">
                    <p>상품 제목 2</p>
                    <p>가격: 20,000원</p>
                </div>
            </div>
            <!-- 조회수가 높은 상품 예시 끝 -->
        </div>

        <h2>인기수가 높은 상품</h2>
        <div class="product-list">
            <!-- 인기수가 높은 상품 예시 -->
            <div class="product-item">
                <img src="product3.jpg" alt="상품3">
                <div class="product-info">
                    <p>상품 제목 3</p>
                    <p>가격: 30,000원</p>
                </div>
            </div>
            <div class="product-item">
                <img src="product4.jpg" alt="상품4">
                <div class="product-info">
                    <p>상품 제목 4</p>
                    <p>가격: 40,000원</p>
                </div>
            </div>
            <!-- 인기수가 높은 상품 예시 끝 -->
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
	}
	.product-list {
	    display: grid;
	    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
	    gap: 20px;
	    margin-top: 20px;
	}
	.product-item {
	    background-color: #ffffff;
	    padding: 10px;
	    border-radius: 5px;
	    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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