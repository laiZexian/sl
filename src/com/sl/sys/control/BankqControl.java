package com.sl.sys.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sl.sys.biz.CashInfoqBiz;
import com.sl.sys.biz.CostInfoqBiz;
import com.sl.sys.entity.CashInfo;
import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.User;

@Controller
@RequestMapping("/banksq")
public class BankqControl {
	
	@Resource
	private CostInfoqBiz costInfoqBiz; 
	@Resource
	private CashInfoqBiz cashInfoqBiz; 
	
	@RequestMapping("/showCostInfoList")
	public String showCostInfoList(Pager<CostInfo> pager,@RequestParam(value="firstDate",required=false)String firstDate, @RequestParam(value="firstDate",required=false)String lastDate, Model model, HttpSession session) {
		User user = (User)session.getAttribute("userAdmin");
		CostInfo costInfo = new CostInfo();
		costInfo.setUserCode(user.getUserCode());
		costInfo.setCostType(1);
		Pager<CostInfo> costInfoPager = costInfoqBiz.queryCostInfoList(costInfo, firstDate, lastDate, pager.getCurrentPageNo()==0?1:pager.getCurrentPageNo(),15);
		model.addAttribute("pager", costInfoPager);
		return "banks/accout";
	}
	
	@RequestMapping("/showCostInfoList2")
	public String showCostInfoList2(Pager<CostInfo> pager,@RequestParam(value="firstDate",required=false)String firstDate, @RequestParam(value="firstDate",required=false)String lastDate, Model model, HttpSession session) {
		User user = (User)session.getAttribute("userAdmin");
		CostInfo costInfo = new CostInfo();
		costInfo.setUserCode(user.getUserCode());
		costInfo.setCostType(2);
		Pager<CostInfo> costInfoPager = costInfoqBiz.queryCostInfoList(costInfo, firstDate, lastDate, pager.getCurrentPageNo()==0?1:pager.getCurrentPageNo(),15);
		model.addAttribute("pager", costInfoPager);
		return "banks/costAccout";
	}
	
	@RequestMapping("/showCashInfoList")
	public String showCashInfoList(Pager<CashInfo> pager,@RequestParam(value="firstDate",required=false)String firstDate, @RequestParam(value="firstDate",required=false)String lastDate, Model model, HttpSession session) {
		User user = (User)session.getAttribute("userAdmin");
		CashInfo cashInfo = new CashInfo();
		cashInfo.setUserCode(user.getUserCode());
		Pager<CashInfo> cashInfoPager = cashInfoqBiz.queryCashInfoList(cashInfo, firstDate, lastDate, pager.getCurrentPageNo()==0?1:pager.getCurrentPageNo(),15);
		model.addAttribute("pager", cashInfoPager);
		return "banks/cashInfo";
	}
	
	@RequestMapping("/addAccout")
	public String addAccout(CostInfo costInfo, Model model) {
		costInfo.setTotalMoney(3000);
		costInfoqBiz.addCostInfo(costInfo);
		model.addAttribute("add",1);
		return "banks/send";
	}
	
}
