package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import util.DBConn;

public class UserDAO {
	Connection con = DBConn.getConnection();

	public boolean signIn(String id, String passwd) {
		
		String sql = "SELECT * FROM tbl_user_info WHERE id = ? and passwd = ?"; 
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			return (rs.getRow() > 0);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public boolean signUp(String id, 
						 String passwd,
						 String name,
						 String nickname,
						 String phoneNumber,
						 int gender, 
						 String addr,
						 String profileImage) 
	{
		
		String sql = "insert into tbl_user_info"
				   + "(id, passwd, name, nickname, phone_number, gender, addr, profile_image) VALUES"
				   + "(?, ?, ?, ?, ?, ?, ?, ?)";		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			pstmt.setString(3, name);
			pstmt.setString(4, nickname);
			pstmt.setString(5, phoneNumber);
			pstmt.setInt(6, gender);
			pstmt.setString(7, addr);
			pstmt.setString(8, profileImage);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
