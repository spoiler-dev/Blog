package cn.com.zangai.beans;

import java.util.Date;
import java.util.List;

public class DiscussBean {
	private Integer discussId;
	private String discussCommentdate;
	private String discussCommentinfo;
	private String discussUserpic;
	private Integer discussIds;
	private Integer discussParentId;
	private String discussCommentback;
	private Date discussCommentbackdate;
	private Integer discussNum;
	private String discussUserPhoto;
	private Integer type; //区分吃瓜群众和我
	private List<LineEntry> lines; // 列集合
	
	
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getDiscussUserPhoto() {
		return discussUserPhoto;
	}
	public void setDiscussUserPhoto(String discussUserPhoto) {
		this.discussUserPhoto = discussUserPhoto;
	}
	public Integer getDiscussIds() {
		return discussIds;
	}
	public void setDiscussIds(Integer discussIds) {
		this.discussIds = discussIds;
	}
	public Integer getDiscussParentId() {
		return discussParentId;
	}
	public void setDiscussParentId(Integer discussParentId) {
		this.discussParentId = discussParentId;
	}
	public List<LineEntry> getLines() {
		return lines;
	}
	public void setLines(List<LineEntry> lines) {
		this.lines = lines;
	}
	public Integer getDiscussNum() {
		return discussNum;
	}
	public void setDiscussNum(Integer discussNum) {
		this.discussNum = discussNum;
	}
	public Integer getDiscussId() {
		return discussId;
	}
	public void setDiscussId(Integer discussId) {
		this.discussId = discussId;
	}
	public String getDiscussCommentdate() {
		return discussCommentdate;
	}
	public void setDiscussCommentdate(String discussCommentdate) {
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
	public String getDiscussCommentback() {
		return discussCommentback;
	}
	public void setDiscussCommentback(String discussCommentback) {
		this.discussCommentback = discussCommentback;
	}
	public Date getDiscussCommentbackdate() {
		return discussCommentbackdate;
	}
	public void setDiscussCommentbackdate(Date discussCommentbackdate) {
		this.discussCommentbackdate = discussCommentbackdate;
	}

}
