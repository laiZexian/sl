package com.sl.sys.control;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sl.sys.biz.UserqBiz;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.User;

@Controller
@RequestMapping("/memsq")
public class UserqControl {
	
	@Resource
	private UserqBiz userqBiz; 

	@RequestMapping("/saveUser")
	public String saveUser(User user,Model model) {
		if(userqBiz.addUser(user)) {
			model.addAttribute("userInfo", userqBiz.queryUser(user.getUserCode()));
			return "mems/signinsuccess";
		}
		return "error";
	}

	@RequestMapping("/updateUserInfo")
	public String updateUserInfo(User user, Model model, HttpSession session) {
		User u = userqBiz.updateUserInfo(user);
		if(u != null) {
			session.setAttribute("userAdmin", u);
			List<Dictionary> cardTypeList = userqBiz.queryDictionaryOfType("证件类型");
			List<Dictionary> countryList = userqBiz.queryDictionaryOfType("国家");
			List<Dictionary> bankList = userqBiz.queryDictionaryOfType("银行");
			model.addAttribute("cardTypeList",cardTypeList);
			model.addAttribute("countryList",countryList);
			model.addAttribute("bankList",bankList);
			model.addAttribute("update", 1);
			return "mems/editselfinfo";
		}
		return "error";
	}
	
	@RequestMapping(value = "/updateUserPwd")
	@ResponseBody
	public boolean updateUserPwd(User user,HttpSession session){
		User u = userqBiz.updateUserPwd(user);
		if(u != null) {
			session.setAttribute("userAdmin", u);
			return true;
		}
		return false;
	}
	
	@RequestMapping("/addUser")
	public String addUser(Model model) {
		List<Dictionary> cardTypeList = userqBiz.queryDictionaryOfType("证件类型");
		List<Dictionary> countryList = userqBiz.queryDictionaryOfType("国家");
		List<Dictionary> bankList = userqBiz.queryDictionaryOfType("银行");
		model.addAttribute("cardTypeList",cardTypeList);
		model.addAttribute("countryList",countryList);
		model.addAttribute("bankList",bankList);
		return "mems/signinform";
	}
	
	@RequestMapping("/chackUserInfo")
	public String chackUserInfo(User user,@RequestParam(value="attatch",required=false) MultipartFile[] pic, Model model, HttpSession session) throws IllegalStateException, IOException {
		String path =session.getServletContext().getRealPath("statics/upload");
		System.out.println(path);
		if (null!=pic) {
			for (int i = 0; i < pic.length; i++) {
				MultipartFile attach =pic[i];
				if (!attach.isEmpty()) {
					if (i==0) {
						user.setIdcardPicFron(pic[i].getOriginalFilename());
					}
					if (i==1) {
						user.setIdcardPicRev(pic[i].getOriginalFilename());
					}
					if (i==2) {
						user.setBankCardPic(pic[i].getOriginalFilename());
					}
					File newFile =new File(path,pic[i].getOriginalFilename());
					pic[i].transferTo(newFile);
				}
			}
		}
		model.addAttribute("chackUser", user);
		return "mems/signininfoaffirm";
	}
	
	@RequestMapping("/checkUserPwd")
	@ResponseBody
	public boolean checkLogPwd(User user) {
		return userqBiz.checkUserPwd(user);
	}
	
	@RequestMapping("/updateUser")
	public String updateUser(Model model) {
		List<Dictionary> cardTypeList = userqBiz.queryDictionaryOfType("证件类型");
		List<Dictionary> countryList = userqBiz.queryDictionaryOfType("国家");
		List<Dictionary> bankList = userqBiz.queryDictionaryOfType("银行");
		model.addAttribute("cardTypeList",cardTypeList);
		model.addAttribute("countryList",countryList);
		model.addAttribute("bankList",bankList);
		return "mems/editselfinfo";
	}
	
	@RequestMapping("/checkUserCode")
	@ResponseBody
	public boolean checkUserCode(User user) {
		if(userqBiz.queryUser(user.getUserCode()) != null) {
			return true;
		}
		return false;
	}
	
	@RequestMapping("/showUserList")
	public String showUserList(Pager<User> pager, Model model, HttpSession session) {
		User user = (User)session.getAttribute("userAdmin");
		Pager<User> userPager = userqBiz.queryUserListByCreateCode(user.getCreateCode(),pager.getCurrentPageNo()==0?1:pager.getCurrentPageNo(),15);
		model.addAttribute("pager", userPager);
		return "mems/membermanage";
	}
	
	@RequestMapping("/delUser")
	@ResponseBody
	public boolean delUser(User user, Model model) {
		if(userqBiz.delUser(user)) {
			return true;
		}
		return false;
	}
}
