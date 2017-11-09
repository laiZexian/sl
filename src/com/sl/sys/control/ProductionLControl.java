package com.sl.sys.control;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sl.sys.biz.ProSetLBiz;
import com.sl.sys.entity.ProSet;


@Controller
public class ProductionLControl {
	@Resource
	private ProSetLBiz productionLBiz = null;
	
	@RequestMapping("/showProSet")
	public String showproduction(Model m) {
		List<ProSet> list = productionLBiz.QuerProSet();
		m.addAttribute("list",list);
		return "shops/HeavyPurchaseElimination";
	}
	
	@RequestMapping("/showByID")
	public String showByID(Model m) {
		List<ProSet> list = productionLBiz.showByIdProSet();
		m.addAttribute("list",list);
		return "shops/AssistPurchase2";
	}
	
	@RequestMapping("/ByIdProSet")
	public String ByIdProSet(ProSet setId,Model m) {
		List<ProSet> list = productionLBiz.ByIdProSet(setId);
		m.addAttribute("list",list);
		return "shops/ShoppingCart";
	}
}
