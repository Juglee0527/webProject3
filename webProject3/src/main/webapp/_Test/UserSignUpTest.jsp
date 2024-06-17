<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
    <form action="SignUp_Process.jsp" method="post">
    	<p> 아이디 : <input type="text" name="id">
    	<p> 비밀번호 : <input type="text" name="passwd">
    	<p> 이름 : <input type="text" name="name">
    	<p> 닉네임 : <input type="text" name="nickName">
    	<p> 전화번호 : <input type="text" name="phoneNumber">
    	<p> 성별 : <input type="text" name="gender">
    	<p> 주소 : <input type="text" name="addr">
    	<p> 이미지 : <input type="text" name="image">
    	<button type="submit" class="btn">회원가입</button>
    </form>
</body>

</html>