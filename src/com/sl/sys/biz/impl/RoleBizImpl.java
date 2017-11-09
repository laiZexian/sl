package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.RoleBiz;
import com.sl.sys.dao.RoleDao;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Role;
@Service
public class RoleBizImpl implements RoleBiz {
	@Resource
	private RoleDao roleDao;
	@Override
	public Pager<Role> queryRoles(Role r, int pageNo, int pageSize) {
		Pager<Role> pages =new Pager<Role>();
		pages.setCurrentPageNo(pageNo);
		pages.setPageSize(pageSize);
		Map<String, Object>map =new HashMap<String,Object>();
		map.put("roleName", r.getRoleName());
		map.put("num",(pageNo-1)*pageSize );
		map.put("size", pageSize);
		pages.setTotalCount(roleDao.queryRoleCount(map));
		pages.setTotalPageCount((pages.getPageSize()+pages.getTotalCount()-1)/pages.getPageSize());
		pages.setList(roleDao.queryRoles(map));
		return pages;
	}

	@Override
	public Role queryRole(Role r) {
		// TODO Auto-generated method stub
		return roleDao.queryRole(r);
	}

	@Override
	public boolean updateRole(Role r) {
		// TODO Auto-generated method stub
		return roleDao.updateRole(r)>0;
	}

	@Override
	public boolean addRole(Role r) {
		// TODO Auto-generated method stub
		return roleDao.addRole(r)>0;
	}

	@Override
	public boolean delRole(Role r) {
		// TODO Auto-generated method stub
		return roleDao.delRole(r)>0;
	}

	@Override
	public boolean queryCountUserForRole(Role r) {
		// TODO Auto-generated method stub
		return roleDao.queryCountUserForRole(r)>0;
	}

	@Override
	public List<Role> queryRoleList(Role r) {
		// TODO Auto-generated method stub
		return roleDao.queryRoleList(r);
	}

}
