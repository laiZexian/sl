package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.Fmt;

public interface FmtBiz {
	/**
	 * 根据模糊查询匹配的功能
	 * @param f
	 * @return
	 */
	List<Fmt> queryFmts(Fmt f);
}
