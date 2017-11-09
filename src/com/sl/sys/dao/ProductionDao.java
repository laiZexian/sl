package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.Production;

public interface ProductionDao {
	/**
	 * 获得所有的商品信息
	 * @param map
	 * @return
	 */
	List<Production> queryProductions(Map<String, Object>map);
	/**
	 * 获得商品的数量
	 * @param map
	 * @return
	 */
	int queryCountByPro(Map<String, Object>map);
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
	int addProduction(Production p);
	/**
	 * 修改商品信息
	 * @param p
	 * @return
	 */
	int updateProduction(Production p);
	/**
	 * 删除商品信息
	 * @param p
	 * @return
	 */
	int delProduction(Production p);
	/**
	 * 查询商品信息是否已存在在套餐中
	 * @param p
	 * @return
	 */
	int queryProductionInSet(Production p);
	/**
	 * 修改商品的数量
	 * @param p
	 * @return
	 */
	int updateProNum(Production p);
}
