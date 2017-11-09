package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.Production;
/**
 * 套餐商品业务层
 * @author Administrator
 *
 */
public interface ProSetLBiz {
	/**
	 * 查询所有套餐商品
	 * @return
	 */
	List<ProSet> QuerProSet();
	
	/**
	 * 查询所有辅助套餐
	 * @return
	 */
	List<ProSet> showByIdProSet();
	
	/**
	 * 根据id查询到结算页面
	 * @param setId
	 * @return
	 */
	List<ProSet> ByIdProSet(ProSet setId);
}
