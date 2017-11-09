package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.ParametersBiz;
import com.sl.sys.dao.ParametersDao;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Parameters;
@Service
public class ParametersBizImpl implements ParametersBiz {
	@Resource
	private ParametersDao parametersDao;
	@Override
	public Pager<Parameters> queryParameters(Parameters p, int pageSize, int pageNo) {
		Pager<Parameters> pages =new Pager<Parameters>();
		pages.setCurrentPageNo(pageNo);
		pages.setPageSize(pageSize);
		Map<String, Object> map =new HashMap<String,Object>();
		map.put("paraName",p.getParaName());
		map.put("num",(pageNo-1)*pageSize);
		map.put("size",pageSize);
		pages.setTotalCount(parametersDao.queryCountParam(map));
		pages.setTotalPageCount((pages.getTotalCount()+pages.getPageSize()-1)/pageSize);
		pages.setList(parametersDao.queryParameters(map));
		return pages;
	}

	@Override
	public Parameters queryParameter(Parameters p) {
		// TODO Auto-generated method stub
		return parametersDao.queryParameter(p);
	}

	@Override
	public boolean delParameters(Parameters p) {
		// TODO Auto-generated method stub
		return parametersDao.delParameters(p)>0;
	}

	@Override
	public boolean addParameters(Parameters p) {
		// TODO Auto-generated method stub
		return parametersDao.addParameters(p)>0;
	}

	@Override
	public boolean updateParameters(Parameters p) {
		// TODO Auto-generated method stub
		return parametersDao.updateParameters(p)>0;
	}

}
