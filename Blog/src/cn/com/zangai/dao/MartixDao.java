package cn.com.zangai.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import cn.com.zangai.beans.MartixBean;

@Repository
public class MartixDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<MartixBean> getTitle(){
		String sql = "select id,title"
                   + " from founder_martix "
                   + " order by id";
		final List<MartixBean> list = new ArrayList<MartixBean>();
		jdbcTemplate.query(sql, new RowCallbackHandler() {			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				MartixBean martix = new MartixBean();
				martix.setMartixId(rs.getInt("id"));
				martix.setMartixTitle(rs.getString("title"));
				list.add(martix);
			}
		});
		return list;
	}
	public List<MartixBean> getAll(Integer martixId){
		String sql ="select music.id,music.music,music.song,music.singer,music.cover,music.album"
                + " from founder_music music"
                + " join founder_martix martix on martix.id = music.parentid"
                + " where martix.id = ?";
		final List<MartixBean> list = new ArrayList<MartixBean>();
		jdbcTemplate.query(sql, new Object[]{martixId},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				MartixBean all = new MartixBean();
				all.setMusicId(rs.getInt("id"));
				all.setMusic(rs.getString("music"));
				all.setSong(rs.getString("song"));
				all.setSinger(rs.getString("singer"));
				all.setCover(rs.getString("cover"));
				all.setAlbum(rs.getString("album"));
				list.add(all);
			}
		});
		return list;
	}
}
