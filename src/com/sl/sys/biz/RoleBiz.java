package com.sl.sys.biz;



import java.util.List;

import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Role;

public interface RoleBiz {
	/**
	 * 分页角色集合
	 * @param r
	 * @return
	 */
	Pager<Role> queryRoles(Role r,int pageNo, int pageSize);
	
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
	boolean updateRole(Role r);
	/**
	 * 添加角色
	 * @param r
	 * @return
	 */
	boolean addRole(Role r);
	/**
	 * 删除
	 * @param r
	 * @return
	 */
	boolean delRole(Role r);
	/**
	 * 此角色是否有对应的用户
	 * @param r
	 * @return
	 */
	boolean queryCountUserForRole(Role r);
	
	/**
	 * 获得所有的所有的角色
	 * @param r
	 * @return
	 */
	List<Role> queryRoleList(Role r);
	
}
