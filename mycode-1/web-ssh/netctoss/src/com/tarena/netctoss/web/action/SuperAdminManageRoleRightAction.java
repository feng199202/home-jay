package com.tarena.netctoss.web.action;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IRightServ;
import com.tarena.netctoss.biz.IRoleServ;
import com.tarena.netctoss.biz.ISystemModuleServ;
import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.entity.SystemModule;
import com.tarena.netctoss.util.Page;

/**
 * 
 * @author debian
 * 
 */
public class SuperAdminManageRoleRightAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory
			.getLog(SuperAdminManageRoleRightAction.class);

	private IRightServ irightServ;
	private ISystemModuleServ isystemModuleServ;
	private IRoleServ iroleServ;
	private List<Right> rights;
	private List<SystemModule> modules;
	private Right right;

	private Right rightToUpdate;
	private List<Integer> updateRightIds;
	private Page page = new Page();

	private List<Role> roles;
	private Role role;
	private Role updateRole;
	private SystemModule module;

	public List<Right> getRights() {
		return rights;
	}

	public void setRights(List<Right> rights) {
		this.rights = rights;
	}

	public ISystemModuleServ getIsystemModuleServ() {
		return isystemModuleServ;
	}

	public void setIsystemModuleServ(ISystemModuleServ isystemModuleServ) {
		this.isystemModuleServ = isystemModuleServ;
	}

	public IRightServ getIrightServ() {
		return irightServ;
	}

	public List<SystemModule> getModules() {
		return modules;
	}

	public void setModules(List<SystemModule> modules) {
		this.modules = modules;
	}

	public void setIrightServ(IRightServ irightServ) {
		this.irightServ = irightServ;
	}

	public Right getRight() {
		return right;
	}

	public void setRight(Right right) {
		this.right = right;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public IRoleServ getIroleServ() {
		return iroleServ;
	}

	public void setIroleServ(IRoleServ iroleServ) {
		this.iroleServ = iroleServ;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Role getUpdateRole() {
		return updateRole;
	}

	public void setUpdateRole(Role updateRole) {
		this.updateRole = updateRole;
	}

	public List<Integer> getUpdateRightIds() {
		return updateRightIds;
	}

	public void setUpdateRightIds(List<Integer> updateRightIds) {
		this.updateRightIds = updateRightIds;
	}

	public Right getRightToUpdate() {
		return rightToUpdate;
	}

	public void setRightToUpdate(Right rightToUpdate) {
		this.rightToUpdate = rightToUpdate;
	}

	public SystemModule getModule() {
		return module;
	}

	public void setModule(SystemModule module) {
		this.module = module;
	}

	/**
	 * 跳转到列出权限界面
	 * 
	 * @return
	 */
	public String toListRights() {
		page.setPageSize(5);
		right = null;
		rights = irightServ.listRights(null, page);
		return "list_rights";
	}

	// 跳转到修改权限界面

	public String toUpdateRights() {
		page.setPageSize(5);
		right = null;
		rights = irightServ.listRights(null, page);
		return "to_update_rights";
	}

	// 跳转到删除权限界面
	public String toDeleteRights() {
		page.setPageSize(5);
		right = null;
		rights = irightServ.listRights(null, page);
		return "to_delete_rights";
	}

	// 查询rights
	public String queryRights() {

		log.info("page: " + page.getPageNo());
		page.setPageSize(5);
		rights = irightServ.listRights(right, page);
		return "list_rights";
	}

	/**
	 * 删除权限
	 * 
	 * @return
	 */
	public String deleteRight() {
		int result = 0;
		log.info("deleteRight: " + right);
		result = irightServ.deleteRightById(right);
		if (result > 0) {
			right = null;
			return this.toListRights();
		}
		return "failed";
	}

	// 跳转到更新right 界面

	public String toUpdateRight() {

		log.info("right: " + right);
		rightToUpdate = irightServ.findRightById(right);
		modules = isystemModuleServ.listSystemModule();
		log.info("找到");
		return "to_update_right";
	}

	// 执行更新right

	public String doUpdateRight() {

		log.info("right: " + right);
		Right existRight = irightServ.findRightByName(right);
		if (existRight != null) {
			right.setRightName("该角色名已经存在");
			return this.toUpdateRight();
		}
		right.setSystemModule(module);
		int result = irightServ.updateRightById(right);
		if (result > 0) {
			right = null;
			return this.toListRights();
		}
		return "failed";
	}

	// 跳转到更新权限界面
	public String toAddRight() {
		right = null;
		modules = isystemModuleServ.listSystemModule();
		return "to_add_right";
	}

	// 执行更新权限
	public String doAddRight() {

		int result = 0;
		log.info("addRight: " + right);
		if (right != null) {
			// 判断权限名字是否已经存在
			Right existRight = irightServ.findRightByName(right);
			if (existRight != null) {
				right.setRightName("该名字已经存在");
				return this.toAddRight();
			}
			result = irightServ.addRight(right);
		}
		if (result > 0) {
			right = null;
			return this.toListRights();
		}
		return "failed";

	}

	// 跳转到角色浏览界面
	public String toBrowseRoles() {
		page.setPageSize(5);
		role = null;
		roles = iroleServ.listRoles(role, page);
		log.info("roles.size(): " + roles);
		return "to_browse_roles";
	}

	// 跳转到角色修改界面
	public String toUpdateRoles() {
		page.setPageSize(5);
		role = null;
		roles = iroleServ.listRoles(role, page);
		log.info("roles.size(): " + roles);
		return "to_update_roles";
	}

	// 跳转到角色删除界面
	public String toDeleteRoles() {
		page.setPageSize(5);
		role = null;
		roles = iroleServ.listRoles(role, page);
		log.info("roles.size(): " + roles);
		return "to_delete_roles";
	}

	// 角色查询

	public String queryRoles() {

		page.setPageSize(5);
		roles = iroleServ.listRoles(role, page);
		log.info("roles.size(): " + roles);
		return "to_browse_roles";
	}

	// 删除角色处理
	public String deleteRole() {
		log.info("deleteRole: " + role);
		int result = iroleServ.deleteRoleById(role);
		if (result > 0) {
			role = null;
			return this.toBrowseRoles();
		}
		return "error";
	}

	// 跳转到更新角色界面
	public String toupdateRole() {
		log.info("updateRole: " + role);
		rights = irightServ.listRights(null, null);
		updateRole = iroleServ.findRoleById(role);

		return "to_update_role";
	}

	// 处理更新角色
	public String doUpdateRole() {
		
		Role existRole = iroleServ.findRoleByName(updateRole);
		
		if (existRole != null) {
			
			updateRole.setRoleName("该角色名称已经存在");
			return this.toupdateRole();
			
		}
		log.info("updateRightIds: " + updateRightIds);
		Set<Right> updateRights = new HashSet<Right>();
		for (Integer id : updateRightIds) {
			Right right = new Right();
			right.setRightId(id);
			updateRights.add(right);
		}
		
		log.info("updateRights.size(): " + updateRights.size());
		updateRole.setRights(updateRights);
		
		log.info("updateRole " + updateRole);
		int a = iroleServ.updateRole(updateRole);
		if (a > 0) {
			role = null;
			return this.toBrowseRoles();
		}
		return "error";
	}

	// 跳转到角色增加界面
	public String toAddRole() {
		rights = irightServ.listRights(null, null);
		return "to_add_Role";
	}
	// 增加角色
	public String doAddRole() {
		
		log.info("updateRightIds: " + updateRightIds);
		Role existRole = iroleServ.findRoleByName(updateRole);
		
		if (existRole != null) {
			updateRole.setRoleName("该角色名称已经存在");
			return this.toAddRole();
		}
		Set<Right> updateRights = new HashSet<Right>();
		for (Integer id : updateRightIds) {
			Right right = new Right();
			right.setRightId(id);
			updateRights.add(right);
		}
		log.info("updateRights.size(): " + updateRights.size());

		updateRole.setRights(updateRights);
		log.info("updateRole " + updateRole);
		int a = iroleServ.addRole(updateRole);
		if (a > 0) {
			role = null;
			return this.toBrowseRoles();
		}
		return "failed";
	}
}
