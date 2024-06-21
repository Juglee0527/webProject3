<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매&판매 내역</title>
</head>
<body>
    <h1 style="text-align: center;">구매&판매 내역</h1>

    <div class="filter-options">
        <select>
            <option value="6">최근 6개월</option>
            <option value="3">최근 3개월</option>
            <option value="1">최근 1개월</option>
        </select>
    </div>

    <div class="purchase-history">
        <!-- 구매 내역 예시 -->
        <div class="purchase-item">
            <p>구매일자: 2024-05-20</p>
            <p>구매상품: 아이폰 12</p>
            <p>가격: 1,000,000원</p>
        </div>
        <div class="purchase-item">
            <p>구매일자: 2024-05-18</p>
            <p>구매상품: 갤럭시 S21</p>
            <p>가격: 900,000원</p>
        </div>
        <!-- 구매 내역 예시 끝 -->
    </div>
</body>

<style>
	body {
	    font-family: Arial, sans-serif;
	    background-color: #f0f0f0;
	    padding: 20px;
	}
	.purchase-history-title {
	    font-size: 24px;
	    font-weight: bold;
	    margin-bottom: 20px;
	}
	.purchase-history {
	    background-color: #ffffff;
	    padding: 20px;
	    border-radius: 5px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}
	.filter-options {
	    margin-bottom: 20px;
	}
	.filter-options select {
	    padding: 8px;
	    border-radius: 4px;
	    border: 1px solid #cccccc;
	    font-size: 16px;
	}
	.purchase-item {
	    margin-bottom: 10px;
	    border-bottom: 1px solid #cccccc;
	    padding-bottom: 10px;
	}
	.purchase-item:last-child {
	    border-bottom: none;
	    margin-bottom: 0;
	    padding-bottom: 0;
	}
	.purchase-item p {
	    margin: 5px 0;
	}
</style>

</html>