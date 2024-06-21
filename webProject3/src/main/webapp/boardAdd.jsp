<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고거래 게시판 등록</title>
</head>
<body>
    <div class="signup-container">
        <h2>중고거래 게시판 등록</h2>
        <form action="" method="post">
            <div class="input-group">
                <label for="title">제목</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="input-group">
                <label for="mainText">본문</label>
                <input type="password" id="mainText" name="mainText" required>
            </div>
            <div class="input-group">
                <label for="photo">사진</label>
                <input type="file" id="photo" name="photo" required>
            </div>
            <button type="submit" class="btn">등록</button>
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