package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.NoticezBiz;
import com.sl.sys.dao.NoticezDao;
import com.sl.sys.entity.Notice;

@Service
public class NoticezBizImpl implements NoticezBiz {
	@Resource 
	private NoticezDao noticezDao;
	@Override
	public List<Notice> queryNotices() {
		// TODO Auto-generated method stub
		return noticezDao.queryNotices();
	}

	@Override
	public Notice queryNotice(Notice n) {
		// TODO Auto-generated method stub
		return noticezDao.queryNotice(n);
	}

	@Override
	public boolean saveNotice(Notice n) {
		// TODO Auto-generated method stub
		return noticezDao.saveNotice(n)>0;
	}

	@Override
	public boolean deleteNotice(Notice n) {
		// TODO Auto-generated method stub
		return noticezDao.deleteNotice(n)>0;
	}

	@Override
	public boolean updateNotice(Notice n) {
		// TODO Auto-generated method stub
		return noticezDao.updateNotice(n)>0;
	}
	
}
