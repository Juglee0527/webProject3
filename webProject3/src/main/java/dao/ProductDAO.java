package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

import dto.ProductDTO;
import util.DBConn;
import util.Util;

public class ProductDAO {
	Connection con = DBConn.getConnection();
//	ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
	private static ProductDAO instance = new ProductDAO();
//	public HashMap<Integer, ProductDTO> productList = new HashMap<Integer, ProductDTO>();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	public ArrayList<ProductDTO> getProductList() {
		String sql = "SELECT * FROM tbl_product_info";
		ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int no = rs.getInt("no");
				int sellerNo = rs.getInt("seller_no");
				String title = rs.getString("title");
				String description = rs.getString("description");
				String addr = rs.getString("addr");
				int price = rs.getInt("price");
				LocalDateTime creationDate = Util.dateToLocalDateTime(rs.getDate("creation_date"));
				LocalDateTime modifiedDate = Util.dateToLocalDateTime(rs.getDate("modified_date"));
				int likes = rs.getInt("likes");
				ProductDTO product = new ProductDTO(no, sellerNo, title, description, addr, price, creationDate, modifiedDate, likes);
				productList.add(product);
			}
			
			return productList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public boolean addProduct(int sellerNo, String title, String description, String addr, int price) {
		
		String sql = "INSERT INTO tbl_product_info"
				+ "(seller_no, title, description, addr, price) VALUES"
				+ "(?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(0, sellerNo);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setString(3, addr);
			pstmt.setInt(4, price);
			
			if (pstmt.executeUpdate() == 1) {
				int no = pstmt.getMaxRows();
				ProductDTO product = new ProductDTO(no, sellerNo, title, description, addr, price, LocalDateTime.now(), null, 0);
//				productList.put(no, product);
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean editProduct(int no, String title, String description, String addr, int price) {
		String sql = "UPDATE tbl_product_info SET title = ?, description = ?, addr = ?, price = ?, modified_date = now() where no = ?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(0, title);
			pstmt.setString(1, description);
			pstmt.setString(2, addr);
			pstmt.setInt(3, price);
			pstmt.setInt(4, no);
			
			return (pstmt.executeUpdate() == 1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean deleteProduct(int no) {
		String sql = "DELETE FROM tbl_product_info WHERE no = ?";
		
		try {
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(0, no);
			
			if (pstmt.executeUpdate() == 1) {
//				productList.remove(no);
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
}
