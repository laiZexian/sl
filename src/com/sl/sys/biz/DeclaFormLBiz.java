package com.sl.sys.biz;

import java.util.List;

import com.sl.sys.entity.DeclaForm;
/**
 * 报单Biz接口
 * @author Administrator
 *
 */
public interface DeclaFormLBiz {
	/**
	 * 根据用户名查询报单
	 * @param id
	 * @return
	 */
	DeclaForm showById(String userCode);
	
	/**
	 * 修改报单
	 * @param id
	 * @return
	 */
	boolean updateDeclaForm(DeclaForm userCode);
}
