package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.DictionaryBiz;
import com.sl.sys.dao.DictionaryDao;
import com.sl.sys.entity.Dictionary;
import com.sl.sys.entity.Pager;
@Service
public class DictionaryBizImpl implements DictionaryBiz {
	@Resource
	private DictionaryDao dictionaryDao; 
	@Override
	public Pager<Dictionary> queryDictionarys(Dictionary d, int pageNo, int pageSize) {
		Pager<Dictionary> pages =new Pager<Dictionary>();
		Map<String, Object>map =new HashMap<String,Object>();
		map.put("dicType", d.getDicType());
		map.put("num",(pageNo-1)*pageSize);
		map.put("size",pageSize);
		pages.setCurrentPageNo(pageNo);
		pages.setPageSize(pageSize);
		pages.setTotalCount(dictionaryDao.queryCount(map));
		pages.setTotalPageCount((pages.getTotalCount()+pages.getPageSize()-1)/pages.getPageSize());
		pages.setList(dictionaryDao.queryDictionarys(map));
		return pages;
	}

	@Override
	public Dictionary queryDictionary(Dictionary d) {
		// TODO Auto-generated method stub
		return dictionaryDao.queryDictionary(d);
	}

	@Override
	public boolean addDictionary(Dictionary d) {
		// TODO Auto-generated method stub
		return dictionaryDao.addDictionary(d)>0;
	}

	@Override
	public boolean delDictionary(Dictionary d) {
		// TODO Auto-generated method stub
		return dictionaryDao.delDictionary(d)>0;
	}

	@Override
	public boolean updateDictionary(Dictionary d) {
		// TODO Auto-generated method stub
		return dictionaryDao.updateDictionary(d)>0;
	}

	@Override
	public List<Dictionary> queryType(Dictionary d) {
		// TODO Auto-generated method stub
		return dictionaryDao.queryType(d);
	}

}
