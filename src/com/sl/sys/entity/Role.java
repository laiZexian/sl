package com.sl.sys.entity;

import java.util.Date;

import java.util.Map;

/**
 * 角色类
 * @author Administrator
 *
 */
public class Role {
	private String roleId;//  '角色编号',
	private String roleName;// '角色名称',
	private String userCode;//  '创建人',
	private int roleStutas;// '状态：0：禁用，1：启用',
	private Date modifyDate;// '最后修改的时间'
	
	
	private Map<String, RoleInfo> roleInfo;
	
	
	
	
	
	

	public Map<String, RoleInfo> getRoleInfo() {
		return roleInfo;
	}

	public void setRoleInfo(Map<String, RoleInfo> roleInfo) {
		this.roleInfo = roleInfo;
	}

	/**
	 * 无参构造函数
	 */
	public Role() {
		
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public int getRoleStutas() {
		return roleStutas;
	}

	public void setRoleStutas(int roleStutas) {
		this.roleStutas = roleStutas;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	
	
}
