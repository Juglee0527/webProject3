package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dto.UserDTO;
import util.DBConn;

public class UserDAO {
	Connection con = DBConn.getConnection();
	private static UserDAO instance = new UserDAO();
	
	public static UserDAO getInstance() {
		return instance;
	}
	
	public UserDTO getUser(int no) {
		String sql = "SELECT * FROM tbl_user_info where no = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String phoneNumber = rs.getString("phone_number");
				String addr = rs.getString("addr");
				UserDTO user = new UserDTO(id, null, name, null, phoneNumber, 0, phoneNumber, addr, null);
				return user;
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public int signIn(String id, String passwd) {
		
		String sql = "SELECT * FROM tbl_user_info WHERE id = ? and passwd = ?"; 
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return rs.getInt(1);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -1;
	}

	public boolean signUp(String id, 
						 String passwd,
						 String name,
						 String nickname,
						 String phoneNumber,
						 String gender, 
						 String addr,
						 String profileImage) 
	{
		System.out.println("asdf");
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
			pstmt.setString(6, gender);
			pstmt.setString(7, addr);
			pstmt.setString(8, profileImage);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean setAddrFromUser(String addr, int no) {
		
		String sql = "update tbl_user_info set addr = ? where no = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(0, addr);
			pstmt.setInt(1, no);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
}
