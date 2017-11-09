package com.sl.sys.biz;


import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Production;

public interface ProductionBiz {
	/**
	 * 获得分页的商品对象
	 * @param p
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	Pager<Production> queryProductions(Production p,int pageNo,int pageSize);
	
	/**
	 * 获得单个的商品信息
	 * @param p
	 * @return
	 */
	Production queryProduction(Production p);
	/**
	 * 添加商品信息
	 * @param p
	 * @return
	 */
	boolean addProduction(Production p);
	/**
	 * 修改商品信息
	 * @param p
	 * @return
	 */
	boolean updateProduction(Production p);
	/**
	 * 删除商品信息
	 * @param p
	 * @return
	 */
	boolean delProduction(Production p);
	/**
	 * 查询商品信息是否已存在在套餐中
	 * @param p
	 * @return
	 */
	boolean queryProductionInSet(Production p);
	
	/**
	 * 修改商品的数量
	 * @param p
	 * @return
	 */
	boolean updateProNum(Production p);
}
