package com.sl.sys.dao;

import java.util.List;

import com.sl.sys.entity.Fmt;

public interface FmtDao {
	/**
	 * 根据模糊查询匹配的功能
	 * @param f
	 * @return
	 */
	List<Fmt> queryFmts(Fmt f);
}
