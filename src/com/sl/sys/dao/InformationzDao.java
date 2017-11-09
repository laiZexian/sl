package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.Information;

public interface  InformationzDao {
	/**
	 * 查询所有
	 * @return
	 */
	List<Information> queryInformations();

	/**
	 * 根据条件查询
	 * @param i
	 * @return
	 */
	Information queryInformation(Information i);
	
	/**
	 * 增加
	 * @param i
	 * @return
	 */
	int saveInformation (Information i);
	/**
	 * 删除
	 * @param i
	 * @return
	 */
	int deleteInformation (Information i);
	/**
	 * 修改
	 */
	int updateInformation (Information i);
}
