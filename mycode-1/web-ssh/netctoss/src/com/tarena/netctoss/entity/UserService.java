package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户业务表
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class UserService implements Serializable {

	public UserService() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 服務ID
	 */
	private Integer serviceId;
	/**
	 * 映射User,关联userId
	 */
	private User user;
	/**
	 * 登陆服务时使用的服务名
	 */
	private String loginName;
	/**
	 * 密码
	 */
	private String loginPassword;
	/**
	 * 使用的实验室的Ip
	 */
	private String labIp;
	/**
	 * 服务状态,1正常,0暂停
	 */
	private Integer serviceStatus = 1;
	/**
	 * 映射pricing 关联pricing Id
	 */
	private Pricing pricing;
	/**
	 * 服务的开启时间
	 */
	private Date enrollDate;

	/**
	 * 服务的关闭时间
	 */
	private Date closeDate;

	public Integer getServiceId() {
		return serviceId;
	}

	public void setServiceId(Integer serviceId) {
		this.serviceId = serviceId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	public String getLabIp() {
		return labIp;
	}

	public void setLabIp(String labIp) {
		this.labIp = labIp;
	}

	public Integer getServiceStatus() {
		return serviceStatus;
	}

	public void setServiceStatus(Integer serviceStatus) {
		this.serviceStatus = serviceStatus;
	}

	public Pricing getPricing() {
		return pricing;
	}

	public void setPricing(Pricing pricing) {
		this.pricing = pricing;
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
/*
	@Override
	public String toString() {
		return "UserService [serviceId=" + serviceId + ", user=" + user
				+ ", loginName=" + loginName + ", loginPassword="
				+ loginPassword + ", labIp=" + labIp + ", serviceStatus="
				+ serviceStatus + ", pricing=" + pricing + ", enrollDate="
				+ enrollDate + ", closeDate=" + closeDate + "]";
	}*/

}
