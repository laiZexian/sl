package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.UserBiz;
import com.sl.sys.dao.UserDao;
import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.User;
@Service
public class UserBizImpl implements UserBiz {
	@Resource
	private UserDao userDao;
	@Override
	public User queryUser(User u) {
		// TODO Auto-generated method stub
		return userDao.queryUser(u);
	}
	@Override
	public boolean addMoney(CostInfo c) {
		// TODO Auto-generated method stub
		return userDao.addMoney(c)>0;
	}
	@Override
	public Pager<User> queryUsers(User u, int pageNo, int pageSize) {
		Pager<User>pages =new Pager<User>();
		pages.setCurrentPageNo(pageNo);
		pages.setPageSize(pageSize);
		Map<String, Object>map=new HashMap<String,Object>();
		map.put("num", (pageNo-1)*pageSize);
		map.put("size", pageSize);
		map.put("userCode", u.getUserCode());
		pages.setTotalCount(userDao.queryCount(map));
		pages.setTotalPageCount((pages.getTotalCount()+pages.getPageSize()-1)/pages.getPageSize());
		pages.setList(userDao.queryUsers(map));
		return pages;
	}
	@Override
	public User queryU(User u) {
		// TODO Auto-generated method stub
		return userDao.queryU(u);
	}
	@Override
	public boolean addUser(User u) {
		// TODO Auto-generated method stub
		return userDao.addUser(u)>0;
	}
	@Override
	public boolean updateUser(User u) {
		// TODO Auto-generated method stub
		return userDao.updateUser(u)>0;
	}
	@Override
	public boolean delUser(User u) {
		// TODO Auto-generated method stub
		return userDao.delUser(u)>0;
	}
	
}
