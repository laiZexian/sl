package com.sl.sys.entity;

import java.util.Date;

/**
 * 留言类
 * @author Administrator
 *
 */
public class Comments {
	private int cmId;// '留言id',
	private String createCode;// '留言人',
	private String cmContent;// '留言内容',
	private Date createDate;//'留言时间',
	private String replyContent;//'回复内容',
	private String replyCode;//'回复人：在系统中应该为管理员',
	private Date replyDate;//'回复时间',
	private int stutas;// 状态：默认0： 尚未回复；回复：1'
	
	
	public Comments() {
		
		
	}


	public int getCmId() {
		return cmId;
	}


	public void setCmId(int cmId) {
		this.cmId = cmId;
	}


	public String getCreateCode() {
		return createCode;
	}


	public void setCreateCode(String createCode) {
		this.createCode = createCode;
	}


	public String getCmContent() {
		return cmContent;
	}


	public void setCmContent(String cmContent) {
		this.cmContent = cmContent;
	}


	public Date getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public String getReplyContent() {
		return replyContent;
	}


	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}


	public String getReplyCode() {
		return replyCode;
	}


	public void setReplyCode(String replyCode) {
		this.replyCode = replyCode;
	}


	public Date getReplyDate() {
		return replyDate;
	}


	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}


	public int getStutas() {
		return stutas;
	}


	public void setStutas(int stutas) {
		this.stutas = stutas;
	}
	
	
}
