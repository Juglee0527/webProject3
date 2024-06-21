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
        <select id="selectMonth">
            <option value="1">최근 1개월</option>
            <option value="2">최근 2개월</option>
            <option value="3">최근 3개월</option>
        </select>
    </div>

    <div class="purchase-history">
        <div class="purchase-item" data-idx="1">
            <p>판매일자: 2024-06-15</p>
            <p>판매상품: 전여친 목도리</p>
            <p>가격: 7,000원</p>
        </div>
        <div class="purchase-item" data-idx="1">
            <p>구매일자: 2024-06-10</p>
            <p>구매상품: 갤럭시 S21</p>
            <p>가격: 900,000원</p>
        </div>
        <div class="purchase-item" data-idx="1">
            <p>구매일자: 2024-05-30</p>
            <p>구매상품: 아이폰 12</p>
            <p>가격: 1,000,000원</p>
        </div>
        <div class="purchase-item" data-idx="2">
            <p>구매일자: 2024-04-29</p>
            <p>구매상품: 로지텍 마우스</p>
            <p>가격: 80,000원</p>
        </div>
        <div class="purchase-item" data-idx="2">
            <p>판매일자: 2024-04-24</p>
            <p>판매상품: 구찌 가방</p>
            <p>가격: 300,000원</p>
        </div>
        <div class="purchase-item" data-idx="3">
            <p>판매일자: 2024-04-10</p>
            <p>판매상품: LG 노트북</p>
            <p>가격: 520,000원</p>
        </div>
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 
	
<script>
	$(document).ready(function() {
	    $('#selectMonth').change(function() {
	        var selectedValue = $(this).val();
	        $('.purchase-item').each(function() {
	            var itemIdx = $(this).data('idx');
	            if (itemIdx <= selectedValue) {
	                $(this).css('display', 'block');
	            } else {
	                $(this).css('display', 'none');
	            }
	        });
	    }).trigger('change');
	});
</script>

</html>