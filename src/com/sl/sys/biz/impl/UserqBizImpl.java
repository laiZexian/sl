package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.UserqBiz;
import com.sl.sys.dao.AccountqDao;
import com.sl.sys.dao.DictionaryqDao;
import com.sl.sys.dao.UserqDao;
import com.sl.sys.entity.Account;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.User;

@Service
public class UserqBizImpl implements UserqBiz {

	@Resource
	private UserqDao userqDao;
	@Resource
	private DictionaryqDao dictionaryqDao;
	@Resource
	private AccountqDao accountqDao;
	
	@Override
	public boolean addUser(User user) {
		user.setLogPwd(user.getCardNo().substring(user.getCardNo().length()-6));
		user.setSecPwd(user.getCardNo().substring(user.getCardNo().length()-6));
		user.setRoleId("al_role01");
		user.setUserStutas(1);
		accountqDao.addAccount(new Account(user.getUserCode(),0,1));
		accountqDao.addAccount(new Account(user.getUserCode(),0,2));
		return userqDao.addUser(user)>0;
	}

	@Override
	public List<Dictionary> queryDictionaryOfType(String dicType) {
		return dictionaryqDao.queryDictionaryOfType(dicType);
	}

	@Override
	public User queryUser(String userCode) {
		return userqDao.queryUser(userCode);
	}

	@Override
	public User updateUserInfo(User user) {
		if(userqDao.updateUserInfo(user) > 0) {
			return userqDao.queryUser(user.getUserCode());
		}
		return null;
	}

	@Override
	public boolean delUser(User user) {
		return userqDao.delUser(user) > 0;
	}

	@Override
	public boolean addAccount(Account account) {
		return accountqDao.addAccount(account) > 0;
	}

	@Override
	public User updateUserPwd(User user) {
		if(userqDao.updateUserInfo(user) > 0) {
			return userqDao.queryUser(user.getUserCode());
		}
		return null;
	}

	@Override
	public boolean checkUserPwd(User user) {
		return userqDao.checkUserPwd(user) != null;
	}

	@Override
	public Pager<User> queryUserListByCreateCode(String createCode, int currentPageNo, int pageSize) {
		Pager<User> pager = new Pager<User>();
		User user = new User();
		user.setCreateCode(createCode);
		pager.setTotalCount(userqDao.queryUserListCount(user));
		pager.setCurrentPageNo(currentPageNo);
		pager.setPageSize(pageSize);
		pager.setTotalPageCount((pager.getTotalCount()+pageSize-1)/pageSize);
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("start",pageSize*(currentPageNo-1));
		map.put("end", pageSize);
		map.put("createCode", createCode);
		List<User> list = userqDao.queryUserList(map);
		pager.setList(list);
		return pager;
	}
	
}
