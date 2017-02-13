package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 系統模块
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class SystemModule implements Serializable {

	public SystemModule() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 系统模块Id
	 */
	private Integer systemModuleId;

	/**
	 * 模块名
	 */
	private String systemModuleName;
	/**
	 * 模块Url 地址
	 */
	private String url;

	private Set<Right> rights = new HashSet<Right>();

	public Integer getSystemModuleId() {
		return systemModuleId;
	}

	public void setSystemModuleId(Integer systemModuleId) {
		this.systemModuleId = systemModuleId;
	}

	public String getSystemModuleName() {
		return systemModuleName;
	}

	public void setSystemModuleName(String systemModuleName) {
		this.systemModuleName = systemModuleName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Set<Right> getRights() {
		return rights;
	}

	public void setRights(Set<Right> rights) {
		this.rights = rights;
	}


}
