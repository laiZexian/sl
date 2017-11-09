package com.sl.sys.entity;

import java.util.Date;

/**
 * 提现明细表
 * @author Administrator
 *
 */
public class CashInfo {
	private int cashId;//'提现Id',
	private String userCode;// 提现的基本账户（即用户名）',
	private Date cashDate;// '申请提现的日期',
	private double cashMoney;//  '提现金额',
	private int stutas;//  '提现的状态：转账中、已完成===》是否要用数据字典',
	private String bankUser;//  '银行开户人',
	private String bankNo;//  '银行卡号',
	private int bank;//  '开户行（银行）===》是否要用数据字典'
	
	public CashInfo() {}

	public int getCashId() {
		return cashId;
	}

	public void setCashId(int cashId) {
		this.cashId = cashId;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public Date getCashDate() {
		return cashDate;
	}

	public void setCashDate(Date cashDate) {
		this.cashDate = cashDate;
	}

	public double getCashMoney() {
		return cashMoney;
	}

	public void setCashMoney(double cashMoney) {
		this.cashMoney = cashMoney;
	}

	public int getStutas() {
		return stutas;
	}

	public void setStutas(int stutas) {
		this.stutas = stutas;
	}

	public String getBankUser() {
		return bankUser;
	}

	public void setBankUser(String bankUser) {
		this.bankUser = bankUser;
	}

	public String getBankNo() {
		return bankNo;
	}

	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}

	public int getBank() {
		return bank;
	}

	public void setBank(int bank) {
		this.bank = bank;
	}
	
	
	
}
