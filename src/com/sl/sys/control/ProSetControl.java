package com.sl.sys.control;



import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.DictionaryBiz;
import com.sl.sys.biz.ProSetBiz;
import com.sl.sys.biz.ProductionBiz;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.Production;
import com.sl.sys.entity.SetInfo;

@Controller
@RequestMapping("/sets")
public class ProSetControl {
	@Resource
	private ProSetBiz proSetBiz;
	@Resource
	private ProductionBiz productionBiz;
	
	@Resource
	private DictionaryBiz dictionaryBiz;
	
	@RequestMapping("/pro")
	@ResponseBody
	public Pager<Production>  pro(@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo,Production p) {
		Pager<Production> pages =productionBiz.queryProductions(p, pageNo, 10);
		System.out.println("sfsdf");
		return pages;
	}

	
	/**
	 * 获得所有的商品套餐
	 * @param pageNo
	 * @param s
	 * @param m
	 * @return
	 */
	@RequestMapping("/all")
	public String all(@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo,ProSet s,Model m) {
		Pager<ProSet> pages =proSetBiz.queryProSets(s, pageNo, 16);
		m.addAttribute("pages", pages);
		m.addAttribute("setName", s.getSetName());
		return "users/set";
	}
	
	/**
	 *获得单个商品套餐的对象
	 * @param s
	 * @param m
	 * @return
	 */
	@RequestMapping("/one/{id}")
	public String one(ProSet s,Model m,@PathVariable String id) {
		Dictionary d =new Dictionary();
		d.setDicType("套餐类型");
		List<Dictionary> type=dictionaryBiz.queryType(d);
		ProSet proSet =proSetBiz.queryProSet(s);
		m.addAttribute("proset", proSet);
		m.addAttribute("typelist", type);
		if ("1".equals(id)) {
			return "users/setupdate";
		}
		return "users/setInfo";
	}
	/**
	 * 验证是否同名
	 * @param s
	 * @return
	 */
	@RequestMapping("/exist")
	@ResponseBody
	public String exist(ProSet s) {
		if (null!=proSetBiz.queryProSet(s)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 修改
	 * @param s
	 * @return
	 */
	@RequestMapping("/update")
	public String update(ProSet s) {
		if(!proSetBiz.updateProSet(s)) {
			return "users/setupdate";
		}
		return"redirect:/sets/all";
	}
	/**
	 * 删除
	 * @param s
	 * @return
	 */
	@RequestMapping("/del") 
	@ResponseBody
	public String del(ProSet s) {
		if (proSetBiz.delProSet(s)) {
			
			proSetBiz.delSetsInfo(s);
			return "1";
		}
		return "0";
	}
	/**
	 *添加订单的信息
	 * @param s
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addSets(ProSet s) {
		if(proSetBiz.addProSet(s)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 添加订单详情
	 * @param s
	 * @return
	 */
	@RequestMapping("/addinfo")
	@ResponseBody
	public String addInfo(SetInfo s) {
		if (proSetBiz.addSetsInfos(s)) {
			return "1";
		}
		return "0";
	}
	@RequestMapping("/delall")
	@ResponseBody
	public String delAll(ProSet s) {
		if (proSetBiz.delSetsInfo(s)) {
			return "1";
		}
		return "0";
	}
	
	@RequestMapping("/pros")
	@ResponseBody
	public String  pros(@RequestParam(value="nums",required=false)String nums,@RequestParam(value="proIds",required=false)String proIds,String setId) {
//		System.out.println(nums);
//		System.out.println(proIds);
//		System.out.println(setId);
//		System.out.println("ok!");
		String[] proNum=nums.split(",");
		String[] proIs=proIds.split(",");
		ProSet s  =new ProSet();
		s.setSetId(setId);
		System.out.println("删出所有的订单！");
		proSetBiz.delSetsInfo(s);
		
		for (int i = 0; i < proNum.length; i++) {
			//在添加信息之前先把对应的商品数量减少
			Production ps  =new Production();
			ps.setProId(proIs[i]);
			Production p  =productionBiz.queryProduction(ps);
			p.setProCount(p.getProCount()-Integer.parseInt(proNum[i]));
			productionBiz.updateProduction(p);
			SetInfo si =new SetInfo();
			si.setProId(proIs[i]);
			si.setSetId(setId);
			si.setProNum(Integer.parseInt(proNum[i]));
			proSetBiz.addSetsInfos(si);
		}
		return "0";
	}
}
