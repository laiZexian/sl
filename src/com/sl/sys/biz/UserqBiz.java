package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.Account;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.User;

public interface UserqBiz {
	
	/**
	 * 添加会员
	 * @param user
	 * @return
	 */
	boolean addUser(User user);
	
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
	User updateUserInfo(User user);
	
	/**
	 * 删除会员
	 * @param user
	 * @return
	 */
	boolean delUser(User user);
	
	/**
	 * 根据类型查询字典相关数据
	 * @param dicType
	 * @return
	 */
	List<Dictionary> queryDictionaryOfType(String dicType);
	

	/**
	 * 添加账户
	 * @param account
	 * @return
	 */
	boolean addAccount(Account account);
	
	/**
	 * 修改会员密码
	 * @param user
	 * @return
	 */
	User updateUserPwd(User user);
	
	/**
	 * 验证密码
	 * @param user
	 * @return
	 */
	boolean checkUserPwd(User user);
	
	/**
	 * 根据推荐人查询会员列表
	 * @param user
	 * @return
	 */
	Pager<User> queryUserListByCreateCode(String createCode,int start, int end);
}
