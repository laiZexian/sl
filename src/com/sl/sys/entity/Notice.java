package com.sl.sys.entity;

import java.util.Date;

/**
 * 公告类
 * @author Administrator
 *
 */
public class Notice {
	private int noId;// '公告id',
	private String noTitle;//  '标题',
	private Date startTime;//'公告开始的时间',
	private Date endTime;// '公告的结束的时间',
	private String  noContent;// '公告的内容',
	private String createCode;// '发布人',
	private Date createDate;// '创建的时间'
	
	/**
	 * 无参构造函数
	 */
	public Notice() {
		
	}

	public int getNoId() {
		return noId;
	}

	public void setNoId(int noId) {
		this.noId = noId;
	}

	public String getNoTitle() {
		return noTitle;
	}

	public void setNoTitle(String noTitle) {
		this.noTitle = noTitle;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getNoContent() {
		return noContent;
	}

	public void setNoContent(String noContent) {
		this.noContent = noContent;
	}

	public String getCreateCode() {
		return createCode;
	}

	public void setCreateCode(String createCode) {
		this.createCode = createCode;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
}
