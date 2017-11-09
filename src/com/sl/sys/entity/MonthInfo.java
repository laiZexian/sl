package com.sl.sys.entity;
/**
 * 月结明细表类
 * @author Administrator
 *
 */
public class MonthInfo {
	private int moId;//'月结序列号',
	private String months;//'每个月份:2017-10,2017-09,2017-12',
	private int bonusNum;// '奖金的个数',
	private double total;// '奖金合计',
	private String userCode;//'对应的用户名:ps:sl_user01'
	
	/**
	 * 无参构造函数
	 */
	public MonthInfo() {}

	public int getMoId() {
		return moId;
	}

	public void setMoId(int moId) {
		this.moId = moId;
	}

	public String getMonths() {
		return months;
	}

	public void setMonths(String months) {
		this.months = months;
	}

	public int getBonusNum() {
		return bonusNum;
	}

	public void setBonusNum(int bonusNum) {
		this.bonusNum = bonusNum;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	
	
	
	
	
}
