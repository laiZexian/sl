package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.OrderFormLBiz;
import com.sl.sys.dao.OrderFormLDao;
import com.sl.sys.entity.OrderForm;
@Service
public class OrderFormLBizImpl implements OrderFormLBiz {
	@Resource
	private OrderFormLDao orderFormLDao;
	
	@Override
	public List<OrderForm> showroderform() {
		// TODO Auto-generated method stub
		return orderFormLDao.showroderform();
	}

	@Override
	public boolean deleOrder(OrderForm orderId) {
		// TODO Auto-generated method stub
		return orderFormLDao.deleOrder(orderId)>0;
	}

	@Override
	public List<OrderForm> querOderForm() {
		// TODO Auto-generated method stub
		return orderFormLDao.querOderForm();
	}

}
