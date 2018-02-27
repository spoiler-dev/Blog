package cn.com.zangai.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.com.zangai.beans.MartixBean;
import cn.com.zangai.service.MartixService;

@Controller
public class MartixController {
	@Autowired
	private MartixService martixService;
		
	@RequestMapping(value="martix.html")
	public String martix(Map<String,Object> map){
		List<MartixBean> martixTitle = martixService.getTitle();
		map.put("martixTitle", martixTitle);
		return "martix";
	}
	
	@RequestMapping(value="all.html", produces="text/html;charset=Utf-8")
	@ResponseBody
	public String martixAll(MartixBean martixBean){
		List<MartixBean> getAll = martixService.getAll(martixBean.getMartixId());
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(getAll);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}
}
