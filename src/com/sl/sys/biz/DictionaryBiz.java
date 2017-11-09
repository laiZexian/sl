package com.sl.sys.biz;




import java.util.List;

import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;

public interface DictionaryBiz {
	/**
	 * 分页获得数据字典信息
	 * @param d
	 * @param pageNo
	 * @param pageSize
	 * @return
	 */
	Pager<Dictionary> queryDictionarys(Dictionary d,int pageNo,int pageSize);
	
	
	/**
	 * 获得单条的数据字典对象
	 * @param d
	 * @return
	 */
	Dictionary queryDictionary(Dictionary d);
	/**
	 * 添加数据字典对象
	 * @param d
	 * @return
	 */
	boolean addDictionary(Dictionary d);
	/**
	 * 删除数据字典的信息
	 * @param d
	 * @return
	 */
	boolean delDictionary(Dictionary d);
	/**
	 * 修改数据字典信息
	 * @param d
	 * @return
	 */
	boolean updateDictionary(Dictionary d);
	/**
	 * 获得某个类型的数据字典
	 * @param d
	 * @return
	 */
	List<Dictionary> queryType(Dictionary d);
}
