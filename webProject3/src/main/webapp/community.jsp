<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
</head>
<body>
    <div class="header-wrapper">
        <h1>커뮤니티</h1>
        <a href="communityAdd.jsp">
         	<button class="register-btn">등록하기</button>
         </a>
    </div>

    <div class="post">
        <h3 class="post-title">여자친구 구합니다..ㅜ</h3>
        <p class="post-info">작성자: 김모쏠 | 작성일: 2024-05-21 | 조회수: 0 | 추천수: 0 | 댓글수: 0</p>
        <p>안녕하세요 25살 모쏠인 김모쏠이라고 합니다.. 저는 순수하고요...</p>
    </div>

    <div class="post">
        <h3 class="post-title">여기 맛집 추천해주세요!</h3>
        <p class="post-info">작성자: 이식탐 | 작성일: 2024-05-20 | 조회수: 1000 | 추천수: 432 | 댓글수: 200</p>
        <p>안녕하세요 이식탐입니다! 제가 한식, 중식, 일식 다 잘먹는데 추천...</p>
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
	.community-title {
	    font-size: 24px;
	    font-weight: bold;
	    margin-bottom: 20px;
	}
	.post {
	    background-color: #ffffff;
	    padding: 20px;
	    border-radius: 5px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    margin-bottom: 20px;
	}
	.post-title {
	    font-size: 18px;
	    margin-bottom: 10px;
	}
	.post-info {
	    color: #888888;
	    margin-bottom: 10px;
	}
</style>
</html>