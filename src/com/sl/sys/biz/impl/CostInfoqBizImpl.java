package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.CostInfoqBiz;
import com.sl.sys.dao.CostInfoqDao;
import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.Pager;
@Service
public class CostInfoqBizImpl implements CostInfoqBiz {

	@Resource
	private CostInfoqDao costInfoqDao;
	
	@Override
	public Pager<CostInfo> queryCostInfoList(CostInfo costInfo, String firstDate, String lastDate, int pageNo, int pageSize) {
		Pager<CostInfo> pager = new Pager<CostInfo>();
		pager.setCurrentPageNo(pageNo);
		pager.setPageSize(pageSize);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userCode", costInfo.getUserCode());
		map.put("costType", costInfo.getCostType());
		map.put("firstCostDate", firstDate);
		map.put("lastCostDate", lastDate);
		pager.setTotalCount(costInfoqDao.queryCostInfoCount(map));
		pager.setTotalPageCount((pager.getTotalCount()+pageSize-1)/pageSize);
		pager.setList(costInfoqDao.queryCostInfoList(map));
		return pager;
	}

	@Override
	public boolean addCostInfo(CostInfo costInfo) {
		return costInfoqDao.addCostInfo(costInfo)>0;
	}

}
