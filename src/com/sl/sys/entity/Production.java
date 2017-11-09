package com.sl.sys.entity;

import java.util.Date;

/**
 * 商品类
 * @author Administrator
 *
 */
public class Production {
	private String proId;// '商品编号',
	private String proName;// '商品名称',
	private double markPrice;// '市场价',
	private double prePrice;// '优惠价',
	private int proCount;//'库存',
	private String unit;//'单位',
	private int stutas;//'状态：0：下架，1：下架',
	private String standard;//  COMMENT '规格',
	private String spec;// '商品说明',
	private Date modifyDate;//'最后修改的时间'
	
	/**
	 * 无参构造函数
	 */
	public Production() {}

	public String getProId() {
		return proId;
	}

	public void setProId(String proId) {
		this.proId = proId;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public double getMarkPrice() {
		return markPrice;
	}

	public void setMarkPrice(double markPrice) {
		this.markPrice = markPrice;
	}

	public double getPrePrice() {
		return prePrice;
	}

	public void setPrePrice(double prePrice) {
		this.prePrice = prePrice;
	}

	public int getProCount() {
		return proCount;
	}

	public void setProCount(int proCount) {
		this.proCount = proCount;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getStutas() {
		return stutas;
	}

	public void setStutas(int stutas) {
		this.stutas = stutas;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	
	
}
