package com.sl.sys.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.OrderFormLBiz;
import com.sl.sys.biz.UserLBiz;
import com.sl.sys.entity.DeclaForm;
import com.sl.sys.entity.OrderForm;
import com.sl.sys.entity.User;

@Controller
public class OrderFormLControl {
	@Resource
	private OrderFormLBiz rderFormLBiz=null;
	@Resource
	private UserLBiz userLBiz = null;
	@RequestMapping("/showOrder")
	public String showOrder(Model m) {
		List<OrderForm> list = rderFormLBiz.showroderform();
		m.addAttribute("list",list);
		return "shops/PurchaseManagement";
	}
	
	@RequestMapping("/deleOrder")
	public String deleOrder(OrderForm orderId,HttpServletResponse resp) {
		rderFormLBiz.deleOrder(orderId);
		return "redirect:/showOrder";
	}
	
	@RequestMapping("/show")
	public String show(Model m) {
		List<OrderForm> list = rderFormLBiz.querOderForm();
		m.addAttribute("list",list);
		return "shops/ConfirmThePurchase";
	}
	
	@RequestMapping(value ="querUser",method = { RequestMethod.POST })
	public String querUser(String totalMoney,String userCode, String secPwd, Model m, HttpServletResponse response,HttpSession session)
			throws ServletException, IOException{
		PrintWriter out = response.getWriter();
		User u = (User)session.getAttribute("userAdmin");
		userCode = u.getUserCode();
		User data = userLBiz.querUser(userCode, secPwd);
		m.addAttribute("totalMoney", totalMoney);
		m.addAttribute("userCode",userCode);
		if(data == null) {
			out.print("<script>alert('保存成功');history.go(-1);</script>");
		}
		return "shops/ConfirmThePurchase2";
		
		
	}
}
