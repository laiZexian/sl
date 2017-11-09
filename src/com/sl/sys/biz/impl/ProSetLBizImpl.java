package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.ProSetLBiz;
import com.sl.sys.dao.ProSetLDao;
import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.Production;
/**
 * 商品实现类
 * @author Administrator
 *
 */
@Service
public class ProSetLBizImpl implements ProSetLBiz {
	@Resource
	private ProSetLDao proSetLDao;
	@Override
	public List<ProSet> QuerProSet() {
		return proSetLDao.showProSet();
	}
	@Override
	public List<ProSet> showByIdProSet() {
		// TODO Auto-generated method stub
		return proSetLDao.showByIdProSet();
	}
	@Override
	public List<ProSet> ByIdProSet(ProSet setId) {
		// TODO Auto-generated method stub
		return proSetLDao.ByIdProSet(setId);
	}

}
