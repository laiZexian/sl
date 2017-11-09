package com.sl.sys.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页
 * @author Administrator
 *
 */
public class Pager<T> {
	private int currentPageNo;//当前页数
	private int pageSize;//每页行数
	private int totalCount;//总行数
	private int totalPageCount;//总页数	
	private List<T> list =new ArrayList<T>();//所存的对象集合
	public int getCurrentPageNo() {
		return currentPageNo;
	}
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
	
	
}
