package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.OrderForm;
import com.sl.sys.entity.ProSet;
/**
 * 购货管理Biz层接口
 * @author Administrator
 *
 */
public interface OrderFormLBiz {
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
	boolean deleOrder(OrderForm orderId);
	
	/**
	 * 查询所有订单
	 * @return
	 */
	List<OrderForm> querOderForm();
}
