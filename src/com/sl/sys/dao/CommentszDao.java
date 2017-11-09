package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.Comments;
import com.sl.sys.entity.Information;

public interface CommentszDao {
	/**
	 * 查询所有
	 * @return
	 */
	List<Comments> queryCommentss();
	/**
	 * 根据条件查询
	 * @param i
	 * @return
	 */
	Comments queryComments(Comments c);
	/**
	 * 删除
	 * @param i
	 * @return
	 */
	int deleteComments (Comments c);

}
