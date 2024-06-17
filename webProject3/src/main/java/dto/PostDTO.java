package dto;

import java.time.LocalDateTime;

public class PostDTO {
	int no;
	int parentPostNo;
	int authorNo;
	String title;
	String context;
	LocalDateTime creationDate;
	LocalDateTime modifiedDate;
	int likes;
	int views;

	public PostDTO(int no, int parentPostNo, int authorNo, String title, String context, LocalDateTime creationDate, LocalDateTime modifiedDate, int likes,
			int views) {
		this.no = no;
		this.parentPostNo = parentPostNo;
		this.authorNo = authorNo;
		this.title = title;
		this.context = context;
		this.creationDate = creationDate;
		this.modifiedDate = modifiedDate;
		this.likes = likes;
		this.views = views;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getParentPostNo() {
		return parentPostNo;
	}

	public void setParentPostNo(int parentPostNo) {
		this.parentPostNo = parentPostNo;
	}

	public int getAuthorNo() {
		return authorNo;
	}

	public void setAuthorNo(int authorNo) {
		this.authorNo = authorNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
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

	

}
