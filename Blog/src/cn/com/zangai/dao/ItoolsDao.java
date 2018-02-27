package cn.com.zangai.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.ItoolsBean;

@Repository
public class ItoolsDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<ItoolsBean> getTitle(){
		String sql = "select id,title"
                   + " from founder_itools_main "
                   + " order by id";
		final List<ItoolsBean> list = new ArrayList<ItoolsBean>();
		jdbcTemplate.query(sql, new RowCallbackHandler() {			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				ItoolsBean itools = new ItoolsBean();
				itools.setItoolsId(rs.getInt("id"));
				itools.setItoolsTitle(rs.getString("title"));
				list.add(itools);
			}
		});
		return list;
	}
	public List<ItoolsBean> getAll(Integer itoolsId){
		String sql ="select info.id,info.title,info.author,info.cover,info.intro,info.href,info.authorpic,info.type"
                + " from founder_itools_info info"
                + " join founder_itools_main main on main.id = info.parentid"
                + " where main.id = ?";
		final List<ItoolsBean> list = new ArrayList<ItoolsBean>();
		jdbcTemplate.query(sql, new Object[]{itoolsId},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				ItoolsBean all = new ItoolsBean();
				all.setItoolsId(rs.getInt("id"));
				all.setItoolsName(rs.getString("title"));
				all.setItoolsAuthor(rs.getString("author"));
				all.setItoolsCover(rs.getString("cover"));
				all.setItoolsIntro(rs.getString("intro"));
				all.setItoolsHref(rs.getString("href"));
				all.setItoolsAuthorPic(rs.getString("authorpic"));
				all.setItoolsType(rs.getString("type"));
				list.add(all);
			}
		});
		return list;
	}
}
