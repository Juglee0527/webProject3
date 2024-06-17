package dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class ProductDTO {
	int sellerNo;
	String title;
	String description;
	String addr;
	int price;
	LocalDateTime creationDate;
	LocalDateTime modifiedDate;
	int likes;
	int views;
	
	public int getSellerNo() {
		return sellerNo;
	}

	public void setSellerNo(int sellerNo) {
		this.sellerNo = sellerNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public LocalDateTime getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(LocalDateTime creationDate) {
		this.creationDate = creationDate;
	}

	public LocalDateTime getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(LocalDateTime modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public ProductDTO(int sellerNo, String title, String description, String addr, int price, LocalDateTime creationDate, LocalDateTime modifiedDate, int likes) {
		this.sellerNo = sellerNo;
		this.title = title;
		this.description = description;
		this.addr = addr;
		this.price = price;
		this.creationDate = creationDate;
		this.modifiedDate = modifiedDate;
		this.likes = likes;
	}
	
	
	
	
}
