package com.sl.sys.entity;
/**
 * 商品套餐类
 * @author Administrator
 *
 */

import java.util.List;

public class ProSet {
	private String setId;// '套餐编号',
	private String setName;// '套餐名称',
	private double markPrice;//'零售价',
	private double prePrice;//'优惠价',
	private int setType;//'套餐类型=====>这里要到数据字典获得对应的字段',
	private int stutas;//'状态：0：下架，1：下架',
	private String spec;//'说明',
	private int setNum;// '套餐数',
	private int score;//'积分'
	
	private List<SetInfo> setInfoList;//对应每个套餐里的详情套餐数据（里面有商品信息和数量）
	
	/**
	 * 无参构造函数
	 */
	public ProSet() {}

	public String getSetId() {
		return setId;
	}

	public void setSetId(String setId) {
		this.setId = setId;
	}

	public String getSetName() {
		return setName;
	}

	public void setSetName(String setName) {
		this.setName = setName;
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

	public int getSetType() {
		return setType;
	}

	public void setSetType(int setType) {
		this.setType = setType;
	}

	public int getStutas() {
		return stutas;
	}

	public void setStutas(int stutas) {
		this.stutas = stutas;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public int getSetNum() {
		return setNum;
	}

	public void setSetNum(int setNum) {
		this.setNum = setNum;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public List<SetInfo> getSetInfoList() {
		return setInfoList;
	}

	public void setSetInfoList(List<SetInfo> setInfoList) {
		this.setInfoList = setInfoList;
	}

	
	
	
	
	
	
	
	
	
}
