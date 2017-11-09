package com.sl.sys.biz;

import org.apache.ibatis.annotations.Param;

/**
 * 每日推荐人LBiz层
 * @author Administrator
 *
 */
public interface RecommendLBiz {
	/**
	 * 插入一条推荐数据
	 * @param userCode
	 * @param parentUser
	 * @return
	 */
	boolean insertRecommend(@Param("userCode")String userCode ,@Param("parentUser")String parentUser);
}
