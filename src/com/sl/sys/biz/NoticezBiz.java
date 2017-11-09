package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.Notice;

public interface NoticezBiz {
	/**
	 * 查询所有标题和时间
	 * @return
	 */
	List<Notice> queryNotices();
	/**
	 * 查询单个
	 * @param n
	 * @return
	 */
	Notice queryNotice(Notice n);

	/**
	 * 增加
	 * @param n
	 * @return
	 */
	boolean saveNotice(Notice n);
	/**
	 * 删除
	 * @param n
	 * @return
	 */
	boolean deleteNotice(Notice n);
	/**
	 * 修改
	 * @param n
	 * @return
	 */
	boolean updateNotice(Notice n);
}
