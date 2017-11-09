package com.sl.sys.biz.impl;


import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.RoleInfoBiz;
import com.sl.sys.dao.RoleInfoDao;
import com.sl.sys.entity.Role;
import com.sl.sys.entity.RoleInfo;


@Service
public class RoleInfoBizImpl implements RoleInfoBiz {
	@Resource
	private RoleInfoDao roleInfoDao;

	@Override
	public Map<String, RoleInfo> queryRoleInfo(Role r) {
		List<RoleInfo> list  =roleInfoDao.queryRoleInfo(r);
		Map<String, RoleInfo>map =new HashMap<String,RoleInfo>();
		for (RoleInfo ri : list) {
			map.put(ri.getFmtId()+"", ri);
		}
		return map;
	}

	@Override
	public boolean addRoleInfo(RoleInfo i) {
		// TODO Auto-generated method stub
		return roleInfoDao.addRoleInfo(i)>0;
	}

	@Override
	public boolean updateRoleInfo(RoleInfo i) {
		// TODO Auto-generated method stub
		return roleInfoDao.updateRoleInfo(i)>0;
	}

	@Override
	public List<RoleInfo> queryRoleInfos(Role i) {
		// TODO Auto-generated method stub
		return roleInfoDao.queryRoleInfo(i);
	}
	

}
