package com.tarena.netctoss.entity;

import java.io.Serializable;

import java.util.Date;

/**
 * 管理员表
 * 
 * @author LiuCunhui@gmail.com
 * 
 */

public class Admin implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Admin() {
	}

	/**
	 * 管理员Id
	 */
	private Integer adminId;

	/**
	 * 管理员真实名字
	 */
	private String realName;

	/**
	 * 管理员登陆用的帐号名
	 */

	private String accountName;

	/**
	 * 登陆密码
	 */
	private String password;

	/**
	 * 管理员的联系电话
	 */
	private String adminPhone;
	/**
	 * 管理员联系邮箱
	 */
	private String adminEmail;

	/**
	 * 添加该管理员时候的时间
	 */
	private Date enrollDate;

	/**
	 * 管理员于角色之间的关系是多对一的关系
	 */

	private Role role;

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
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

	public String getAdminPhone() {
		return adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}



}
