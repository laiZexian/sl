package com.sl.sys.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.BonusLBiz;
import com.sl.sys.dao.BonusLDao;
@Service
public class BonusLBizImpl implements BonusLBiz {
	@Resource
	private BonusLDao bonusLDao = null;
	@Override
	public boolean uperBonus(String name) {
		// TODO Auto-generated method stub
		return bonusLDao.uperBonus(name)>0;
	}

}
