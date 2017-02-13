package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 资费信息表
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class Pricing implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Pricing() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 资费Id
	 */
	private Integer pricingId;
	/**
	 * 资费名
	 */
	private String pricingName;
	

	/**
	 * 基本费用
	 */
	private Double baseFee;
	/**
	 * 月租费
	 */
	private Double rateFee;
	/**
	 * 资费描述
	 */
	private String description;
	/**
	 * 一个资费类型可以对应多个业务
	 */
	private Set<UserService> services = new HashSet<UserService>();

	public Integer getPricingId() {
		return pricingId;
	}

	public void setPricingId(Integer pricingId) {
		this.pricingId = pricingId;
	}

	public String getPricingName() {
		return pricingName;
	}

	public void setPricingName(String pricingName) {
		this.pricingName = pricingName;
	}

	public Double getBaseFee() {
		return baseFee;
	}

	public void setBaseFee(Double baseFee) {
		this.baseFee = baseFee;
	}

	public Double getRateFee() {
		return rateFee;
	}

	public void setRateFee(Double rateFee) {
		this.rateFee = rateFee;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<UserService> getServices() {
		return services;
	}

	public void setServices(Set<UserService> services) {
		this.services = services;
	}

	/*@Override
	public String toString() {
		return "Pricing [pricingId=" + pricingId + ", pricingName="
				+ pricingName + ", baseFee=" + baseFee + ", rateFee=" + rateFee
				+ ", description=" + description + "]";
	}*/

}
