package com.sl.sys.biz;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.User;

public interface UserBiz {
	/**
	 * 获得单个的用户信息
	 * @param u
	 * @return
	 */
	User queryUser(User u);
	/**
	 * 添加明细单
	 * @param c
	 * @return
	 */
	boolean addMoney(CostInfo c);
	
	/**
	 * 获得分页对象
	 * @param u
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	Pager<User> queryUsers(User u,int pageNo,int pageSize);
	
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
	 boolean addUser(User u);
	/**
	 * 修改
	 * @param u
	 * @return
	 */
	boolean updateUser(User u);
	/**
	 * 删除
	 * @param u
	 * @return
	 */
	boolean delUser(User u);
	
}
