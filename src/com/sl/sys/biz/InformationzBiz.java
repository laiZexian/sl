package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.Information;
import com.sl.sys.entity.Notice;

public interface InformationzBiz {
	/**
	 * 查询所有标题和时间
	 * @return
	 */
	List<Information> queryInformations();
	/**
	 * 查询单个
	 * @param i
	 * @return
	 */
	Information queryInformation(Information i);

	/**
	 * 增加
	 * @param i
	 * @return
	 */
	boolean saveInformation(Information i);
	/**
	 * 删除
	 * @param i
	 * @return
	 */
	boolean deleteInformation(Information i);
	/**
	 * 修改
	 * @param i
	 * @return
	 */
	boolean updateInformation(Information i);
}
