package cn.com.zangai.web;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.zangai.beans.ContentBean;
import cn.com.zangai.beans.IndexBean;
import cn.com.zangai.service.IndexService;


@Controller
public class IndexController {
	
	@Autowired 
	private IndexService service;
		
	@RequestMapping("/index.html")
	public String index(Map<String,Object> map){
		List<IndexBean> list = service.getIndexBean();		
		map.put("IndexList", list);
		return "index";
		}
	
	@RequestMapping("/content.html")
	public String index(IndexBean indexBean,Model model,HttpServletRequest request){		
		//String pid=request.getParameter("fictionId");
		//service.getContent(Integer.parseInt(pid));
		ContentBean contentBean = service.getContent(indexBean.getFictionId());
		/*model.addAttribute("indexBean", indexBean);*/
		IndexBean indexBean1 = service.getIndexBean(indexBean.getFictionId());
		model.addAttribute("contentBean", contentBean);
		model.addAttribute("indexBean", indexBean1);
		return "content";
		}

}
