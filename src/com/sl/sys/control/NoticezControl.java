package com.sl.sys.control;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RespectBinding;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.NoticezBiz;
import com.sl.sys.entity.Notice;

@Controller
@RequestMapping("/noticez")
public class NoticezControl {
	@Resource
	private NoticezBiz noticezBiz;
	
	@RequestMapping("/showNotices")
	public String showList(Model m) {
		List<Notice> noList= noticezBiz.queryNotices();
		m.addAttribute("noList", noList);
		return "infos/affiche";
	}
	@RequestMapping("/showNotice")
	public String showNotice(Notice n, Model m) {
		Notice notice = noticezBiz.queryNotice(n);
		m.addAttribute("notice",notice);
		return "infos/AfficheDetails";
	}
	@RequestMapping("/showone")
	@ResponseBody
	public Notice showNotices(Notice n) {
		Notice notice = noticezBiz.queryNotice(n);
		
		return notice;
	}	
	@RequestMapping("/saveNotice")
	public String saveNotice(Notice n ) throws IOException{
			if(noticezBiz.saveNotice(n)){
				return "redirect:/noticez/showNotices";
			}
			return "infos/affiche";
	}
	
	@RequestMapping("/updateNotice")
	public String updateNotice(Notice n ) throws IOException{
			if(noticezBiz.updateNotice(n)){
				return "redirect:/noticez/showNotices";
			}
			return "infos/affiche";
	}
	
	@RequestMapping("/deleteNotice")
	public String deleteNotice(Notice n,HttpServletResponse resp) throws IOException{
		
		noticezBiz.deleteNotice(n);
		return "redirect:/noticez/showNotices";
	}
}


