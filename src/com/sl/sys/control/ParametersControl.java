package com.sl.sys.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.ParametersBiz;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Parameters;

@Controller
@RequestMapping("/para")
public class ParametersControl {
	@Resource
	private ParametersBiz parametersBiz;
	/**
	 * 获得分页对象
	 * @param pageNo
	 * @param p
	 * @param m
	 * @return
	 */
	@RequestMapping("/queryall")
	public String queryAll(@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo,
			Parameters p,Model m) {
		Pager<Parameters> pages =parametersBiz.queryParameters(p, 10, pageNo);
		m.addAttribute("pages", pages);
		m.addAttribute("paraName", p.getParaName());
		System.out.println(p.getParaName());
		return "users/base";
	}
	/**
	 * 获的单个参数对象
	 * @param p 
	 * @return
	 */
	@RequestMapping("/query")
	@ResponseBody
	public Parameters getParameters(Parameters p) {
		return parametersBiz.queryParameter(p);
	}
	/**
	 * 删除参数
	 * @param p
	 * @return
	 */
	@RequestMapping("/delpara")
	@ResponseBody
	public String del(Parameters p) {
		if (parametersBiz.delParameters(p)) {
			return "1";
		}
		return "0";
	}
	/**
	 *修改
	 * @param p
	 * @return
	 */
	@RequestMapping("/uppara")
	@ResponseBody
	public String update(Parameters p) {
		if (parametersBiz.updateParameters(p)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 添加
	 * @param p
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String add(Parameters p) {
		if (parametersBiz.addParameters(p)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 验证编码是不是唯一
	 * @param p
	 * @return
	 */
	@RequestMapping("/simple")
	@ResponseBody
	public String isExist(Parameters p) {
		if (null!=parametersBiz.queryParameter(p)) {
			return "1";
		}
		return "0";
	}
	
}
