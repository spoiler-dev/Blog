package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.ItoolsBean;
import cn.com.zangai.dao.ItoolsDao;


@Service
public class ItoolsService {
	@Autowired
	private ItoolsDao itoolsDao;
	public List<ItoolsBean> getTitle(){
		List<ItoolsBean> list = itoolsDao.getTitle();
		return list;
	}
	public List<ItoolsBean> getAll(Integer itoolsId){
		List<ItoolsBean> list =itoolsDao.getAll(itoolsId);
		return list;
	}
}
