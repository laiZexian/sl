package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.CashInfo;

public interface CashInfoqDao {
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	List<CashInfo> queryCashInfoList(Map<String, Object> map);
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	int queryCashInfoCount(Map<String, Object> map);
}
