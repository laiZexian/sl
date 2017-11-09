package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.Notice;

public interface NoticezDao {
	/**
	 * 查询所有的标题和时间
	 */
	List<Notice> queryNotices();
	/**
	 *查询单个
	 */
	Notice queryNotice(Notice n);
	/**
	 * 增加
	 * @param n
	 * @return
	 */
	int saveNotice(Notice n);
	/**
	 * 删除
	 * @param t
	 * @return
	 */
	int deleteNotice(Notice n);
	/**
	 * 修改
	 */
	int updateNotice(Notice n);
}
