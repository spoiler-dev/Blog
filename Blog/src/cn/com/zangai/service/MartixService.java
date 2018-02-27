package cn.com.zangai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.zangai.beans.MartixBean;
import cn.com.zangai.dao.MartixDao;

@Service
public class MartixService {
	@Autowired
	private MartixDao martixDao;
	public List<MartixBean> getTitle(){
		List<MartixBean> list = martixDao.getTitle();
		return list;
	}
	public List<MartixBean> getAll(Integer martixId){
		List<MartixBean> list =martixDao.getAll(martixId);
		return list;
	}
}
