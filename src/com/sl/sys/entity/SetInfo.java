package com.sl.sys.entity;
/**
 * 套餐里的商品详情表
 * @author Administrator
 *
 */
public class SetInfo {
	private int infoId;//  '套餐详细表id',
	private String setId;//'套餐编号 外键',
	private String proId;//'商品编号 外键',
	private int proNum;// '商品数量'
	
	private Production pro;//商品的对象
	
	/**
	 * 无参构造函数
	 */
	public SetInfo(){}

	public int getInfoId() {
		return infoId;
	}

	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}

	public String getSetId() {
		return setId;
	}

	public void setSetId(String setId) {
		this.setId = setId;
	}

	public String getProId() {
		return proId;
	}

	public void setProId(String proId) {
		this.proId = proId;
	}

	public int getProNum() {
		return proNum;
	}

	public void setProNum(int proNum) {
		this.proNum = proNum;
	}

	public Production getPro() {
		return pro;
	}

	public void setPro(Production pro) {
		this.pro = pro;
	}
	
	
	
	
}
