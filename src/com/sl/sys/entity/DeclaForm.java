package com.sl.sys.entity;

import java.util.Date;

/**
 * 报单购物表类
 * @author Administrator
 *
 */
public class DeclaForm {
	private String frmId;// '单号',
	private int member;//  '报单级别：数据对应数据从字典表得到==>这个字段决定会员的类型',
	private String address;// '收货地址',
	private String userCode;// '会员用户名',
	private String receiveName;// '收货人姓名',
	private int express;// '快递类型=====>从数据字典获得快递的类型',
	private String postCode;// '邮政编码',
	private Date createDate;// '日期时间',
	private double buyMoney;//'购货金额',
	private double mgrMoney;//'管理费',
	private int score;// '积分',
	private double total;// '总金额'
	
	private String dicName;
	
	public String getDicName() {
		return dicName;
	}

	public void setDicName(String dicName) {
		this.dicName = dicName;
	}

	public DeclaForm() {}

	public String getFrmId() {
		return frmId;
	}

	public void setFrmId(String frmId) {
		this.frmId = frmId;
	}

	public int getMember() {
		return member;
	}

	public void setMember(int member) {
		this.member = member;
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

	public double getBuyMoney() {
		return buyMoney;
	}

	public void setBuyMoney(double buyMoney) {
		this.buyMoney = buyMoney;
	}

	public double getMgrMoney() {
		return mgrMoney;
	}

	public void setMgrMoney(double mgrMoney) {
		this.mgrMoney = mgrMoney;
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
	
	
}
