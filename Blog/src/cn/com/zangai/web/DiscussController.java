package cn.com.zangai.web;



import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import cn.com.zangai.beans.DiscussBean;
import cn.com.zangai.beans.LineEntry;
import cn.com.zangai.service.DiscussService;



@Controller
public class DiscussController {
	@Autowired
	private DiscussService discussService;
	//工具页工具栏标题	
	@RequestMapping(value="discuss.html")
	public String discuss(Map<String,Object> map){
		List<DiscussBean> discussList = discussService.getTitle();
		map.put("discussList",discussList);
		return "discuss";
	}
	
	@RequestMapping(value="discussAll.html", produces="text/html;charset=Utf-8")
	@ResponseBody
	public String discussAll(DiscussBean discussBean){
		List<DiscussBean> getAll = discussService.getAll(discussBean.getDiscussId());
		ObjectMapper mapper = new ObjectMapper();
		String result = "";
		try {
			result = mapper.writeValueAsString(getAll);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping(value="commentmain.html")
	@ResponseBody
	public String showCommentMain(DiscussBean main,Model model) {
		
		LineEntry line = new LineEntry();
		
		/*Map<String,Object> returnMap = new HashMap<String, Object>();*/

		Integer userId = discussService.getUserId();
		line.setDiscussId(userId);
//		main.setDiscussCommentdate(date);
		/*SimpleDateFormat systime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");*/
		Date date = new Date();
		line.setDiscussCommentdate(date);
		line.setDiscussUserpic(main.getDiscussUserpic());
		line.setDiscussCommentinfo(main.getDiscussCommentinfo());					
//		returnMap.put("discussCommentdate",date);
//		returnMap.put("discussId",userId);

//		List<LineEntry> list = main.getLines();		
//		LineEntry line = new LineEntry();
//		for (LineEntry item :list) {			
//			line.setDiscussId(item.getDiscussId());
//			line.setDiscussCommentdate(item.getDiscussCommentdate());
//			line.setDiscussCommentinfo(item.getDiscussCommentinfo());
//			line.setDiscussUserpic(item.getDiscussUserpic());
//		}
		discussService.addCommentMain(line);
		return "discuss";
	}
	
	@RequestMapping(value="commentinfo.html")
	@ResponseBody
	public String showCommentInfo(DiscussBean main,Model model) {		
		Integer userId = discussService.getUserId();
		main.setDiscussIds(userId);
		Date date = new Date();
		main.setDiscussCommentbackdate(date);
		discussService.addCommentInfo(main);
		return "discuss";
	}
}
