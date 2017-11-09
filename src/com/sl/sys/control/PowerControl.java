package com.sl.sys.control;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sl.sys.biz.RoleBiz;
import com.sl.sys.biz.RoleInfoBiz;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Role;
import com.sl.sys.entity.RoleInfo;


@Controller
@RequestMapping("/power")
public class PowerControl {
	@Resource
	private RoleBiz roleBiz;
	@Resource
	private RoleInfoBiz roleInfoBiz;

	@RequestMapping("/all")
	public String show(Model m,Role r,@RequestParam(value="pageNo",required=false,defaultValue="1")int pageNo) {
		
		//获得所有的角色列表
		Role rs =new Role();
		Pager<Role>pages =roleBiz.queryRoles(rs, pageNo, 6);
		m.addAttribute("pages", pages);
		
		if (null==r.getRoleId()) {
			r.setRoleId(pages.getList().get(0).getRoleId());
		}
		
		Role shwoRole=roleBiz.queryRole(r);
		shwoRole.setRoleInfo(roleInfoBiz.queryRoleInfo(r));
		m.addAttribute("roles", shwoRole);
		return"users/power";
	}
	
	@RequestMapping("/up")
	public String update(@RequestParam(value="fmt",required=false)String[]fmt,Role r ,int pageNo) {
		for (int i = 0; i < fmt.length; i++) {
			System.out.println(fmt[i]);
		}
		
		//先获的原来的列表的所有功能RoleInfo的功能然后进行删选
		List<RoleInfo> list =roleInfoBiz.queryRoleInfos(r);
		//然后将所有的对象编程没有选中
		for (RoleInfo fo : list) {
			fo.setStutas(0);
		}
		//然后在根据选中的修改状态
		for (int i = 0; i < fmt.length; i++) {
			String rlid=fmt[i];
			for (RoleInfo rol : list) {
				if (rol.getRlId()==Integer.parseInt(rlid)) {
					rol.setStutas(1);
				}
			}
		}
		//最后在数据库中修改
		for (RoleInfo fo : list) {
			roleInfoBiz.updateRoleInfo(fo);
		}
		return"redirect:/power/all?pageNo="+pageNo+"&roleId="+r.getRoleId();
	}
	
	
}
