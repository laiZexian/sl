package com.sl.sys.entity;

import java.util.Date;

/**
 * 资讯类
 * @author Administrator
 *
 */
public class Information {
	private int infoId;// '资讯id',
	private String title;// '标题',
	private String location;// '文件的路径',
	private double fileSize;// '文件的大小：单位：MB 这个在上传中通过读取文件的大小得到，不是自己手动输入',
	private int degree;// '下载的次数，创建时默认为0',
	private String content;// '内容（或者说明）',
	private int stutas;// '状态：发布：1；不发布：0',
	private Date modifyDate;//'修改时间（默认此字段为上传时的时间）',
	private String createCode;//  '发布人'
	private String fileType;//文件类型
	
	public Information() {}

	
	public String getFileType() {
		return fileType;
	}


	public void setFileType(String fileType) {
		this.fileType = fileType;
	}


	public int getInfoId() {
		return infoId;
	}


	public void setInfoId(int infoId) {
		this.infoId = infoId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public double getFileSize() {
		return fileSize;
	}


	public void setFileSize(double fileSize) {
		this.fileSize = fileSize;
	}


	public int getDegree() {
		return degree;
	}


	public void setDegree(int degree) {
		this.degree = degree;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getStutas() {
		return stutas;
	}


	public void setStutas(int stutas) {
		this.stutas = stutas;
	}


	public Date getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}


	public String getCreateCode() {
		return createCode;
	}


	public void setCreateCode(String createCode) {
		this.createCode = createCode;
	}
	
	
}
