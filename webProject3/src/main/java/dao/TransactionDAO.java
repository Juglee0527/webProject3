package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;

import dto.ProductDTO;
import dto.TransactionDTO;
import util.DBConn;
import util.Util;

public class TransactionDAO {
	Connection con = DBConn.getConnection();
	
	ArrayList<TransactionDTO> PurchaseList = new ArrayList<TransactionDTO>();
	
	public boolean getPurchaseList() {
		
		String sql = "SELECT * FROM tbl_transaction_info";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int no = rs.getInt("no");
				int productNo = rs.getInt("product_no");
				int buyerNo = rs.getInt("buyer_no");
				LocalDateTime date = Util.dateToLocalDateTime(rs.getDate("date"));
				
				TransactionDTO transcation = new TransactionDTO(no, productNo, buyerNo, date);
				PurchaseList.add(transcation);
			}
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	
	public ArrayList<ProductDTO> getBuyList() {
		// product와 transaction 조인해서 확인해야됨.
		
		ArrayList<ProductDTO> buyList = new ArrayList<ProductDTO>();
		
		return buyList;
	}
	
	public ArrayList<ProductDTO> getSellList() {
		// product와 transaction 조인해서 확인해야됨.	
		
		ArrayList<ProductDTO> sellList = new ArrayList<ProductDTO>();
		
		return sellList;
	}
	 
	
	
}
