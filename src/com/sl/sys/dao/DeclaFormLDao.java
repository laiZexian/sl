package com.sl.sys.dao;

import java.util.List;
import com.sl.sys.entity.DeclaForm;
/**
 * 报单Dao接口
 * @author Administrator
 *
 */
public interface DeclaFormLDao {
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
	int updateDeclaForm(DeclaForm userCode);
	
}
