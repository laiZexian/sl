package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.SetInfo;

import java.util.Map;

public interface ProSetDao {
	/**
	 * 获得所有套餐的信息
	 * @param map
	 * @return
	 */
	List<ProSet> queryProSets(Map<String,Object>map);
	/**
	 * 获得单条
	 * @param s
	 * @return
	 */
	ProSet queryProSet(ProSet s);
	/**
	 * 获得套餐数量
	 * @param map
	 * @return
	 */
	int querySetCount(Map<String,Object>map);
	/**
	 *添加套餐
	 * @param s
	 * @return
	 */
	int addProSet(ProSet s);
	/**
	 * 修改套餐
	 * @param s
	 * @return
	 */
	int updateProSet(ProSet s);
	/**
	 * 删除套餐
	 * @param s
	 * @return
	 */
	int delProSet(ProSet s);
	/**
	 * 获得套餐下的商品详情（商品信息和数量）
	 * @param s
	 * @return
	 */
	List<SetInfo> querySetInfo(ProSet s);
	/**
	 * 添加订单详情
	 * @param i
	 * @return
	 */
	int addSetsInfos(SetInfo i);
	/**
	 * 删除订单详情
	 * @param s
	 * @return
	 */
	int delSetsInfo(ProSet s);
}
