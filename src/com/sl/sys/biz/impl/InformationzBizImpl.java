package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.InformationzBiz;
import com.sl.sys.dao.InformationzDao;
import com.sl.sys.dao.NoticezDao;
import com.sl.sys.entity.Information;

@Service
public class InformationzBizImpl implements InformationzBiz {
	@Resource
	private InformationzDao informationDao;

	@Override
	public List<Information> queryInformations() {
		// TODO Auto-generated method stub
		return informationDao.queryInformations();
	}

	@Override
	public Information queryInformation(Information i) {
		// TODO Auto-generated method stub
		return informationDao.queryInformation(i);
	}

	@Override
	public boolean saveInformation(Information i) {
		// TODO Auto-generated method stub
		return informationDao.saveInformation(i)>0;
	}

	@Override
	public boolean deleteInformation(Information i) {
		// TODO Auto-generated method stub
		return informationDao.deleteInformation(i)>0;
	}

	@Override
	public boolean updateInformation(Information i) {
		// TODO Auto-generated method stub
		return informationDao.updateInformation(i)>0;
	}

}
