package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.Production;


/**
 * 套餐商品接口
 * @author Administrator
 *
 */
public interface ProSetLDao {
	/**
	 * 查询所有重消套餐商品
	 * @return
	 */
	List<ProSet> showProSet();
	
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
