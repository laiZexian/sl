package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.Parameters;

public interface ParametersDao {
	/**
	 * 获得参数列表
	 * @param map
	 * @return
	 */
	List<Parameters> queryParameters(Map<String, Object>map);
	/**
	 * 获得参数信息的个数
	 * @param map
	 * @return
	 */
	int queryCountParam(Map<String, Object>map);
	/**
	 * 获得单一的参数信息
	 * @param p
	 * @return
	 */
	Parameters queryParameter(Parameters p);
	/**
	 *删除单条信息
	 * @param p
	 * @return
	 */
	int delParameters(Parameters p);
	/**
	 * 添加参数信息
	 * @param p
	 * @return
	 */
	int addParameters(Parameters p);
	/**
	 * 修改参数信息
	 * @param p
	 * @return
	 */
	int updateParameters(Parameters p);
}
