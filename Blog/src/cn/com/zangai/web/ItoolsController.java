package cn.com.zangai.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.com.zangai.beans.ItoolsBean;
import cn.com.zangai.service.ItoolsService;


@Controller
public class ItoolsController {
	@Autowired
	private ItoolsService itoolsService;
	//工具页工具栏标题	
	@RequestMapping(value="itools.html")
	public String itools(Map<String,Object> map){
		List<ItoolsBean> itoolsTitle = itoolsService.getTitle();
		map.put("itoolsTitle",itoolsTitle);
		return "itools";
	}
	
	@RequestMapping(value="itoolsAll.html", produces="text/html;charset=Utf-8")
	@ResponseBody
	public String itoolsAll(ItoolsBean itoolsBean){
		List<ItoolsBean> getAll = itoolsService.getAll(itoolsBean.getItoolsId());
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
