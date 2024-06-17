package dto;

import java.time.LocalDateTime;

public class TransactionDTO {
	int no;
	int productNo;
	int buyerNo;
	LocalDateTime date;
	
	public TransactionDTO(int no, int productNo, int buyerNo, LocalDateTime date) {
		this.no = no;
		this.productNo = productNo;
		this.buyerNo = buyerNo;
		this.date = date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getBuyerNo() {
		return buyerNo;
	}

	public void setBuyerNo(int buyerNo) {
		this.buyerNo = buyerNo;
	}

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}
	
	
	
}
