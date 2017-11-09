package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.OrderForm;

/**
 * 购货管理Dao接口
 * @author Administrator
 *
 */
public interface OrderFormLDao {
	/**
	 * 查询所有购货
	 * @return
	 */
	List<OrderForm> showroderform();
	/**
	 * 删除购货
	 * @param orderId
	 * @return
	 */
	int deleOrder(OrderForm orderId);
	/**
	 * 查询所有订单
	 * @return
	 */
	List<OrderForm> querOderForm();
	
	
}
