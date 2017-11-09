package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.CashInfoqBiz;
import com.sl.sys.dao.CashInfoqDao;
import com.sl.sys.entity.CashInfo;
import com.sl.sys.entity.Pager;
@Service
public class CashInfoqBizImpl implements CashInfoqBiz {

	@Resource
	private CashInfoqDao cashInfoqDao;
	
	@Override
	public Pager<CashInfo> queryCashInfoList(CashInfo cashInfo, String firstDate, String lastDate, int pageNo, int pageSize) {
		Pager<CashInfo> pager = new Pager<CashInfo>();
		pager.setCurrentPageNo(pageNo);
		pager.setPageSize(pageSize);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userCode", cashInfo.getUserCode());
		map.put("firstCostDate", firstDate);
		map.put("lastCostDate", lastDate);
		pager.setTotalCount(cashInfoqDao.queryCashInfoCount(map));
		pager.setTotalPageCount((pager.getTotalCount()+pageSize-1)/pageSize);
		pager.setList(cashInfoqDao.queryCashInfoList(map));
		return pager;
	}

}
