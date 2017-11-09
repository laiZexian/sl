package com.sl.sys.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.AccountLBiz;
import com.sl.sys.biz.BonusLBiz;
import com.sl.sys.biz.RecommendLBiz;
import com.sl.sys.biz.UserLBiz;
import com.sl.sys.entity.Account;
import com.sl.sys.entity.DeclaForm;
import com.sl.sys.entity.User;

@Controller
@RequestMapping("/userL")
public class UserLControl {
	
	@Resource
	private UserLBiz  userLBiz;
	@Resource
	private AccountLBiz accountLBiz;
	@Resource
	private BonusLBiz bonusLBiz;
	@Resource
	private RecommendLBiz recommendLBiz;
	@RequestMapping(value = "chekUser",method = { RequestMethod.POST })
	@ResponseBody
	public void checkUser(String name, HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws ServletException, IOException {
		System.out.println("=========================checkUser.action===================================");
		PrintWriter out = response.getWriter();
//		String name = request.getParameter("name");
		if (name.trim().equals("")) {
			out.print(2);// 2是不能为空
		} else {
			User user = userLBiz.checkUser(name);
			if (user != null) {
				out.print(1);// 1用户名已存在F
			} else {
				out.print(3);// 用户名可以用
			}
		}
	}
	
	@RequestMapping(value ="updatecreateCode",method = { RequestMethod.POST })
	@ResponseBody
	public void showdecla(String parentUser, Double totalMoney, DeclaForm df,String userCode, String createCode,HttpServletResponse response,HttpSession session)
			throws ServletException, IOException{
		PrintWriter out = response.getWriter();
		userCode = df.getUserCode();
		User u = (User)session.getAttribute("userAdmin");
		createCode = u.getUserCode();
		//修改推荐人
		//boolean list = userLBiz.updateUser(userCode,createCode);
		//扣除余额
		//accountLBiz.uperAccount(u.getUserCode(), totalMoney);
		//增加奖金
		//bonusLBiz.uperBonus(createCode);
		parentUser = u.getUserCode();
		//插入每日推荐数据
		recommendLBiz.insertRecommend(userCode, parentUser);
		
		
		
	}
}













