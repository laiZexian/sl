package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.Comments;

public interface CommentszBiz {
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
	boolean deleteComments (Comments c);
}
