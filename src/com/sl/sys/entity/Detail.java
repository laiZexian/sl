package com.sl.sys.entity;
/**
 * 订单详情页面
 * @author Administrator
 *
 */
public class Detail {
	private int detId;// '订单详情id',
	private String orderId;// '订单号',
	private String setId;// '套餐编号',
	private int setNum;// '套餐数量',
	private double totalMoney;// '合价：这个套餐价格和套餐数量的总价'
	
	/**
	 * 无参构造函数
	 */
	public Detail() {}

	public int getDetId() {
		return detId;
	}

	public void setDetId(int detId) {
		this.detId = detId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getSetId() {
		return setId;
	}

	public void setSetId(String setId) {
		this.setId = setId;
	}

	public int getSetNum() {
		return setNum;
	}

	public void setSetNum(int setNum) {
		this.setNum = setNum;
	}

	public double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}
	
	
}
