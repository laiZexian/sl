package com.sl.sys.entity;
/**
 * 推荐人与被推荐人的关系表及所在的区域
 * @author Administrator
 *
 */
public class UserRelaction {
	private int reId;// '关系表id',
	private String userCode;// '被推荐人',
	private String parentUser;// '推荐人',
	private int eara;// '1:代表左,2:代表右'
	
	public UserRelaction() {}

	public int getReId() {
		return reId;
	}

	public void setReId(int reId) {
		this.reId = reId;
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

	public int getEara() {
		return eara;
	}

	public void setEara(int eara) {
		this.eara = eara;
	}
	
	
}
