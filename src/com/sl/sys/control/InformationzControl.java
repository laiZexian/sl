package com.sl.sys.control;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sl.sys.biz.InformationzBiz;
import com.sl.sys.biz.NoticezBiz;
import com.sl.sys.entity.Information;
import com.sl.sys.entity.Notice;

@Controller
@RequestMapping("/informationz")
public class InformationzControl {
	@Resource
	private InformationzBiz informationBiz;
	/**
	 *链接资讯管理
	 * @param m
	 * @return
	 */
	@RequestMapping("/showInformations")
	public String showList(Model m) {
		List<Information> noList= informationBiz.queryInformations();
		m.addAttribute("noList", noList);
		return "infos/Suggest";
	}
	/***
	 *链接下载中心
	 * @param m
	 * @return
	 */
	@RequestMapping("/showInfor")
	public String showLists(Model m) {
		List<Information> noList= informationBiz.queryInformations();
		m.addAttribute("noList", noList);
		return "infos/download";
	}
	/***
	 * 链接资讯管理修单个		修改   
	 * @param n
	 * @param m
	 * @return
	 */
	@RequestMapping("/showInformation")
	public String shows(Information i, Model m) {
		Information information = informationBiz.queryInformation(i);
		m.addAttribute("information",information);
		return "infos/UpdateSuggest"; 
	}
	/***
	 * 链接下载管理的单个		详情页面
	 * @param i
	 * @param m
	 * @return
	 */
	@RequestMapping("/showIn")
	public String showInformation(Information i, Model m) {
		Information information = informationBiz.queryInformation(i);
		m.addAttribute("information",information);
		return "infos/downloadDetails"; 
	}
	
}
