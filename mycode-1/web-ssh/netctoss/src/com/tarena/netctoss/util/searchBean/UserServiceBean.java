package com.tarena.netctoss.util.searchBean;

public class UserServiceBean {
	private String accountName;
	private int serviceId;
	private int serviceStatus;
	private String labIp;

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public int getServiceId() {
		return serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	public int getServiceStatus() {
		return serviceStatus;
	}

	public void setServiceStatus(int serviceStatus) {
		this.serviceStatus = serviceStatus;
	}

	public String getLabIp() {
		return labIp;
	}

	public void setLabIp(String labIp) {
		this.labIp = labIp;
	}

	@Override
	public String toString() {
		return "UserServiceBean [accountName=" + accountName + ", serviceId="
				+ serviceId + ", serviceStatus=" + serviceStatus + ", labIp="
				+ labIp + "]";
	}

}
