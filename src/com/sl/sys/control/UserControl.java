package com.sl.sys.control;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sl.sys.biz.DictionaryBiz;
import com.sl.sys.biz.RoleBiz;
import com.sl.sys.biz.RoleInfoBiz;
import com.sl.sys.biz.UserBiz;
import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Role;
import com.sl.sys.entity.User;

@Controller
@RequestMapping("/user")
/**
 * 
 * @author laizx
 *
 */
public class UserControl {
	@Resource
	private RoleInfoBiz roleInfoBiz;
	@Resource
	private UserBiz userBiz; 
	@Resource
	private DictionaryBiz dictionaryBiz;
	@Resource
	private RoleBiz roleBiz;
	@RequestMapping("/login")
	public String login(User u,Model m,HttpSession session) {
		
		User admin =userBiz.queryUser(u);
		if (null==admin) {
			m.addAttribute("message", "登录失败！");
			return "login";
		}
		if (admin.getUserStutas()==0) {
			m.addAttribute("message", "用户已经被禁用，无法登陆，请联系管理员！");
			return "login";
		}
		if (admin.getRole().getRoleStutas()==0) {
			m.addAttribute("message", "用户角色已经被禁用，无法登陆，请联系管理员！");
			return "login";
		}
		admin.getRole().setRoleInfo(roleInfoBiz.queryRoleInfo(admin.getRole()));//为角色对象填充功能Map集合
		//输出叔叔出一下里面的数值
		System.out.println("状态："+admin.getRole().getRoleInfo().get("1").getStutas());
		System.out.println("登录的角色名："+admin.getRole().getRoleName());
		session.setAttribute("userAdmin", admin);
		return "index";
	}
	
	@RequestMapping(value="/setjson")
	@ResponseBody
	public User setJson(User u) {
		User admin =userBiz.queryUser(u);
		
		return admin;
	}
	
	@RequestMapping("/get")
	@ResponseBody
	public User get(User u) {
		return userBiz.queryU(u);
	}
	@RequestMapping("/uploadss")
	public String uploads(MultipartFile starrh,String pwd,String email,HttpSession session) throws IllegalStateException, IOException {
		System.out.println("密码："+pwd);
		System.out.println("email:"+email);
		if (starrh!=null) {
			Long size=	starrh.getSize();
			System.out.println("上传文件大小:"+size);
			String name =starrh.getOriginalFilename();
			System.out.println("上传文件的名字:"+name);
			String path =session.getServletContext().getRealPath("statics/upload");
			System.out.println("上传的路径:"+path);
			File newFile =new File(path, name);
			starrh.transferTo(newFile);
			System.out.println("上传成功!");
		}
		return "index";
	}
	@RequestMapping("/add")
	public String addMon(CostInfo c) {
		c.setTotalMoney(13000);
		c.setUserCode("sl_user01");
		System.out.println(c.getCostDate());
		System.out.println("进入汇款！--");
		if(userBiz.addMoney(c)) {
			System.out.println("汇款成功！");
			return "bank/pay";
			
		}
		System.out.println("汇款失败！");
		return "index";
	}
	
	@RequestMapping("/loginout")
	public String out(HttpSession session) {
		session.invalidate();
		System.out.println("退出成功！");
		return "login";
	}
	
	/**
	 * 获得所有的用户名（分页的形式）
	 * @param u
	 * @param m
	 * @param pageNo
	 * @return
	 */
	@RequestMapping("/all")
	public String all(User u,Model m,@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo) {
		Pager<User> pages =userBiz.queryUsers(u, pageNo, 10);
		m.addAttribute("pages", pages);
		m.addAttribute("userCode", u.getUserCode());
		Dictionary d =new Dictionary();
		d.setDicType("银行");
		List<Dictionary>banklist =dictionaryBiz.queryType(d);
		m.addAttribute("banklist", banklist);
		List<Role> rolelist =roleBiz.queryRoleList(new Role());
		m.addAttribute("rolelist", rolelist);
		return "users/user";
	}
	/**
	 * 添加用户名
	 * @param u
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("/addu")
	public String addUser(User u,@RequestParam(value="attatch",required=false) MultipartFile[] attatch,HttpSession session) throws IllegalStateException, IOException {
		
		String num=u.getCardNo();
		System.out.println("身份证号："+num);
		num = num.substring(num.length()-6,num.length());
		System.out.println("统一密码："+num);
		u.setLogPwd(num);//设置登录密码
		u.setSecPwd(num);//设置二级密码
		u.setCreateDate(new Date());//设置申请时间
		String path =session.getServletContext().getRealPath("statics/upload");
		System.out.println("上传路径："+path);
		
		if (null!=attatch) {
			for (int i = 0; i < attatch.length; i++) {
				MultipartFile attach =attatch[i];
				if (!attach.isEmpty()) {
					if (i==0) {
						u.setIdcardPicFron(attatch[i].getOriginalFilename());
					}
					if (i==1) {
						u.setIdcardPicRev(attatch[i].getOriginalFilename());
			
					}
					if (i==2) {
						u.setBankCardPic(attatch[i].getOriginalFilename());
					}
					File newFile =new File(path,attatch[i].getOriginalFilename());
					attatch[i].transferTo(newFile);
				}
				
			}
		}
		if (userBiz.addUser(u)) {
			return "redirect:/user/all";
		}
		return "redirect:/user/all";
	}
	/**
	 * 删除
	 * @param u
	 * @return
	 */
	@RequestMapping("/del")
	@ResponseBody
	public String del(User u) {
		if (userBiz.delUser(u)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 修改
	 * @param u
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@RequestMapping("/update")
	public String update(User u,@RequestParam(value="attatch",required=false) MultipartFile[] attatch,HttpSession session) throws IllegalStateException, IOException {
		u.setModifyDate(new Date());
		String path =session.getServletContext().getRealPath("statics/upload");
		System.out.println(path);
		
		if (null!=attatch) {
			for (int i = 0; i < attatch.length; i++) {
				MultipartFile attach =attatch[i];
				if (!attach.isEmpty()) {
					if (i==0) {
						u.setIdcardPicFron(attatch[i].getOriginalFilename());
					}
					if (i==1) {
						u.setIdcardPicRev(attatch[i].getOriginalFilename());
					}
					if (i==2) {
						u.setBankCardPic(attatch[i].getOriginalFilename());
					}
					File newFile =new File(path,attatch[i].getOriginalFilename());
					attatch[i].transferTo(newFile);
				}
			}
		}
		
		if (userBiz.updateUser(u)) {
			return "redirect:/user/all";
		}
		return "users/user";
	}
	/**
	 * 验证唯一
	 * @param u
	 * @return
	 */
	@RequestMapping("/exist")
	@ResponseBody
	public String exist(User u) {
		if (null!=userBiz.queryU(u)) {
			return "1";
		}
		return "0";
	}
	

}
