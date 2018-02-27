package cn.com.zangai.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.ContentBean;
import cn.com.zangai.beans.IndexBean;

@Repository
public class IndexDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	/**
	 * 查询主页所需的标题，背景图，发布时间
	 * @return
	 */
	public List<IndexBean> getFiction(){
		String sql = "select id,title,time,bgphoto"
				   + " from founder_index_main"
				   + " order by time desc";
		/*
		 * select id,title,to_char(time,'yyyy') || '年' || to_char(time,'mm') || '月'|| to_char(time,'dd') || '日',bgphoto
		from founder_index_main
		order by time desc
		*/
		final List<IndexBean> list = new ArrayList<IndexBean>();
		jdbcTemplate.query(sql, new RowCallbackHandler(){  /*ALT+/*/
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				IndexBean index = new IndexBean();
				index.setFictionId(rs.getInt("id"));
				index.setFictionTitle(rs.getString("title"));
				SimpleDateFormat format1 = new SimpleDateFormat("yyyy年MM月dd日");  
		        String date = format1.format(rs.getDate("time"));    								
				index.setFictionDate(date);
				index.setFictionBackground(rs.getString("bgphoto"));
				list.add(index);
			}			
		});
	return list;
	}
	/**
	 * 通过主页传来的id来对应的parentid，从而查询主表id对应的文章内容
	 * @param fictionId
	 * @return
	 */
	public ContentBean getContent(Integer fictionId){
		String sql = "select info.id,info.article,info.parentid"
				   + " from founder_index_info info"
				   + " join founder_index_main main on main.id = info.parentid and main.id=?";
		final ContentBean content = new ContentBean();
		jdbcTemplate.query(sql, new Object[]{fictionId}, new RowCallbackHandler(){
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				content.setArticleId(rs.getInt("id"));
				content.setArticleInfo(rs.getString("article"));
				content.setParentId(rs.getInt("parentid"));
			}		
		});
	return content; 	
	}
	/**
	 * 通过主页传来的id来对应的parentid，从而查询主表中的标题，时间，背景图片等
	 * @param fictionId
	 * @return
	 */
	public IndexBean getFiction1(Integer fictionId){
		String sql = "select id,title,time,bgphoto"
				   + " from founder_index_main"
				   + " where id = ?" 
				   + " order by time desc";				   
		final IndexBean index = new IndexBean();
		jdbcTemplate.query(sql, new Object[]{fictionId}, new RowCallbackHandler(){
			@Override
			public void processRow(ResultSet rs) throws SQLException {				
				index.setFictionId(rs.getInt("id"));
				index.setFictionTitle(rs.getString("title"));
				SimpleDateFormat format1 = new SimpleDateFormat("yyyy年MM月dd日");  
		        String date = format1.format(rs.getDate("time"));    								
				index.setFictionDate(date);
				index.setFictionBackground(rs.getString("bgphoto"));				
			}	
		});
	return index;
	}
}
