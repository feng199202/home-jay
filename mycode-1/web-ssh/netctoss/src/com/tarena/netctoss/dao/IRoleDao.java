package com.tarena.netctoss.dao;

import java.util.List;

import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

public interface IRoleDao {
	
	/**
	 * 将传入的role 保存进数据库
	 * 
	 * @param role
	 * @return 成功添加该role 号,产生的roleId
	 */
	int addRole(Role role);

	/**
	 * 根据role 的id号,删除数据库中对应
	 * 
	 * @param role
	 * @return 成功影響的数据库行数
	 */
	int deleteRoleById(Role role);

	/**
	 * 根据传入role 的某些字段,查询数据库中匹配这些字段的数据
	 * 
	 * @param role
	 * @return 成功删除的数据库行数
	 */
	List<Role> listRoles(Role role,Page page);

	/**
	 * 将传入role 的信息更新到于该role 的id号相同的行
	 * 
	 * @param role
	 * @return 成功更新的数据库行数
	 */
	int updateRole(Role role);
	
	long countRows(Role role);
	
	Role findRoleById(Role role);
	/**
	 * 根据名字
	 * @param role
	 * @return
	 */
	Role findRoleByName(Role role);
}
