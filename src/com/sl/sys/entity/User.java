package com.sl.sys.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;





/**
 *用户表
 * @author Administrator
 *
 */
public class User {
	 private String userCode;//  '用户名',
	 private String realName;// '姓名',
	 private String logPwd;//  '登录密码',
	 private String secPwd;//  '二级密码',
	 private String roleId;//  '角色id 外键',
	 private int member;//  '会员类型。如果角色为管理员此字段为空========》这里要到数据字典获得对应的字段',
	 private int cardType;//  '证件类型====>这里要到数据字典获得对应的字段',
	 private String cardNo;//  '证件号码',
	 private int country;// '收货国家======>这里要到数据字典获得对应的字段',
	 private String telephone;//'移动电话',
	 private String phone;//'联系电话',
	 private String email;// '电子邮箱',
	 private String postCode;// '邮政编码',
	 private String address;// '收货地址',
	 private int bank;//  '开户行（银行）=======>这里要到数据字典获得对应的字段',
	 private String bankNo;// '开户卡号',
	 private String bankUser;//  '开户人',
	 private String idcardPicFron;//  '上传身份证正面图片',
	 private String idcardPicRev;//  '上传身份证反面图片',
	 private String bankCardPic;//  '上传银行卡的图片',
	 private String createCode;// '推荐人',
	 private int userStutas;//'状态：0：禁用，1：启用',
	 @DateTimeFormat(pattern="yyyy-MM-dd")
	 private Date createDate;//  '申请时间（注册时间）',
	 @DateTimeFormat(pattern="yyyy-MM-dd")
	 private Date modifyDate;//  '最后修改的时间',
	 
	 
	 private Role role;//角色集合
	 
	 public User() {
		
	 }

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getLogPwd() {
		return logPwd;
	}

	public void setLogPwd(String logPwd) {
		this.logPwd = logPwd;
	}

	public String getSecPwd() {
		return secPwd;
	}

	public void setSecPwd(String secPwd) {
		this.secPwd = secPwd;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	public int getMember() {
		return member;
	}

	public void setMember(int member) {
		this.member = member;
	}

	public int getCardType() {
		return cardType;
	}

	public void setCardType(int cardType) {
		this.cardType = cardType;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public int getCountry() {
		return country;
	}

	public void setCountry(int country) {
		this.country = country;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getBank() {
		return bank;
	}

	public void setBank(int bank) {
		this.bank = bank;
	}

	public String getBankNo() {
		return bankNo;
	}

	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}

	public String getBankUser() {
		return bankUser;
	}

	public void setBankUser(String bankUser) {
		this.bankUser = bankUser;
	}

	public String getIdcardPicFron() {
		return idcardPicFron;
	}

	public void setIdcardPicFron(String idcardPicFron) {
		this.idcardPicFron = idcardPicFron;
	}

	public String getIdcardPicRev() {
		return idcardPicRev;
	}

	public void setIdcardPicRev(String idcardPicRev) {
		this.idcardPicRev = idcardPicRev;
	}

	public String getBankCardPic() {
		return bankCardPic;
	}

	public void setBankCardPic(String bankCardPic) {
		this.bankCardPic = bankCardPic;
	}

	public String getCreateCode() {
		return createCode;
	}

	public void setCreateCode(String createCode) {
		this.createCode = createCode;
	}

	public int getUserStutas() {
		return userStutas;
	}

	public void setUserStutas(int userStutas) {
		this.userStutas = userStutas;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	 
	 
	 
 
	 
}
