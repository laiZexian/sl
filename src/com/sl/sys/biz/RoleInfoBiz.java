package com.sl.sys.biz;


import java.util.List;
import java.util.Map;

import com.sl.sys.entity.Role;
import com.sl.sys.entity.RoleInfo;

public interface RoleInfoBiz {
	/**
	 * 获得指定角色下的功能
	 * @param r
	 * @return
	 */
	Map<String,RoleInfo> queryRoleInfo(Role r);
	
	/**
	 * 添加角色功能详细记录
	 * @param i
	 * @return
	 */
	boolean addRoleInfo(RoleInfo i);
	
	/**
	 * 修改状态
	 * @param i
	 * @return
	 */
	boolean updateRoleInfo(RoleInfo i);
	/**
	 * 功能是list集合
	 * @param i
	 * @return
	 */
	List<RoleInfo> queryRoleInfos(Role i);
}
