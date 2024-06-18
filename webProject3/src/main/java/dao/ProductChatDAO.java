package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import dto.ProductChatDTO;
import util.DBConn;
import util.Util;

public class ProductChatDAO {
	Connection con = DBConn.getConnection();
	
	public ArrayList<ProductChatDTO> getChatList(int productNo) {
		
		ArrayList<ProductChatDTO> list = new ArrayList<ProductChatDTO>();
		
		String sql = "SELECT * FROM tbl_product_chat WHERE product_no = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(0, productNo);
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int no = rs.getInt("no");
				int parentChatNo = rs.getInt("parent_chat_no");
				int senderNo = rs.getInt("sender_no");
				int receiverNo = rs.getInt("receiver_no");
				String content = rs.getString("content");
				LocalDateTime date = Util.dateToLocalDateTime(rs.getDate("date"));
				
				ProductChatDTO chat = new ProductChatDTO(no, parentChatNo, productNo, senderNo, receiverNo, content, date);
				list.add(chat);
			}
		
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ProductChatDTO getChat(int productNo) {
		String sql = "SELECT * FROM tbl_product_chat WHERE product_no = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(0, productNo);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int no = rs.getInt("no");
				int parentChatNo = rs.getInt("parent_chat_no");
				int senderNo = rs.getInt("sender_no");
				int receiverNo = rs.getInt("receiver_no");
				String content = rs.getString("content");
				LocalDateTime date = Util.dateToLocalDateTime(rs.getDate("date"));
				
				return new ProductChatDTO(no, parentChatNo, productNo, senderNo, receiverNo, content, date);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public boolean addProductChat(int parentChatNo, int productNo, int LoginNo, int sellerNo, String content) {
		
		String sql = "INSERT INTO tbl_product_chat"
				+ "(parent_chat_no, product_no, sender_no, receiver_no, content) VALUES"
				+ "(?, ?, ?, ?)";
		
		int senderNo, receiverNo;
		// 만약 내가 올린 게 아니면, receiver는 sellerNo
		// 만약 내가 올렸다면, parentChatNo에서 receiver를 sender로 가져옴.
		
		if (LoginNo == productNo) {
			senderNo = sellerNo;
			receiverNo = getChat(productNo).getSenderNo();
		} else {
			senderNo = getChat(productNo).getSenderNo();
			receiverNo = sellerNo;
		}
		
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(0, parentChatNo);
			pstmt.setInt(1, productNo);
			pstmt.setInt(2, senderNo);
			pstmt.setInt(3, receiverNo);
			pstmt.setString(4, content);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}
