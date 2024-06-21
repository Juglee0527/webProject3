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
        <h2 class="post-title">전여친한테 받은거 정리</h2>
        <img class="product-image" src="images/product4.jpg" alt="제품 사진">
        <div class="additional-info">
            <p>아쿠아 디 파르마 디퓨저는 미사용했고 2개는 써봣는데 좋더라구요 ㅎㅎ 그리고 선글라스는 차에서만 1번 쓰고 탑박스에 보관만 했으며 향수는 받아서 1주일도 안되게 썼습니다 쿨거래시 택포 + 내고 가능하고 하나씩만 구매하셔도 됩니당 ㅎㅎㅎ</p>
            <p>가격: 450,000원</p>
        </div>
        <div class="comment-section">
            <h3>댓글</h3>
            <input type="text" class="comment-input" placeholder="댓글을 입력하세요">
            <button class="btn-comment">댓글 작성</button>
        </div>
    </div>
    
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
        <div class="comment-section">
            <h3>댓글</h3>
            <input type="text" class="comment-input" placeholder="댓글을 입력하세요">
            <button class="btn-comment">댓글 작성</button>
        </div>
    </div>
    
    <div class="post-container">
        <h2 class="post-title">프라다 정품 가방</h2>
        <img class="product-image" src="images/product1.jpg" alt="제품 사진">
        <div class="additional-info">
            <p>보관하다 판매 .완전 깨끗 실사용 극소.계절상관없이 다양한 록에 착용 안에 공간이 넓어 물건 많이 들러가고 나눔칸이 있어 편리 크로스끈 탈부착 가능 길이조절 가능합니다 삼색 크로스끈이 더 굿 영수증 보유 쇼핑백 보유</p>
            <p>가격: 890,000원</p>
        </div>
        <div class="comment-section">
            <h3>댓글</h3>
            <input type="text" class="comment-input" placeholder="댓글을 입력하세요">
            <button class="btn-comment">댓글 작성</button>
        </div>
    </div>
    
    <div class="post-container">
        <h2 class="post-title">아이폰12프로맥스 512기가</h2>
        <img class="product-image" src="images/product2.jpg" alt="제품 사진">
        <div class="additional-info">
            <p>상태 좋아요</p>
            <p>가격: 650,000원</p>
        </div>
        <div class="comment-section">
            <h3>댓글</h3>
            <input type="text" class="comment-input" placeholder="댓글을 입력하세요">
            <button class="btn-comment">댓글 작성</button>
        </div>
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