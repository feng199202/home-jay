package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 权限表
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class Right implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Right() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * 权限ID
	 */
	private Integer rightId;
	/**
	 * 权限名
	 */
	private String rightName;
	/**
	 * 权限对应的URL
	 */
	private String url;

	/**
	 * 映射systemModule
	 */
	private SystemModule systemModule;

	/**
	 * 映射operation
	 */

	/**
	 * 一个权限可以对应多个角色
	 */
	private Set<Role> roles = new HashSet<Role>();

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Integer getRightId() {
		return rightId;
	}

	public void setRightId(Integer rightId) {
		this.rightId = rightId;
	}

	public String getRightName() {
		return rightName;
	}

	public void setRightName(String rightName) {
		this.rightName = rightName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public SystemModule getSystemModule() {
		return systemModule;
	}

	public void setSystemModule(SystemModule systemModule) {
		this.systemModule = systemModule;
	}

	/*
	 * public Set<Operation> getOperations() { return operations; }
	 * 
	 * public void setOperations(Set<Operation> operations) { this.operations =
	 * operations; }
	 */

	/*@Override
	public String toString() {
		return "Right [rightId=" + rightId + ", rightName=" + rightName
				+ ", url=" + url + ", systemModule=" + systemModule
				+ ", roles=" + roles + "]";
	}*/

}
