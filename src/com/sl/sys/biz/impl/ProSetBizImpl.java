package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.ProSetBiz;
import com.sl.sys.dao.ProSetDao;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.SetInfo;
@Service
public class ProSetBizImpl implements ProSetBiz {
	@Resource
	private ProSetDao proSetDao;
	@Override
	public Pager<ProSet> queryProSets(ProSet s, int pageNo, int pageSize) {
		Pager<ProSet> pages =new Pager<ProSet>();
		pages.setCurrentPageNo(pageNo);
		pages.setPageSize(pageSize);
		Map<String, Object>map =new HashMap<String, Object>();
		map.put("setName", s.getSetName());
		map.put("num", (pageNo-1)*pageSize);
		map.put("size", pageSize);
		pages.setTotalCount(proSetDao.querySetCount(map));
		pages.setTotalPageCount((pages.getTotalCount()+pageSize-1)/pageSize);
		pages.setList(proSetDao.queryProSets(map));
		return pages;
	}

	@Override
	public ProSet queryProSet(ProSet s) {
		ProSet sets =proSetDao.queryProSet(s);
		sets.setSetInfoList(proSetDao.querySetInfo(s));//获得套餐详情
		return sets;
	}

	@Override
	public boolean addProSet(ProSet s) {
		// TODO Auto-generated method stub
		return proSetDao.addProSet(s)>0;
	}

	@Override
	public boolean updateProSet(ProSet s) {
		// TODO Auto-generated method stub
		return proSetDao.updateProSet(s)>0;
	}

	@Override
	public boolean delProSet(ProSet s) {
		// TODO Auto-generated method stub
		return proSetDao.delProSet(s)>0;
	}

	@Override
	public boolean addSetsInfos(SetInfo i) {
		// TODO Auto-generated method stub
		return proSetDao.addSetsInfos(i)>0;
	}

	@Override
	public boolean delSetsInfo(ProSet s) {
		// TODO Auto-generated method stub
		return proSetDao.delSetsInfo(s)>0;
	}

}
