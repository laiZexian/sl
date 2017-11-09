package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.Role;

public interface RoleDao {
	/**
	 * 获得角色集合
	 * @param r
	 * @return
	 */
	List<Role> queryRoles(Map<String, Object>map);
	/**
	 * 获得角色个数
	 * @param map
	 * @return
	 */
	int queryRoleCount(Map<String, Object>map);
	/**
	 * 获得个单个的角色对象
	 * @param r
	 * @return
	 */
	Role queryRole(Role r);
	/**
	 *修改角色信息
	 * @param r
	 * @return
	 */
	int updateRole(Role r);
	/**
	 * 添加角色
	 * @param r
	 * @return
	 */
	int addRole(Role r);
	/**
	 * 删除
	 * @param r
	 * @return
	 */
	int delRole(Role r);
	/**
	 * 此角色是否有对应的用户
	 * @param r
	 * @return
	 */
	int queryCountUserForRole(Role r);
	/**
	 * 获得所有的所有的角色
	 * @param r
	 * @return
	 */
	List<Role> queryRoleList(Role r);
	
}
