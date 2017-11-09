package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.FmtBiz;
import com.sl.sys.dao.FmtDao;
import com.sl.sys.entity.Fmt;
@Service
public class FmtBizImpl implements FmtBiz {
	@Resource
	private FmtDao fmtDao;
	@Override
	public List<Fmt> queryFmts(Fmt f) {
		// TODO Auto-generated method stub
		return fmtDao.queryFmts(f);
	}

}
