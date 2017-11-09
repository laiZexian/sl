package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.User;

public interface UserqDao {
	
	/**
	 * 添加会员
	 * @param user
	 * @return
	 */
	int addUser(User user);
	
	/**
	 * 根据条件查询会员信息
	 * @param user
	 * @return
	 */
	User queryUser(String userCode);
	
	/**
	 * 修改会员信息
	 * @param user
	 * @return
	 */
	int updateUserInfo(User user);
	
	/**
	 * 删除会员
	 * @param user
	 * @return
	 */
	int delUser(User user);
	
	/**
	 * 查询会员列表
	 * @return
	 */
	List<User> queryUserList(Map<String, Object> map);
	
	/**
	 * 验证密码
	 * @param user
	 * @return
	 */
	User checkUserPwd(User user);
	
	/**
	 * 统计会员数
	 * @return
	 */
	int queryUserListCount(User user);
	
}
