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
import cn.com.zangai.beans.DiscussBean;
import cn.com.zangai.beans.LineEntry;


@Repository
public class DiscussDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<DiscussBean> getTitle(){
		String sql = "select main.commentdate as maindate,to_char(main.commentinfo) as maininfo,main.id as mainid,main.userpic as mainpic,count(info.commentback) as num"
				   + " from founder_comment_main main"
				   + " left join founder_comment_info info on info.parentid = main.id"
				   + " group by  main.commentdate,to_char(main.commentinfo) ,main.id,main.userpic order by maindate  desc";
		final List<DiscussBean> list = new ArrayList<DiscussBean>();
		jdbcTemplate.query(sql, new RowCallbackHandler() {			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				DiscussBean discuss = new DiscussBean();
				discuss.setDiscussId(rs.getInt("mainid"));
				SimpleDateFormat format1 = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
//				System.out.println(rs.getDate("maindate"));
//				System.out.println(rs.getObject("maindate"));
		        String date = format1.format(rs.getObject("maindate"));    								
				discuss.setDiscussCommentdate(date);
				discuss.setDiscussNum(rs.getInt("num"));
				discuss.setDiscussCommentinfo(rs.getString("maininfo"));
				discuss.setDiscussUserpic(rs.getString("mainpic"));
				/*discuss.setDiscussCommentback(rs.getString("title"));
				discuss.setDiscussCommentbackdate(rs.getString("title"));*/
				list.add(discuss);
			}
		});
		return list;
	}
	public List<DiscussBean> getAll(Integer discussId){
		String sql = "select main.id as mainid,info.commentback as infoback,info.commentdate as infodate,info.id as infoid,info.userphoto as infophoto,info.type as type"
				   + " from founder_comment_info info"
				   + " join founder_comment_main main on info.parentid = main.id"
				   + " where main.id = ?"
				   + " order by infodate";
		final List<DiscussBean> list = new ArrayList<DiscussBean>();
		jdbcTemplate.query(sql, new Object[]{discussId},new RowCallbackHandler() {
			
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				// TODO Auto-generated method stub
				DiscussBean comment = new DiscussBean();
				comment.setDiscussId(rs.getInt("mainid"));
				comment.setDiscussCommentback(rs.getString("infoback"));
/*				SimpleDateFormat format1 = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");  
		        String date = format1.format(rs.getDate("infodate")); */   								
				comment.setDiscussCommentbackdate(rs.getDate("infodate"));
				comment.setDiscussUserPhoto(rs.getString("infophoto"));
				comment.setType(rs.getInt("type"));
				list.add(comment);
			}
		});
		return list;
	}
	public int addCommentMain(LineEntry line){
		String sql ="insert into founder_comment_main(id,commentdate,commentinfo,userpic) values(?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{
			line.getDiscussId(),
			line.getDiscussCommentdate(),
			line.getDiscussCommentinfo(),
			line.getDiscussUserpic()
		});
	}
	public int addCommentInfo(DiscussBean info){
		String sql ="insert into founder_comment_info(id,commentback,parentid,commentdate,userphoto) values(?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{
			info.getDiscussIds(),
			info.getDiscussCommentback(),
			info.getDiscussParentId(),
			info.getDiscussCommentbackdate(),
			info.getDiscussUserPhoto()
		});
	}
	public Integer userId(){
		String sql = "SELECT LPAD(userId.nextval,8,'0') FROM DUAL";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
}
