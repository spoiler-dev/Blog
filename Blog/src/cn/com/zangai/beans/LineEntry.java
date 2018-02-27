package cn.com.zangai.beans;

import java.util.Date;

public class LineEntry {
	private Integer discussId;
	private Date discussCommentdate;
	private String discussCommentinfo;
	private String discussUserpic;

	public Integer getDiscussId() {
		return discussId;
	}
	public void setDiscussId(Integer discussId) {
		this.discussId = discussId;
	}
	public Date getDiscussCommentdate() {
		return discussCommentdate;
	}
	public void setDiscussCommentdate(Date discussCommentdate) {
		this.discussCommentdate = discussCommentdate;
	}
	public String getDiscussCommentinfo() {
		return discussCommentinfo;
	}
	public void setDiscussCommentinfo(String discussCommentinfo) {
		this.discussCommentinfo = discussCommentinfo;
	}
	public String getDiscussUserpic() {
		return discussUserpic;
	}
	public void setDiscussUserpic(String discussUserpic) {
		this.discussUserpic = discussUserpic;
	}

}
