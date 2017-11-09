package com.sl.sys.biz;



import com.sl.sys.entity.Pager;
import com.sl.sys.entity.ProSet;
import com.sl.sys.entity.SetInfo;


public interface ProSetBiz {
	/**
	 * 获得所有套餐的信息
	 * @param map
	 * @return
	 */
	Pager<ProSet> queryProSets(ProSet s,int pageNo,int pageSize);
	/**
	 * 获得单条
	 * @param s
	 * @return
	 */
	ProSet queryProSet(ProSet s);
	
	/**
	 *添加套餐
	 * @param s
	 * @return
	 */
	boolean addProSet(ProSet s);
	/**
	 * 修改套餐
	 * @param s
	 * @return
	 */
	boolean updateProSet(ProSet s);
	/**
	 * 删除套餐
	 * @param s
	 * @return
	 */
	boolean delProSet(ProSet s);
	/**
	 * 添加订单详情
	 * @param i
	 * @return
	 */
	boolean addSetsInfos(SetInfo i);
	
	/**
	 * 删除订单详情
	 * @param s
	 * @return
	 */
	boolean delSetsInfo(ProSet s);
}
