package com.tarena.netctoss.biz;

import java.util.List;

import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

public interface IRoleServ {
	/**
	 *  如果传入的role不为空,且roleName也不为空,则模糊匹配roleName 的Role
	 *  如果传入的role为空,或者名字为空,则列出取出所有的Role
	 * @param role
	 * @return
	 */
	List<Role> listRoles(Role role,Page page);
	
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
	 * 将传入role 的信息更新到于该role 的id号相同的行
	 * 
	 * @param role
	 * @return 成功更新的数据库行数
	 */
	int updateRole(Role role);
	
	Role findRoleById(Role role);
	
	/**
	 * 根据名字查找角色 
	 * @param role
	 * @return
	 */
	Role findRoleByName(Role role);
	
}
