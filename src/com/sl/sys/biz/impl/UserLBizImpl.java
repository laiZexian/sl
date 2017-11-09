package com.sl.sys.biz.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.sl.sys.biz.UserLBiz;

import com.sl.sys.dao.UserLDao;
import com.sl.sys.entity.User;
@Service
public class UserLBizImpl implements UserLBiz {
	@Resource
	private UserLDao userLDao;
	@Override
	public User checkUser(String account) {
		System.out.println("checkUser--------->" + account);
		User user = userLDao.selectUser(account);
		if (user != null) {
			System.out.println("===============getUser===========================================");
			System.out.println("getUser:" + user);
			return user;
		} else {
			System.out.println("===============user为空==================");
		}
           return null;
	}
	@Override
	public boolean updateUser(String userCode ,String createCode) {
		// TODO Auto-generated method stub
		return userLDao.updateUser( userCode , createCode)>0;
	}
	@Override
	public User querUser(String userCode, String secPwd) {
		// TODO Auto-generated method stub
		return userLDao.querUser(userCode, secPwd);
	}

}
