package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 原始记录表实体类
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class Detail implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Detail() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 表单Id
	 */
	private Integer detailId;
	
	/**
	 * 用户名
	 */
	private String userName;
	
	/**
	 * 业务名
	 */
	
	private String serviceName;
	/**
	 * 登陆名
	 */
	private String loginName;
	/**
	 * 登陆时的主机Ip
	 */
	private String loginIp;

	/**
	 * 登陆系统时候的时间
	 */
	private Timestamp loginDate;
	/**
	 * 退出系统时的时间
	 */
	private Timestamp logoutDate;
	/**
	 * 实验室Ip
	 */
	private String labIp;

	/**
	 * 費用產生的年份
	 */
	private Integer year;

	/**
	 * 费用产生的月份
	 */
	private Integer month;

	/**
	 * 费用产生在哪一天
	 */
	private Integer day;

	/**
	 * 持续的时长
	 */
	private Long duration;
	/**
	 * 产生的费用
	 */
	private Double fee;
	/**
	 * 本月当前累计费用
	 */
	private Double monthCurrentFee;

	public Integer getDetailId() {
		return detailId;
	}

	public void setDetailId(Integer detailId) {
		this.detailId = detailId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public Timestamp getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(Timestamp loginDate) {
		this.loginDate = loginDate;
	}

	public Timestamp getLogoutDate() {
		return logoutDate;
	}

	public void setLogoutDate(Timestamp logoutDate) {
		this.logoutDate = logoutDate;
	}

	public String getLabIp() {
		return labIp;
	}

	public void setLabIp(String labIp) {
		this.labIp = labIp;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Long getDuration() {
		return duration;
	}

	public void setDuration(Long duration) {
		this.duration = duration;
	}

	public Double getFee() {
		return fee;
	}

	public void setFee(Double fee) {
		this.fee = fee;
	}

	public Double getMonthCurrentFee() {
		return monthCurrentFee;
	}

	public void setMonthCurrentFee(Double monthCurrentFee) {
		this.monthCurrentFee = monthCurrentFee;
	}

	

}
