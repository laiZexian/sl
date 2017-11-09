package com.sl.sys.biz;

import com.sl.sys.entity.CashInfo;
import com.sl.sys.entity.Pager;

public interface CashInfoqBiz {
	
	/**
	 * 
	 * @param map
	 * @return
	 */
	Pager<CashInfo> queryCashInfoList(CashInfo cashInfo, String firstDate, String lastDate, int pageNo, int pageSize);
}
