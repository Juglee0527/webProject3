package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;

import util.DBConn;

public class PostDAO {
	// Post Parent-Child 구조 어떻게 구현할지?
	// likes, views plus 어떻게 구현할지?
	Connection con = DBConn.getConnection();
	
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
