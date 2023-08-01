package ezen.shoppingmall.domain.article.dto;

public class Memo {
	
	private String postId;
	private String customerId;
	private String title;
	private String contents;
	private String datecreated;
	
	public Memo() {}

	public Memo(String postId, String customerId, String title, String contents, String datecreated) {
		this.postId = postId;
		this.customerId = customerId;
		this.title = title;
		this.contents = contents;
		this.datecreated = datecreated;
	}

	public String getPostId() {
		return postId;
	}

	public void setPostId(String postId) {
		this.postId = postId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDatecreated() {
		return datecreated;
	}

	public void setDatecreated(String datecreated) {
		this.datecreated = datecreated;
	}

	@Override
	public String toString() {
		return "Memo [postId=" + postId + ", customerId=" + customerId + ", title=" + title + ", contents=" + contents
				+ ", datecreated=" + datecreated + "]";
	}

	
	
	
}
