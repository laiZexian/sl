package com.sl.sys.dao;

import org.apache.ibatis.annotations.Param;

/**
 * 每日推荐人LDao层
 * @author Administrator
 *
 */
public interface RecommendLDao {
	/**
	 * 插入一条推荐数据
	 * @param userCode
	 * @param parentUser
	 * @return
	 */
	int insertRecommend(@Param("userCode")String userCode ,@Param("parentUser")String parentUser);
}
