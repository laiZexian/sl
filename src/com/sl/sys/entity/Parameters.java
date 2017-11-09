package com.sl.sys.entity;
/**
 * 基础信息类
 * @author Administrator
 *
 */
public class Parameters {
	private String paraCode;// '参数编码',
	private String paraName;// '参数关键字',
	private int paraValue;//'参数值',
	private String paraSpec;// '参数描述'
	
	/**
	 * 无参构造函数
	 */
	public Parameters() {}

	public String getParaCode() {
		return paraCode;
	}

	public void setParaCode(String paraCode) {
		this.paraCode = paraCode;
	}

	public String getParaName() {
		return paraName;
	}

	public void setParaName(String paraName) {
		this.paraName = paraName;
	}

	public int getParaValue() {
		return paraValue;
	}

	public void setParaValue(int paraValue) {
		this.paraValue = paraValue;
	}

	public String getParaSpec() {
		return paraSpec;
	}

	public void setParaSpec(String paraSpec) {
		this.paraSpec = paraSpec;
	}
	
	
}
