package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.CostInfo;

public interface CostInfoqDao {
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	List<CostInfo> queryCostInfoList(Map<String, Object> map);
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	int queryCostInfoCount(Map<String, Object> map);
	
	/**
	 * 
	 * @param costInfo
	 * @return
	 */
	int addCostInfo(CostInfo costInfo);
}
