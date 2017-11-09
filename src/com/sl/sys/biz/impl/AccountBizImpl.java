package com.sl.sys.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.AccountLBiz;
import com.sl.sys.dao.AccountLDao;
import com.sl.sys.entity.Account;
@Service
public class AccountBizImpl implements AccountLBiz {
	@Resource
	private AccountLDao accountLDao;
	@Override
	public Account showAccount(String userCode) {
		// TODO Auto-generated method stub
		return accountLDao.showAccount(userCode);
	}
	@Override
	public boolean uperAccount(String userCode, Double totalMoney) {
		// TODO Auto-generated method stub
		return accountLDao.uperAccount(userCode, totalMoney)>0;
	}

}
