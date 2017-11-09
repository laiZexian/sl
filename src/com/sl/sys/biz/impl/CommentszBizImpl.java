package com.sl.sys.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sl.sys.biz.CommentszBiz;
import com.sl.sys.dao.CommentszDao;
import com.sl.sys.dao.InformationzDao;
import com.sl.sys.entity.Comments;
@Service
public class CommentszBizImpl implements CommentszBiz {
	@Resource
	private CommentszDao commentszDao;
	@Override
	public List<Comments> queryCommentss() {
		// TODO Auto-generated method stub
		return commentszDao.queryCommentss();
	}

	@Override
	public Comments queryComments(Comments c) {
		// TODO Auto-generated method stub
		return commentszDao.queryComments(c);
	}

	@Override
	public boolean deleteComments(Comments c) {
		// TODO Auto-generated method stub
		return commentszDao.deleteComments(c)>0;
	}
	
}
