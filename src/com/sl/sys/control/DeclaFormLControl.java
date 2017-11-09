package com.sl.sys.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.sl.sys.biz.AccountLBiz;
import com.sl.sys.biz.DeclaFormLBiz;
import com.sl.sys.entity.Account;
import com.sl.sys.entity.DeclaForm;
import com.sl.sys.entity.User;

@Controller
public class DeclaFormLControl {
	@Resource
	private DeclaFormLBiz declaFormLBiz = null;
	@Resource
	private AccountLBiz accountLBiz = null;
	
	@RequestMapping("/showdecla")
	public String showdecla(User user,Model m,HttpSession session) {
		DeclaForm list = declaFormLBiz.showById(user.getUserCode());
		User u = (User)session.getAttribute("userAdmin");
		Account data = accountLBiz.showAccount(u.getUserCode());
		m.addAttribute("DeclaForm",list);
		m.addAttribute("Account",data);
		return "shops/DeclarationForPurchase2";
	}

	@RequestMapping("/updateDeclaForm")
	public void updateEdocEntry(DeclaForm userCode,HttpServletResponse resp) throws IOException{
		PrintWriter out = resp.getWriter();
		if(null!=userCode){
			if(declaFormLBiz.updateDeclaForm(userCode)){
				out.print("<script>alert('保存成功');history.go(-1);</script>");
			}else{
				out.print("<script>alert('2');location='show';</script>");
			}
		}
		
	} 
}
