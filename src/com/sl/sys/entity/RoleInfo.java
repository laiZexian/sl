package com.sl.sys.entity;

public class RoleInfo {
	private int rlId;// 'id',
	private String roleId;//  '角色id',
	private int fmtId;// '功能id',
	private int stutas;// '是否具有此功能'
	
	private Fmt fmt;
	
	
	public Fmt getFmt() {
		return fmt;
	}


	public void setFmt(Fmt fmt) {
		this.fmt = fmt;
	}


	public RoleInfo() {}


	public int getRlId() {
		return rlId;
	}


	public void setRlId(int rlId) {
		this.rlId = rlId;
	}


	public String getRoleId() {
		return roleId;
	}


	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}


	public int getFmtId() {
		return fmtId;
	}


	public void setFmtId(int fmtId) {
		this.fmtId = fmtId;
	}


	public int getStutas() {
		return stutas;
	}


	public void setStutas(int stutas) {
		this.stutas = stutas;
	}
	
	
}
