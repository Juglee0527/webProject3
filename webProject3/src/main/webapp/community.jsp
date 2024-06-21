<%@page import="dao.UserDAO"%>
<%@page import="dto.UserDTO"%>
<%@page import="dto.PostDTO"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PostDAO"%>
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

    
    	<%
			PostDAO pDao = PostDAO.getInstance();
			ArrayList<PostDTO> postList = pDao.getPostList();	
			Collections.reverse(postList);
			for (int i = 0; i < postList.size(); i++) {
				PostDTO post = postList.get(i);
				UserDTO user = UserDAO.getInstance().getUser(post.getAuthorNo());
		%>
	<div class="post">
        <h3 class="post-title"><%= post.getTitle() %></h3>
        <p class="post-info">작성자: <%= user.getName() %> | 작성일: <%= post.getCreationDate() %> | 조회수: <%= post.getViews() %> | 추천수: <%= post.getLikes() %> | 댓글수: 0</p>
        <p><%= post.getContext()%></p>
        
        
    </div>
<%} %>

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