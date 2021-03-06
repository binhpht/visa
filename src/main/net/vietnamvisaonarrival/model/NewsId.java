package net.vietnamvisaonarrival.model;
// default package
// Generated Nov 20, 2014 8:56:40 PM by Hibernate Tools 3.4.0.CR1

/**
 * NewsId generated by hbm2java
 */
public class NewsId implements java.io.Serializable {

	private int newsId;
	private String comments;

	public NewsId() {
	}

	public NewsId(int newsId, String comments) {
		this.newsId = newsId;
		this.comments = comments;
	}

	public int getNewsId() {
		return this.newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof NewsId))
			return false;
		NewsId castOther = (NewsId) other;

		return (this.getNewsId() == castOther.getNewsId())
				&& ((this.getComments() == castOther.getComments()) || (this
						.getComments() != null
						&& castOther.getComments() != null && this
						.getComments().equals(castOther.getComments())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getNewsId();
		result = 37 * result
				+ (getComments() == null ? 0 : this.getComments().hashCode());
		return result;
	}

}
