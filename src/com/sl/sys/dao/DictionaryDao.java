package com.sl.sys.dao;

import java.util.List;
import java.util.Map;

import com.sl.sys.entity.Dictionary;

public interface DictionaryDao {
	/**
	 * 获得数据字典信息
	 * @param map
	 * @return
	 */
	List<Dictionary> queryDictionarys(Map<String, Object> map);
	
	
	/**
	 * 获得单个的数据字典的信息
	 * @param d
	 * @return
	 */
	Dictionary queryDictionary(Dictionary d);
	/**
	 * 获得数据字典的个数
	 * @param map
	 * @return
	 */
	int queryCount(Map<String, Object> map);
	/**
	 * 增加数据字典信息
	 * @param d
	 * @return
	 */
	int addDictionary(Dictionary d);
	/**
	 * 删除数据字典的信息
	 * @param d
	 * @return
	 */
	int delDictionary(Dictionary d);
	/**
	 * 修改数据字典信息
	 * @param d
	 * @return
	 */
	int updateDictionary(Dictionary d);
	/**
	 * 获得某个类型的数据字典
	 * @param d
	 * @return
	 */
	List<Dictionary> queryType(Dictionary d);
}
