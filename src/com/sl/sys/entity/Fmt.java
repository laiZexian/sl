package com.sl.sys.entity;
/**
 * 功能类
 * @author Administrator
 *
 */
public class Fmt {
	private int fmtId;// '功能id',
	private String fmtName;// '功能名称',
	private String fmtUrl;// 'url'
	
	public Fmt() {}

	public int getFmtId() {
		return fmtId;
	}

	public void setFmtId(int fmtId) {
		this.fmtId = fmtId;
	}

	public String getFmtName() {
		return fmtName;
	}

	public void setFmtName(String fmtName) {
		this.fmtName = fmtName;
	}

	public String getFmtUrl() {
		return fmtUrl;
	}

	public void setFmtUrl(String fmtUrl) {
		this.fmtUrl = fmtUrl;
	}
	
	
}
