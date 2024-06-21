<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이달의 거래왕</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 20px;
        text-align: center;
    }
    h1 {
        text-align: center;
    }
    .podium {
        display: flex;
        justify-content: center;
        align-items: flex-end;
        height: 300px;
    }
    .ranking-item {
        width: 100px;
        margin: 0 10px;
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
        align-items: center;
        background-color: #ffffff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 10px 20px;
        color: #000;
    }
    .first {
        background-color: #ffd700;
        height: 200px;
    }
    .second {
        background-color: #c0c0c0;
        height: 150px;
    }
    .third {
        background-color: #cd7f32;
        height: 100px;
    }
</style>
</head>
<body>
    <h1>이달의 거래왕</h1>

    <div class="podium">
        <div class="ranking-item second">
            <p>2등</p>
            <p>이아무개 (거래 횟수: 80)</p>
        </div>
        <div class="ranking-item first">
            <p>1등</p>
            <p>류선재 (거래 횟수: 100)</p>
        </div>
        <div class="ranking-item third">
            <p>3등</p>
            <p>사기꾼 (거래 횟수: 70)</p>
        </div>
    </div>
</body>
</html>
