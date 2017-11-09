package com.sl.sys.entity;
/**
 * 账户类（基本账户和消费账户）
 * @author Administrator
 *
 */
public class Account {
	private int accountId;// '账户编号流水号',
	private String userCode;// '基本账户的账号和用户表的userCode是一样的',
	private double totalMoney;// '账户余额',
	private int accountType;// '账户类型 1：基本账户，2 消费账户'
	
	/**
	 * 无参构造方法
	 */
	public Account() {}

	

	public Account(String userCode, double totalMoney, int accountType) {
		super();
		this.userCode = userCode;
		this.totalMoney = totalMoney;
		this.accountType = accountType;
	}



	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public double getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}

	public int getAccountType() {
		return accountType;
	}

	public void setAccountType(int accountType) {
		this.accountType = accountType;
	}
	
	
	
}
