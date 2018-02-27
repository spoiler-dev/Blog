package cn.com.zangai.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.SortPagesBean;

@Repository
public class SortPagesDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	/**
	 * 
	 * @return
	 */
	public List<SortPagesBean> getTitle(){
		String sql = "select spm.title as spmTitle ,spm.id as spmId"
				   + " from founder_sortpages spm"
				   + " order by spmId";
		final List<SortPagesBean> list = new ArrayList<SortPagesBean>();
		jdbcTemplate.query(sql, new RowCallbackHandler() {		
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				SortPagesBean sortPages = new SortPagesBean();
				sortPages.setSortPagesId(rs.getInt("spmId"));
				sortPages.setSortPagesTitle(rs.getString("spmTitle"));
			
	         /*	sortPages.setSortPagesIds(rs.getInt("sptId"));
				sortPages.setSortPagesTitles(rs.getString("sptTitle"));*/
				list.add(sortPages);
		    }
	    });
	return list;
	}
	
	public List<SortPagesBean> getTitiles(Integer spmId){
		String sql = "select spt.title as sptTitle,spt.id as sptId,spt.sontype as type"
				   + " from founder_sortpages_title spt"
                   + " join founder_sortpages spm on spm.id = spt.parentid"
                   + " where spm.id = ?"
                   + " order by sptId";
		final List<SortPagesBean> list = new ArrayList<SortPagesBean>();
		jdbcTemplate.query(sql, new Object[]{spmId}, new RowCallbackHandler() {
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				SortPagesBean sortPages = new SortPagesBean();
				sortPages.setSortPagesIds(rs.getInt("sptId"));
				sortPages.setSortPagesTitles(rs.getString("sptTitle"));	
				sortPages.setType(rs.getInt("type"));
				list.add(sortPages);
			}
	    });
	return list;
	}
	
	public List<SortPagesBean> getTopic(Integer spmId,Integer sptId){
		String sql =null;
		if(sptId.equals(1010)){			
			sql = "select count(indexM.Title) as count,topic.topic"
					+ "	from founder_index_main indexM"
					+ "	join founder_topic topic on topic.id = indexM.parentid"
					+ "	join founder_sortpages_title spt on spt.id = topic.parentid"
					+ "	join founder_sortpages spm on spm.id = spt.parentid"
					+ "	where spm.id = ?"
					+ " group by topic.id,topic.topic";
			final List<SortPagesBean> list = new ArrayList<SortPagesBean>(); 
			jdbcTemplate.query(sql, new Object[]{spmId}, new RowCallbackHandler() {
				@Override
				public void processRow(ResultSet rs) throws SQLException {
					// TODO Auto-generated method stub
					SortPagesBean sortPages = new SortPagesBean();
	/*				sortPages.setSortPagesIds(rs.getInt("sptId"));
					sortPages.setSortPagesTitles(rs.getString("sptTitle"));*/
					sortPages.setNum(rs.getInt("count"));	
					sortPages.setTopic(rs.getString("topic"));				
					list.add(sortPages);
			    }
		    });
		return list;
		}
		else{
			sql = "select count(indexM.Title) as count,topic.topic"
					+ "	from founder_index_main indexM"
					+ "	join founder_topic topic on topic.id = indexM.parentid"
					+ "	join founder_sortpages_title spt on spt.id = topic.parentid"
					+ "	join founder_sortpages spm on spm.id = spt.parentid"
					+ "	where spm.id = ? and spt.id = ?"
					+ " group by topic.id,topic.topic";
			final List<SortPagesBean> list = new ArrayList<SortPagesBean>(); 
			jdbcTemplate.query(sql, new Object[]{spmId,sptId}, new RowCallbackHandler() {
				@Override
				public void processRow(ResultSet rs) throws SQLException {
					// TODO Auto-generated method stub
					SortPagesBean sortPages = new SortPagesBean();
	/*				sortPages.setSortPagesIds(rs.getInt("sptId"));
					sortPages.setSortPagesTitles(rs.getString("sptTitle"));*/					
					sortPages.setTopic(rs.getString("topic"));
					sortPages.setNum(rs.getInt("count"));
					list.add(sortPages);
			    }
		    });
		return list;	
		}					
	}
	
	public List<SortPagesBean> getTopic3(Integer spmId){
		String sql = "select * "
				   + " from (select count(indexM.Title) as count,topic.topic"
				   + " from founder_index_main indexM"
				   + " join founder_topic topic on topic.id = indexM.parentid"
				   + " join founder_sortpages_title spt on spt.id = topic.parentid"
				   + " join founder_sortpages spm on spm.id = spt.parentid"
				   + " where spm.id = ?"
				   + " group by topic.topic"
				   + " order by count(indexM.Title) desc)"
				   + " where rownum<=3";
		final List<SortPagesBean> list = new ArrayList<SortPagesBean>(); 
		jdbcTemplate.query(sql, new Object[]{spmId}, new RowCallbackHandler() {
			@Override
			public void processRow(ResultSet rs) throws SQLException {			
				// TODO Auto-generated method stub	
				SortPagesBean sortPages = new SortPagesBean();
				sortPages.setTopic(rs.getString("topic"));
				sortPages.setNum(rs.getInt("count"));				
				list.add(sortPages);		
			}
	    });
	return list;
	}
				
}
