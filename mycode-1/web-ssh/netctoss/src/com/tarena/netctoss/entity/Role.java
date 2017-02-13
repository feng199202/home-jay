package com.tarena.netctoss.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 角色表
 * 
 * @author LiuCunhui@gmail.com
 * 
 */
public class Role implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Role() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * 角色Id
	 */
	private Integer roleId;

	/**
	 * 角色名
	 */

	private String roleName;

	/**
	 * 一个角色可以对应多个管理员
	 */
	private Set<Admin> admins = new HashSet<Admin>();
	/**
	 * 一个角色可以有多个权限
	 */
	private Set<Right> rights = new HashSet<Right>();

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Set<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(Set<Admin> admins) {
		this.admins = admins;
	}

	public Set<Right> getRights() {
		return rights;
	}

	public void setRights(Set<Right> rights) {
		this.rights = rights;
	}
/*
	*//**
	 * 重载toString,便于调试
	 *//*
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + "]";
	}
*/
}
