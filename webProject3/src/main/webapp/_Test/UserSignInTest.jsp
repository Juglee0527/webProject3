<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
    <div class="login-container">
        <h2>로그인</h2>
        <form action="SignIn_Process.jsp" method="post">
            <div class="input-group">
                <label for="id">아이디</label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="input-group">
                <label for="passwd">비밀번호</label>
                <input type="password" id="passwd" name="passwd" required>
            </div>
            <button type="submit" class="btn">로그인</button>
        </form>
        <div class="signup-link">
            <p>아직 회원이 아니신가요? <a href="#">회원가입</a></p>
        </div>
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
	
	.login-container {
	    background-color: #ffffff;
	    padding: 20px;
	    border-radius: 5px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    width: 300px;
	    text-align: center;
	}
	
	.login-container h2 {
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
	
	.signup-link {
	    margin-top: 15px;
	}
	
	.signup-link a {
	    color: #007bff;
	    text-decoration: none;
	}
	
	.signup-link a:hover {
	    text-decoration: underline;
	}
</style>

</html>