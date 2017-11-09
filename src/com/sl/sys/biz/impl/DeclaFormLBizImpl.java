package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.DeclaFormLBiz;
import com.sl.sys.dao.DeclaFormLDao;
import com.sl.sys.entity.DeclaForm;
@Service
public class DeclaFormLBizImpl implements DeclaFormLBiz {
	@Resource
	private DeclaFormLDao declaFormLDao = null;
	

	@Override
	public DeclaForm showById(String userCode) {
		// TODO Auto-generated method stub
		return declaFormLDao.showById(userCode);
	}

	@Override
	public boolean updateDeclaForm(DeclaForm userCode) {
		// TODO Auto-generated method stub
		return declaFormLDao.updateDeclaForm(userCode)>0;
	}

}
