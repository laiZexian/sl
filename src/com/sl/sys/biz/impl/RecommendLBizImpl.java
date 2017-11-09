package com.sl.sys.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.RecommendLBiz;
import com.sl.sys.dao.RecommendLDao;
@Service
public class RecommendLBizImpl implements RecommendLBiz {
	@Resource
	public RecommendLDao recommendLDao;
	@Override
	public boolean insertRecommend(String userCode, String parentUser) {
		// TODO Auto-generated method stub
		return recommendLDao.insertRecommend(userCode, parentUser)>0;
	}

}
