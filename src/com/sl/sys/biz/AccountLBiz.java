package com.sl.sys.biz;

import org.apache.ibatis.annotations.Param;

import com.sl.sys.entity.Account;

/**
 * 电子银行BIz层
 * @author Administrator
 *
 */
public interface AccountLBiz {
	/**
	 * 查询当前用户余额
	 * @return
	 */
	Account showAccount(String userCode);
	
	/**
	 * 修改余额
	 * @param userCode
	 * @param totalMoney
	 * @return
	 */
	boolean uperAccount(String userCode ,Double totalMoney);
}
