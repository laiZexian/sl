package com.sl.sys.entity;

import java.util.Date;





/**
 * 账单明细（基本账户和消费账户）
 * @author Administrator
 *
 */
public class CostInfo {
	private int costId;//  '账单明细表id',
	
	private Date costDate;// '汇款时间（或者转账时间）',
	private double costMoney;// '操作的金额（转账或者是入账）',
	private double totalMoney;//  '账户余额：这里不同的明细单的类型对应不同的账户余额',
	private String userCode;// '操作的账户（即消费账户和用户名是一样的）',
	private int costType;// '明细表类型：基本账单明细表 1，消费账户明细单：2'
	private String costSpec;//摘要
	private String num;//汇款的单号
	
	/**
	 * 无参构造方法
	 */
	public CostInfo() {}

	public int getCostId() {
		return costId;
	}

	public void setCostId(int costId) {
		this.costId = costId;
	}

	public Date getCostDate() {
		return costDate;
	}

	public void setCostDate(Date costDate) {
		this.costDate = costDate;
	}

	public double getCostMoney() {
		return costMoney;
	}

	public void setCostMoney(double costMoney) {
		this.costMoney = costMoney;
	}

	public double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public int getCostType() {
		return costType;
	}

	public void setCostType(int costType) {
		this.costType = costType;
	}

	public String getCostSpec() {
		return costSpec;
	}

	public void setCostSpec(String costSpec) {
		this.costSpec = costSpec;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}
	
	
}
