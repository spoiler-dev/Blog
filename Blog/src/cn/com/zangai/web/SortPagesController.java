package cn.com.zangai.web;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.zangai.beans.SortPagesBean;
import cn.com.zangai.service.SortPagesService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class SortPagesController {
	@Autowired
	private SortPagesService sortPagesService;
	
	
	@RequestMapping(value="sortPages.html")
	public String sortPages(Map<String,Object> map,SortPagesBean sortPagesBean){
		List<SortPagesBean> sortPagesList = sortPagesService.getTitle();
		
		/*List<SortPagesBean> getTopic = sortPagesService.getTopic(spmId, sptId);*/		
		map.put("SortPagesList",sortPagesList );

		/*map.put("GetTopic", getTopic);*/
		return "sortPages";
	}
	
	
	@RequestMapping(value="/sortPagesTitles.html", produces="text/html;charset=UTF-8")
    @ResponseBody
	public String sortPagesMain(Map<String,Object> map,SortPagesBean sortPagesBean){
		/*List<SortPagesBean> getTopic = sortPagesService.getTopic(spmId, sptId);*/
		List<SortPagesBean> getTitles = sortPagesService.getTitiles(sortPagesBean.getSortPagesId());

		/*map.put("GetTopic", getTopic);*/
		/*map.put("GetTitles", getTitles);*/
		// JSON处理
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(getTitles);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}		
		// 返回
		return result;
	}
	
	
	@RequestMapping(value="/sortPagesChild.html",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String sortPagesChild(HttpServletRequest request,Model model){		
		Integer pid=Integer.parseInt(request.getParameter("pid"));
		Integer childid=Integer.parseInt(request.getParameter("childid"));
		List<SortPagesBean> getTopic = sortPagesService.getTopic(pid, childid);	
/*		List<SortPagesBean> getTopicNum = sortPagesService.getTopicNum(pid, childid);
		model.addAttribute("getTopicNum", getTopicNum);*/
		// JSON处理
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			/*returnMap.put("getTopic", mapper.writeValueAsString(getTopic));
			returnMap.put("getTopicNum", mapper.writeValueAsString(getTopicNum));*/
			result = mapper.writeValueAsString(getTopic);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}		
		// 返回
		return result;
	}
	
	@RequestMapping(value="/sortPages3.html",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String sortPages3(SortPagesBean sortPagesBean){		
		List<SortPagesBean> getTopic3 = sortPagesService.getTopic3(sortPagesBean.getSortPagesId());
		// JSON处理
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			/*returnMap.put("getTopic", mapper.writeValueAsString(getTopic));
			returnMap.put("getTopicNum", mapper.writeValueAsString(getTopicNum));*/
			result = mapper.writeValueAsString(getTopic3);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}		
		// 返回
		return result;
	}
}
