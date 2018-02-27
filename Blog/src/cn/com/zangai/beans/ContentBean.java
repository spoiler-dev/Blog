package cn.com.zangai.beans;

public class ContentBean {
	private Integer ArticleId; //子表id
	private String ArticleInfo; //文章内容
	private Integer ParentId; //ParentId=主表id
	
	public Integer getArticleId() {
		return ArticleId;
	}
	public void setArticleId(Integer articleId) {
		ArticleId = articleId;
	}
	public String getArticleInfo() {
		return ArticleInfo;
	}
	public void setArticleInfo(String articleInfo) {
		ArticleInfo = articleInfo;
	}
	public Integer getParentId() {
		return ParentId;
	}
	public void setParentId(Integer parentId) {
		ParentId = parentId;
	}
}
