package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.User;

public interface UserDao {
	/**
	 * 获得单个的用户信息(登陆用的)
	 * @param u
	 * @return
	 */
	User queryUser(User u);
	/**
	 * 添加明细单
	 * @param c
	 * @return
	 */
	int addMoney(CostInfo c);
	/**
	 * 获得所有的用户信息
	 * @param map
	 * @return
	 */
	List<User> queryUsers(Map<String, Object>map);
	/**
	 * 获用户的个数
	 * @param map
	 * @return
	 */
	int queryCount(Map<String, Object>map);
	/**
	 * 单个对象
	 * @param u
	 * @return
	 */
	User queryU(User u);
	/**
	 * 添加
	 * @param u
	 * @return
	 */
	int addUser(User u);
	/**
	 * 修改
	 * @param u
	 * @return
	 */
	int updateUser(User u);
	/**
	 * 删除
	 * @param u
	 * @return
	 */
	int delUser(User u);
	
	
}
