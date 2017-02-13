package com.tarena.netctoss.web.action;

import java.util.HashSet;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IAdminServ;
import com.tarena.netctoss.biz.IRightServ;
import com.tarena.netctoss.biz.IRoleServ;
import com.tarena.netctoss.biz.ISystemModuleServ;
import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.entity.SystemModule;

/**
 * 管理员登陆
 * 
 * @author debian
 * 
 */
public class AdminLoginAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private static Log log = LogFactory.getLog(AdminLoginAction.class);

	private Admin admin;

	private IAdminServ iadminServ;

	private IRightServ irightServ;

	private IRoleServ iroleServ;

	private ISystemModuleServ isystemModuleServ;

	private Set<Integer> systemModuleId = new HashSet<Integer>();
	private Role role;
	private String validateCode;

	@Override
	public void validate() {
		super.validate();
		this.clearFieldErrors();
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public IAdminServ getIadminServ() {
		return iadminServ;
	}

	public void setIadminServ(IAdminServ iadminServ) {
		this.iadminServ = iadminServ;
	}

	public IRightServ getIrightServ() {
		return irightServ;
	}

	public void setIrightServ(IRightServ irightServ) {
		this.irightServ = irightServ;
	}

	public IRoleServ getIroleServ() {
		return iroleServ;
	}

	public void setIroleServ(IRoleServ iroleServ) {
		this.iroleServ = iroleServ;
	}

	public ISystemModuleServ getIsystemModuleServ() {
		return isystemModuleServ;
	}

	public void setIsystemModuleServ(ISystemModuleServ isystemModuleServ) {
		this.isystemModuleServ = isystemModuleServ;
	}

	public Set<Integer> getSystemModuleId() {
		return systemModuleId;
	}

	public void setSystemModuleId(Set<Integer> systemModuleId) {
		this.systemModuleId = systemModuleId;
	}
	//管理员登陆
	public String login() {

		if (validateCode == null || "".equals(validateCode)) {
			this.addFieldError("message", "请输入验证码");
			return "login_failed";
		}
		if (admin == null || admin.getAccountName() == null
				|| "".equals(admin.getAccountName())
				|| admin.getPassword() == null
				|| "".equals(admin.getPassword())) {
			this.addFieldError("message", "请输入用户名及密码!");
			return "login_failed";
		}
		//验证验证码是否填写
		if (validateCode.equalsIgnoreCase((String) this.session.get("random"))) {
			// 查找该帐号名的管理员
			Admin loginedAdmin = iadminServ.findAdminByName(admin);

			if (loginedAdmin != null
					&& loginedAdmin.getPassword().equals(admin.getPassword())) {
				log.info("找到匹配的Admin,可以登陆");

				Set<Right> rights = new HashSet<Right>();
				rights = iroleServ.findRoleById(loginedAdmin.getRole())
						.getRights();
				for (Right right : rights) {

					systemModuleId.add(right.getSystemModule()
							.getSystemModuleId());
				}
				Set<SystemModule> systemModules = new HashSet<SystemModule>();
				for (Integer id : systemModuleId) {
					systemModules.add(isystemModuleServ
							.findSystemModuleById(id));
				}

				this.session.put("rights", rights);
				this.session.put("systemModules", systemModules);
				rights = null;
				systemModules = null;
				this.session.put("loginedAdmin", loginedAdmin);

				return "login_success";
			} else {

				this.addFieldError("message", "用户名或密码错误,请重新输入");
				return "login_failed";
			}
		} else {
			this.addFieldError("message", "验证码错误,请重新输入");
			return "login_failed";
		}
	}
	

	public String toIndexMenu() {

		return "index_menu";
	}

	public String toIndexMap() {

		return "index_map";
	}

	public String toIndexTop() {
		return "index_top";
	}

	public String toIndexBottom() {
		return "index_bottom";
	}
}
