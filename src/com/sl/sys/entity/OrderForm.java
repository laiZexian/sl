package com.sl.sys.entity;

import java.util.Date;

/**
 * 订单表
 * @author Administrator
 *
 */
public class OrderForm {
	private String orderId;//'单号',
	private String address;// '收货地址',
	private String userCode;//'会员用户名',
	private String receiveName;//'收货人姓名',
	private int express;//  '快递类型=====>从数据字典获得快递的类型',
	private String postCode;// '邮政编码',
	private Date createDate;// '日期时间（购买时间）',
	private int score;// '积分：？？是不是每一种的销售类别都有积分？',
	private double total;//'销售金额',
	private int saleType;//'销售类别=====从数据字典获得销售的类别集合'
	
	private String dicName;
	
	
	
	
	public String getDicName() {
		return dicName;
	}



	public void setDicName(String dicName) {
		this.dicName = dicName;
	}



	/**
	 * 无参构造函数
	 */
	public OrderForm() {}



	public String getOrderId() {
		return orderId;
	}



	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getUserCode() {
		return userCode;
	}



	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}



	public String getReceiveName() {
		return receiveName;
	}



	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}



	public int getExpress() {
		return express;
	}



	public void setExpress(int express) {
		this.express = express;
	}



	public String getPostCode() {
		return postCode;
	}



	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}



	public Date getCreateDate() {
		return createDate;
	}



	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}



	public int getScore() {
		return score;
	}



	public void setScore(int score) {
		this.score = score;
	}



	public double getTotal() {
		return total;
	}



	public void setTotal(double total) {
		this.total = total;
	}



	public int getSaleType() {
		return saleType;
	}



	public void setSaleType(int saleType) {
		this.saleType = saleType;
	}
	
	
}
