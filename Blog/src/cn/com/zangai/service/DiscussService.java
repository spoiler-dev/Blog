package cn.com.zangai.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.com.zangai.beans.DiscussBean;
import cn.com.zangai.beans.LineEntry;
import cn.com.zangai.dao.DiscussDao;



@Service
public class DiscussService {
	@Autowired
	private DiscussDao discussDao;
	public List<DiscussBean> getTitle(){
		List<DiscussBean> list = discussDao.getTitle();
		return list;
	}
	
	public List<DiscussBean> getAll(Integer discussId){
		List<DiscussBean> list = discussDao.getAll(discussId);
		return list;
	}
	
	public int addCommentMain(LineEntry line){			
		return discussDao.addCommentMain(line);		
	}
	
	public Integer getUserId(){
		Integer userId = discussDao.userId();
		return userId;
	}
	
	public int addCommentInfo(DiscussBean info){			
		return discussDao.addCommentInfo(info);		
	}
}
