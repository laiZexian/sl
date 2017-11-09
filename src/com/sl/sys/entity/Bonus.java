package com.sl.sys.entity;

import java.util.Date;

/**
 * 奖金明细表类
 * @author Administrator
 *
 */
public class Bonus {
	private int bonusId;// '奖金明细流水号',
	private Date bonusDate;// '产生时间',
	private double bonusMoney;// '奖金',
	private String createCode;// '获得奖金人',
	private int bonusType;//'奖金明细类型: 推荐奖:1,安置奖:2,对碰奖:3 ,积分消费奖:4'
	
	/**
	 * 无参构造方法
	 */
	public Bonus() {}

	public int getBonusId() {
		return bonusId;
	}

	public void setBonusId(int bonusId) {
		this.bonusId = bonusId;
	}

	public Date getBonusDate() {
		return bonusDate;
	}

	public void setBonusDate(Date bonusDate) {
		this.bonusDate = bonusDate;
	}

	public double getBonusMoney() {
		return bonusMoney;
	}

	public void setBonusMoney(double bonusMoney) {
		this.bonusMoney = bonusMoney;
	}

	public String getCreateCode() {
		return createCode;
	}

	public void setCreateCode(String createCode) {
		this.createCode = createCode;
	}

	public int getBonusType() {
		return bonusType;
	}

	public void setBonusType(int bonusType) {
		this.bonusType = bonusType;
	}
	
	

}
