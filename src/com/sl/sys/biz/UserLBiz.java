package com.sl.sys.biz;

import org.apache.ibatis.annotations.Param;

import com.sl.sys.entity.User;
/**
 * 查询用户逻辑层
 * @author Administrator
 *
 */
public interface UserLBiz {
	/**
	 * 查询用户是否存在逻辑层
	 * @param account
	 * @return
	 */
	public User checkUser(String account);
	
	/**
	 * 修改推荐人
	 * @param userCode
	 * @return
	 */
	boolean updateUser (String userCode ,String createCode);
	
	/**
	 * 查询二级密码
	 * @param userCode
	 * @return
	 */
	User querUser (String userCode ,String secPwd);
}
