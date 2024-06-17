package dto;

import java.time.LocalDateTime;

public class ProductChatDTO {
	int no;
	int parentChatNo;
	int productNo;
	int senderNo;
	int receiverNo;
	String content;
	LocalDateTime date;

	public ProductChatDTO(int no, int parentChatNo, int productNo, int senderNo, int receiverNo, String content, LocalDateTime date) {
		this.no = no;
		this.parentChatNo = parentChatNo;
		this.productNo = productNo;
		this.senderNo = senderNo;
		this.receiverNo = receiverNo;
		this.content = content;
		this.date = date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getParentChatNo() {
		return parentChatNo;
	}

	public void setParentChatNo(int parentChatNo) {
		this.parentChatNo = parentChatNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getSenderNo() {
		return senderNo;
	}

	public void setSenderNo(int senderNo) {
		this.senderNo = senderNo;
	}

	public int getReceiverNo() {
		return receiverNo;
	}

	public void setReceiverNo(int receiverNo) {
		this.receiverNo = receiverNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}
	
	

}
