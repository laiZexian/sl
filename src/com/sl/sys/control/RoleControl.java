package com.sl.sys.control;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sl.sys.biz.FmtBiz;
import com.sl.sys.biz.RoleBiz;
import com.sl.sys.biz.RoleInfoBiz;
import com.sl.sys.entity.Fmt;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Role;
import com.sl.sys.entity.RoleInfo;

@Controller
@RequestMapping("/role")
public class RoleControl {
	@Resource
	private RoleBiz roleBiz;
	
	@Resource
	private RoleInfoBiz roleInfoBiz;
	
	@Resource
	private FmtBiz fmtBiz;
	
	/**
	 * 获得分页对象
	 * @param pageNo
	 * @param r
	 * @param m
	 * @return
	 */
	@RequestMapping("/queryalls")
	public String getAll(@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo,
			Role r,Model m) {
		Pager<Role> pages =roleBiz.queryRoles(r, pageNo, 15);
		m.addAttribute("pages", pages);
		return "users/role";
	}
	/**
	 * 获得单个的角色对象
	 * @param r
	 * @return
	 */
	@RequestMapping("/query")
	@ResponseBody
	public Role query(Role r) {
		return roleBiz.queryRole(r);
	}
	/**
	 * 修改角色对象
	 * @param r
	 * @return
	 */
	@RequestMapping("/update")
	@ResponseBody
	public String update(Role r) {
		r.setModifyDate(new Date());
		if (roleBiz.updateRole(r)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 删除
	 * @param r
	 * @return
	 */
	@RequestMapping("/del")
	@ResponseBody
	public String del(Role r) {
		if (roleBiz.queryCountUserForRole(r)) {
			return "2";//说明下面有用户名不能删除
		}
		if (roleBiz.delRole(r)) {
			return "1";
		}
		return "0";
	}
	/**
	 * 增加
	 * @param r
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String add(Role r) {
		r.setModifyDate(new Date());
		
		List<Fmt> fmtlist =fmtBiz.queryFmts(new Fmt());
		
		if (roleBiz.addRole(r)) {
			for (Fmt f : fmtlist) {
				RoleInfo i =new RoleInfo();
				i.setFmtId(f.getFmtId());
				i.setRoleId(r.getRoleId());
				i.setStutas(0);
				roleInfoBiz.addRoleInfo(i);
			}
			return "1";
		}
		return "0";
	}
	/**
	 * 验证唯一
	 * @param r
	 * @return
	 */
	@RequestMapping("/exist")
	@ResponseBody
	public String exist(Role r) {
		if (null!=roleBiz.queryRole(r)) {
			return "1";
		}
		return "0";
	}
}
