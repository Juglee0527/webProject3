<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
    <h1 style="text-align: center;">마이페이지</h1>
    <div class="container">
        <div class="btn-container">
            <a href="personalInfoEdit.jsp" class="btn">개인정보 수정</a>
            <a href="main.jsp" class="btn">로그아웃</a>
            <a href="main.jsp" class="btn">회원탈퇴</a>
        </div>
        <h2>내가 올린 물품</h2>
	    <div class="post-container">
	        <h2 class="post-title">i mac 싸게 팝니다</h2>
	        <img class="product-image" src="images/product3.jpg" alt="제품 사진">
	        <div class="additional-info">
	            <p>아이맥이 너무 많아서 싸게 팝니다
					작은건 10만원
					큰건 15만원
					너무 많아서 지금 가져가실 분 팔아요</p>
	            <p>가격: 100,000원</p>
	        </div>
	    </div>
    </div>
</body>
<style>
	body {
	    font-family: Arial, sans-serif;
	    background-color: #f0f0f0;
	    padding: 20px;
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
	.welcome-message {
	    text-align: center;
	    margin-bottom: 20px;
	}
	.container {
	    background-color: #ffffff;
	    padding: 20px;
	    border-radius: 5px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}
	.btn-container {
	    text-align: center;
	    margin-top: 20px;
	}
	.btn {
	    padding: 10px 20px;
	    margin-right: 10px;
	    background-color: #007bff;
	    border: none;
	    border-radius: 4px;
	    color: #ffffff;
	    font-size: 16px;
	    cursor: pointer;
	    text-decoration: none;
	}
	.btn:hover {
	    background-color: #0056b3;
	}
	.recent-items {
	    margin-top: 20px;
	}
	.recent-items img {
	    width: 100px;
	    margin-right: 10px;
	    border-radius: 5px;
	}
</style>
</html>