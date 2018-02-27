package cn.com.zangai.beans;

public class SortPagesBean {
	private Integer sortPagesId; //模块id
	private String sortPagesTitle; //模块标题
	private String sortPagesCover; //模块封面	
	private Integer type; //子标题类型
	private String sortPagesTitles; //模块子标题
	private Integer sortPagesIds; //模块子标题id
	private String topic; //话题集 
	private String href; //页面跳转链接
	private Integer num; //话题集数量
		
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public Integer getSortPagesId() {
		return sortPagesId;
	}
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public void setSortPagesId(Integer sortPagesId) {
		this.sortPagesId = sortPagesId;
	}
	public String getSortPagesTitles() {
		return sortPagesTitles;
	}
	public void setSortPagesTitles(String sortPagesTitles) {
		this.sortPagesTitles = sortPagesTitles;
	}
	public Integer getSortPagesIds() {
		return sortPagesIds;
	}
	public void setSortPagesIds(Integer sortPagesIds) {
		this.sortPagesIds = sortPagesIds;
	}
	public String getSortPagesTitle() {
		return sortPagesTitle;
	}
	public void setSortPagesTitle(String sortPagesTitle) {
		this.sortPagesTitle = sortPagesTitle;
	}
	public String getSortPagesCover() {
		return sortPagesCover;
	}
	public void setSortPagesCover(String sortPagesCover) {
		this.sortPagesCover = sortPagesCover;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}

}
