package com.sl.sys.dao;

import org.apache.ibatis.annotations.Param;
import com.sl.sys.entity.User;

/**
 * 查询用户
 * @author Administrator
 *
 */
public interface UserLDao {
	/**
	 * 查询用户是否存在
	 * @param account
	 * @return
	 */
	User selectUser(@Param("account") String account);
	/**
	 * 修改推荐人
	 * @param userCode
	 * @return
	 */
	int updateUser (@Param("userCode")String userCode ,@Param("createCode")String createCode);
	
	/**
	 * 查询二级密码
	 * @param userCode
	 * @return
	 */
	User querUser (@Param("userCode")String userCode ,@Param("secPwd")String secPwd);

}
