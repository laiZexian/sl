package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.Role;
import com.sl.sys.entity.RoleInfo;

public interface RoleInfoDao {
	/**
	 * 获得指定角色下的功能
	 * @param r
	 * @return
	 */
	List<RoleInfo> queryRoleInfo(Role r);
	/**
	 * 添加角色功能详细记录
	 * @param i
	 * @return
	 */
	int addRoleInfo(RoleInfo i);
	/**
	 * 修改状态
	 * @param i
	 * @return
	 */
	int updateRoleInfo(RoleInfo i);
}
