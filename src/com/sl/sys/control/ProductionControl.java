package com.sl.sys.control;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.ProductionBiz;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Production;

@Controller
@RequestMapping("/pro")
public class ProductionControl {
	@Resource
	private ProductionBiz productionBiz;
	/**
	 * 获得分页对象
	 * @param pageNo
	 * @param p
	 * @param m
	 * @return
	 */
	@RequestMapping("/queryall")
	public String getAll(@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo,
			Production p,Model m) {
		Pager<Production> pages =productionBiz.queryProductions(p, pageNo, 16);
		m.addAttribute("pages", pages);
		m.addAttribute("proName", p.getProName());
		return "users/pro";
	}
	/**
	 * 获得单个的商品信息
	 * @param m
	 * @param p
	 * @return
	 */
	@RequestMapping("/query/{id}")
	public String get(@PathVariable String id,Model m,Production p) {
		Production pro =productionBiz.queryProduction(p);
		m.addAttribute("production", pro);
		if ("2".equals(id)) {
			return "users/proupdate";
		}
		return "users/proInfo";
	}
	/**
	 * 添加商品的信息
	 * @param p
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String add(Production p) {
		p.setModifyDate(new Date());
		if (productionBiz.addProduction(p)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 删除商品的信息
	 * @param p
	 * @return
	 */
	@RequestMapping("/del")
	@ResponseBody
	public String del(Production p) {
		if (productionBiz.queryProductionInSet(p)) {
			return "2";
		}
		if (productionBiz.delProduction(p)) {
			return "1";
		}
		return "0";
	}
	/**
	 *修改
	 * @param p
	 * @return
	 */
	@RequestMapping("/update")
	public String update(Production p) {
		p.setModifyDate(new Date());
		System.out.println("proID:"+p.getProId());
		System.out.println("状态："+p.getStutas());
		System.out.println("规格："+p.getStandard());
		System.out.println("描述："+p.getSpec());
		if (!productionBiz.updateProduction(p)) {
			return "users/proupdate";
		}
		return "redirect:/pro/queryall";
	}
	/**
	 * 验证唯一
	 * @param p
	 * @return
	 */
	@RequestMapping("/exist")
	@ResponseBody
	public String exist(Production p) {
		if (null!=productionBiz.queryProduction(p)) {
			return "1";
		}
		return "0";
	}
}
