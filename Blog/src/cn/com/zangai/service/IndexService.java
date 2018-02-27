package cn.com.zangai.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.ContentBean;
import cn.com.zangai.beans.IndexBean;
import cn.com.zangai.dao.IndexDao;


@Service
public class IndexService {
	@Autowired
	private IndexDao indexDao;	
	public List<IndexBean> getIndexBean(){
		List<IndexBean> list = indexDao.getFiction();
		return list;
	}
	public ContentBean getContent(Integer fictionId){
		return indexDao.getContent(fictionId);
	}
	public IndexBean getIndexBean(Integer fictionId){
		return indexDao.getFiction1(fictionId);
	}
}
