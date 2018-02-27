package cn.com.zangai.beans;

public class IndexBean {
	private Integer fictionId; //文章id
	private String fictionTitle; //文章标题
	private String fictionDate; //文章发布日期
	private String fictionBackground; //文章背景图片
	private String typeMain; //文章主类型
	private String typeInfo; //文章子类型
	
	public Integer getFictionId() {
		return fictionId;
	}
	public void setFictionId(Integer fictionId) {
		this.fictionId = fictionId;
	}
	public String getFictionTitle() {
		return fictionTitle;
	}
	public void setFictionTitle(String fictionTitle) {
		this.fictionTitle = fictionTitle;
	}

	public String getFictionDate() {
		return fictionDate;
	}
	public void setFictionDate(String fictionDate) {
		this.fictionDate = fictionDate;
	}
	public String getFictionBackground() {
		return fictionBackground;
	}
	public void setFictionBackground(String fictionBackground) {
		this.fictionBackground = fictionBackground;
	}
	public String getTypeMain() {
		return typeMain;
	}
	public void setTypeMain(String typeMain) {
		this.typeMain = typeMain;
	}
	public String getTypeInfo() {
		return typeInfo;
	}
	public void setTypeInfo(String typeInfo) {
		this.typeInfo = typeInfo;
	}
}
