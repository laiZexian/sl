package com.sl.sys.biz.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.ProductionBiz;
import com.sl.sys.dao.ProductionDao;
import com.sl.sys.entity.Pager;
import com.sl.sys.entity.Production;
@Service
public class ProductionBizImpl implements ProductionBiz {
	@Resource
	private ProductionDao productionDao;
	@Override
	public Pager<Production> queryProductions(Production p, int pageNo, int pageSize) {
		Pager<Production> pages =new Pager<Production>();
		pages.setCurrentPageNo(pageNo);
		pages.setPageSize(pageSize);
		Map<String, Object> map =new HashMap<String,Object>();
		map.put("proName", p.getProName());
		map.put("num", (pageNo-1)*pageSize);
		map.put("size", pageSize);
		pages.setTotalCount(productionDao.queryCountByPro(map));
		pages.setTotalPageCount((pages.getTotalCount()+pages.getPageSize()-1)/pages.getPageSize());
		pages.setList(productionDao.queryProductions(map));
		return pages;
	}

	@Override
	public Production queryProduction(Production p) {
		// TODO Auto-generated method stub
		return productionDao.queryProduction(p);
	}

	@Override
	public boolean addProduction(Production p) {
		// TODO Auto-generated method stub
		return productionDao.addProduction(p)>0;
	}

	@Override
	public boolean updateProduction(Production p) {
		// TODO Auto-generated method stub
		return productionDao.updateProduction(p)>0;
	}

	@Override
	public boolean delProduction(Production p) {
		// TODO Auto-generated method stub
		return productionDao.delProduction(p)>0;
	}

	@Override
	public boolean queryProductionInSet(Production p) {
		// TODO Auto-generated method stub
		return productionDao.queryProductionInSet(p)>0;
	}

	@Override
	public boolean updateProNum(Production p) {
		// TODO Auto-generated method stub
		return productionDao.updateProNum(p)>0;
	}

}
