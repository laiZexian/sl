package com.sl.sys.entity;

import java.util.Date;

/**
 * 推荐人的记录
 * @author Administrator
 *
 */
public class Recommend {
	private int recoId;// '推荐记录',
	private String userCode;// '被推荐人',
	private String parentUser;// '推荐人',
	private Date createTime;// '日期'
	
	public Recommend() {}

	public int getRecoId() {
		return recoId;
	}

	public void setRecoId(int recoId) {
		this.recoId = recoId;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getParentUser() {
		return parentUser;
	}

	public void setParentUser(String parentUser) {
		this.parentUser = parentUser;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
	
	
	
}
