package com.sl.sys.biz;

import com.sl.sys.entity.CostInfo;
import com.sl.sys.entity.Pager;

public interface CostInfoqBiz {
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	Pager<CostInfo> queryCostInfoList(CostInfo costInfo, String firstDate, String lastDate, int pageNo, int pageSize);
	
	
	/**
	 * 
	 * @param costInfo
	 * @return
	 */
	boolean addCostInfo(CostInfo costInfo);
}
