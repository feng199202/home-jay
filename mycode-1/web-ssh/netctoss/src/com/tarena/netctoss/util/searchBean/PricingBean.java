package com.tarena.netctoss.util.searchBean;

public class PricingBean {
	/**
	 * 资费名称
	 */
	private String pricingBeanName;
	/**
	 * 基本费用下界
	 */
	private double baseFeeMin=-10;
	/**
	 * 基本费用上界
	 */
	private double baseFeeMax=1000;
	/**
	 * 月租费下界
	 */
	private double rateFeeMin=-1;
	/**
	 * 月租费上界
	 */
	private double rateFeeMax=1000;
	public String getPricingBeanName() {
		return pricingBeanName;
	}
	public void setPricingBeanName(String pricingBeanName) {
		this.pricingBeanName = pricingBeanName;
	}
	public double getBaseFeeMin() {
		return baseFeeMin;
	}
	public void setBaseFeeMin(double baseFeeMin) {
		this.baseFeeMin = baseFeeMin;
	}
	public double getBaseFeeMax() {
		return baseFeeMax;
	}
	public void setBaseFeeMax(double baseFeeMax) {
		this.baseFeeMax = baseFeeMax;
	}
	public double getRateFeeMin() {
		return rateFeeMin;
	}
	public void setRateFeeMin(double rateFeeMin) {
		this.rateFeeMin = rateFeeMin;
	}
	public double getRateFeeMax() {
		return rateFeeMax;
	}
	public void setRateFeeMax(double rateFeeMax) {
		this.rateFeeMax = rateFeeMax;
	}

}
