package ezen.shoppingmall.domain.article.dto;

public class Reply {
	
	private String replyId;
	private String postId;
	private String customerId;
	private String contents;
	private String datecreated;
	
	public Reply() {}
	
	public Reply(String replyId, String postId, String customerId, String contents, String datecreated) {
		super();
		this.replyId = replyId;
		this.postId = postId;
		this.customerId = customerId;
		this.contents = contents;
		this.datecreated = datecreated;
	}

	public String getReplyId() {
		return replyId;
	}

	public void setReplyId(String replyId) {
		this.replyId = replyId;
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
		return "Reply [replyId=" + replyId + ", postId=" + postId + ", customerId=" + customerId + ", contents="
				+ contents + ", datecreated=" + datecreated + "]";
	}
	
	
	
	
	
}
