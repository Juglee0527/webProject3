<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
</head>
<body>
    <div class="signup-container">
        <h2>개인정보 수정</h2>
        <form action="" method="post">
            <div class="input-group">
                <label for="id">아이디</label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="input-group">
                <label for="passwd">비밀번호</label>
                <input type="password" id="passwd" name="passwd" required>
            </div>
            <div class="input-group">
                <label for="confirmPassword">비밀번호 재확인</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
            <div class="input-group">
                <label for="name">이름</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label for="phoneNumber">전화번호</label>
                <input type="tel" id="phoneNumber" name="phoneNumber" required>
            </div>
            <button type="submit" class="btn">수정</button>
        </form>
    </div>
</body>

<style>
	body {
	    font-family: Arial, sans-serif;
	    background-color: #f0f0f0;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    height: 100vh;
	    margin: 0;
	}
	.signup-container {
	    background-color: #ffffff;
	    padding: 20px;
	    border-radius: 5px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    width: 300px;
	    text-align: center;
	}
	.signup-container h2 {
	    margin-bottom: 20px;
	    color: #333333;
	}
	.input-group {
	    margin-bottom: 15px;
	    text-align: left;
	}
	.input-group label {
	    display: block;
	    margin-bottom: 5px;
	    color: #555555;
	}
	.input-group input {
	    width: 100%;
	    padding: 8px;
	    border: 1px solid #cccccc;
	    border-radius: 4px;
	    box-sizing: border-box;
	}
	.btn {
	    width: 100%;
	    padding: 10px;
	    background-color: #007bff;
	    border: none;
	    border-radius: 4px;
	    color: #ffffff;
	    font-size: 16px;
	    cursor: pointer;
	}
	.btn:hover {
	    background-color: #0056b3;
	}
</style>

</html>