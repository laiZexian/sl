package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.Dictionary;

public interface DictionaryqDao {

	/**
	 * 根据类型查询字典相关数据
	 * @param dicType
	 * @return
	 */
	List<Dictionary> queryDictionaryOfType(String dicType);
	
}
