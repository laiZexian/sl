package com.sl.sys.entity;
/**
 * 字典类
 * @author Administrator
 *
 */
public class Dictionary {
	private String dicCode;// '编码',
	private String dicType;// '类型',
	private String dicName;// '名称',
	private int dicValue;// '数据值',
	private String dicSpec;// '描述'
	
	/**
	 * 无参构造函数
	 */
	public Dictionary() {
		
		
	}

	public String getDicCode() {
		return dicCode;
	}

	public void setDicCode(String dicCode) {
		this.dicCode = dicCode;
	}

	public String getDicType() {
		return dicType;
	}

	public void setDicType(String dicType) {
		this.dicType = dicType;
	}

	public String getDicName() {
		return dicName;
	}

	public void setDicName(String dicName) {
		this.dicName = dicName;
	}

	public int getDicValue() {
		return dicValue;
	}

	public void setDicValue(int dicValue) {
		this.dicValue = dicValue;
	}

	public String getDicSpec() {
		return dicSpec;
	}

	public void setDicSpec(String dicSpec) {
		this.dicSpec = dicSpec;
	}
	
	
}
