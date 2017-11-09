package com.sl.sys.biz;



import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Parameters;

public interface ParametersBiz {
	/**
	 * 获得参数列表
	 * @param map
	 * @return
	 */
	Pager<Parameters> queryParameters(Parameters p,int pageSize,int pageNo);
	
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
	boolean delParameters(Parameters p);
	/**
	 * 添加参数信息
	 * @param p
	 * @return
	 */
	boolean addParameters(Parameters p);
	/**
	 * 修改参数信息
	 * @param p
	 * @return
	 */
	boolean updateParameters(Parameters p);
}
