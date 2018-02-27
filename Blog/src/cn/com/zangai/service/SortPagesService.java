package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.SortPagesBean;
import cn.com.zangai.dao.SortPagesDao;

@Service
public class SortPagesService {
	@Autowired
	private SortPagesDao sortPagesDao;
	public List<SortPagesBean> getTitle(){
		List<SortPagesBean> list = sortPagesDao.getTitle();
		return list;	
	}
	public List<SortPagesBean> getTopic(Integer spmId,Integer sptId){
		List<SortPagesBean> list = sortPagesDao.getTopic(spmId, sptId);
		return list;
	}
	public List<SortPagesBean> getTitiles(Integer spmId){
		List<SortPagesBean> list = sortPagesDao.getTitiles(spmId);
		return list;
	}
	public List<SortPagesBean> getTopic3(Integer spmId){
		List<SortPagesBean> list = sortPagesDao.getTopic3(spmId);
		return list;
	}
}
