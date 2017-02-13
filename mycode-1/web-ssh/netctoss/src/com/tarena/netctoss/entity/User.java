package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 用户信息表
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class User implements Serializable {

	public User() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 用戶id
	 */
	private Integer userId;

	/**
	 * 用戶名真实姓名
	 */
	private String realName;

	/**
	 * 用户帐号名
	 */
	private String accountName;

	/**
	 * 密码
	 */
	private String password;

	/**
	 * 用户帐号状态,1是正常使用,0是停用
	 */

	private Integer accountStatus = 1;

	/**
	 * 用户联系电话
	 */
	private String userPhone;

	/**
	 * 用户联系Email
	 */
	private String userEmail;

	/**
	 * 帐号创建时间
	 */
	private Date enrollDate;
	/**
	 * 帐号关闭时间
	 */
	private Date closeDate;

	/**
	 * 支付类型
	 */
	private String paymentType;

	/**
	 * 工作
	 */
	private String career;

	/**
	 * 民族
	 */
	private String nationnality;
	/**
	 * 性别
	 */
	private byte gender;
	/**
	 * 所在公司
	 */
	private String company;
	/**
	 * 邮编
	 */
	private String zipCode;

	private Set<UserService> services = new HashSet<UserService>();

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getAccountStatus() {
		return accountStatus;
	}

	public void setAccountStatus(Integer accountStatus) {
		this.accountStatus = accountStatus;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getCloseDate() {
		return closeDate;
	}

	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getNationnality() {
		return nationnality;
	}

	public void setNationnality(String nationnality) {
		this.nationnality = nationnality;
	}

	public byte getGender() {
		return gender;
	}

	public void setGender(byte gender) {
		this.gender = gender;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Set<UserService> getServices() {
		return services;
	}

	public void setServices(Set<UserService> services) {
		this.services = services;
	}

	/*@Override
	public String toString() {
		return "User [userId=" + userId + ", realName=" + realName
				+ ", accountName=" + accountName + ", password=" + password
				+ ", accountStatus=" + accountStatus + ", userPhone="
				+ userPhone + ", userEmail=" + userEmail + ", enrollDate="
				+ enrollDate + ", closeDate=" + closeDate + ", paymentType="
				+ paymentType + ", career=" + career + ", nationnality="
				+ nationnality + ", gender=" + gender + ", company=" + company
				+ ", zipCode=" + zipCode + ", services=" + services + "]";
	}
*/
}
