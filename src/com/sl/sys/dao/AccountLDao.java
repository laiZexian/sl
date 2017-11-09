package com.sl.sys.dao;

import org.apache.ibatis.annotations.Param;

import com.sl.sys.entity.Account;

/**
 * 电子银行DAO层
 * @author Administrator
 *
 */
public interface AccountLDao {
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
	int uperAccount(@Param("userCode")String userCode ,@Param("totalMoney")Double totalMoney);
}
