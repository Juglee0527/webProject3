package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import dto.PostDTO;
import dto.ProductDTO;
import util.DBConn;
import util.Util;

public class PostDAO {
	// Post Parent-Child 구조 어떻게 구현할지?
	// likes, views plus 어떻게 구현할지?
	Connection con = DBConn.getConnection();
	private static PostDAO instance = new PostDAO();
	
	public static PostDAO getInstance() {
		return instance;
	}
	
	public ArrayList<PostDTO> getPostList() {
		String sql = "SELECT * FROM tbl_post_info";
		ArrayList<PostDTO> postList = new ArrayList<PostDTO>();
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int no = rs.getInt("no");
				int ParentPostNo = rs.getInt("parent_post_no");
				int authorNo = rs.getInt("author_no");
				String title = rs.getString("title");
				String context = rs.getString("context");
				LocalDateTime creationTime = Util.dateToLocalDateTime(rs.getDate("creation_date"));
				LocalDateTime modifiedTime = Util.dateToLocalDateTime(rs.getDate("modified_date"));
				int likes = rs.getInt("likes");
				int views = rs.getInt("views");
				PostDTO post = new PostDTO(no, ParentPostNo, authorNo, title, context, creationTime, modifiedTime, likes, views);
				
//				ProductDTO product = new ProductDTO(no, sellerNo, title, description, addr, price, creationDate, modifiedDate, likes);
				postList.add(post);
			}
			
			return postList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public boolean addPost(int parentPostNo, int authorNo, String title, String context) {
		
		String sql = "INSERT INTO tbl_post_info"
				+ "(parent_post_no, author_no, title, context) VALUES"
				+ "(?, ?, ?, ?)";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(0, parentPostNo);
			pstmt.setInt(1, authorNo);
			pstmt.setString(2, title);
			pstmt.setString(3, context);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean editPost(int no, String title, String context) {
		String sql = "UPDATE tbl_post_info SET title = ?, context = ?, modified_date = now() where no = ?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setString(0, title);
			pstmt.setString(1, context);
			pstmt.setInt(2, no);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean deletePost(int no) {
		String sql = "DELETE FROM tbl_post_info WHERE no = ?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(0, no);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

}
