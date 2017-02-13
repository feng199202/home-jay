package com.tarena.netctoss.web.action;

import static com.tarena.netctoss.util.StringUtil.stringIsNullOrEmpty;
import static com.tarena.netctoss.util.StringUtil.stringToDate;

import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IAdminServ;
import com.tarena.netctoss.biz.IRoleServ;
import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

public class ManageAdminAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(ManageAdminAction.class);
	private Admin admin;

	private Admin queryAdmin;

	private IAdminServ iadminServ;

	private IRoleServ iroleServ;
	private List<Role> roles;

	private List<Admin> admins;

	private Page page = new Page();

	/**
	 * 接收穿过来的起始日期
	 */
	private String beginDateString;
	/**
	 * 接收穿过来的结束日期
	 */
	private String endDateString;

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Admin getQueryAdmin() {
		return queryAdmin;
	}

	public void setQueryAdmin(Admin queryAdmin) {
		this.queryAdmin = queryAdmin;
	}

	public IAdminServ getIadminServ() {
		return iadminServ;
	}

	public void setIadminServ(IAdminServ iadminServ) {
		this.iadminServ = iadminServ;
	}

	public IRoleServ getIroleServ() {
		return iroleServ;
	}

	public void setIroleServ(IRoleServ iroleServ) {
		this.iroleServ = iroleServ;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(List<Admin> admins) {
		this.admins = admins;
	}

	public String getBeginDateString() {
		return beginDateString;
	}

	public void setBeginDateString(String beginDateString) {
		this.beginDateString = beginDateString;
	}

	public String getEndDateString() {
		return endDateString;
	}

	public void setEndDateString(String endDateString) {
		this.endDateString = endDateString;
	}

	public String showManageAdminInfo() {

		return "show_manage_admin_info";
	}

	// 跳轉到更新個人信息界面
	public String showSelfInfo() {
		return "show_self_info";
	}

	// 执行更新的个人信息的操作!
	public String updateSelfInfo() {
		log.info("admin : " + admin);
		if (admin != null) {

			Admin existAdmin = iadminServ.findAdminByName(admin);
			if (existAdmin != null) {
				admin.setAccountName("用户名已经存在");
				return "show_self_info";
			}
			int result = iadminServ.updateAdminInfo(admin);
			if (result > 0)
				return "update_success";
		}
		return "failed";
	}

	// 前往更新密码界面
	public String toUpdatePWD() {

		return "to_update_password";
	}

	// 更新密碼
	public String doUpdatePassword() {
		log.info("admin: " + admin);
		int result = iadminServ.updateSelfPassword(admin);
		if (result > 0) {
			return "update_success";
		}
		return "failed";

	}

	// 跳转至添加管理员页面

	public String toAddAdmin() {

		roles = iroleServ.listRoles(null, null);

		return "show_add_admin";
	}

	// 执行添加admin 操作
	public String addAdmin() {

		log.info("将要添加的admin: " + admin);

		int result = 0;
		// 判断必填数据是否已经填写
		if (admin == null || stringIsNullOrEmpty(admin.getAccountName())
				|| stringIsNullOrEmpty(admin.getRealName())
				|| stringIsNullOrEmpty(admin.getPassword())
				|| stringIsNullOrEmpty(admin.getRole().getRoleId() + "")) {

			return "show_add_admin";

		}
		// 判断该用户名是否已经存在
		Admin foundAdmin = iadminServ.findAdminByName(admin);
		
		if (foundAdmin != null) {
			admin.setAccountName("用户名已经存在");
			return "show_add_admin";
		}
		admin.setEnrollDate(new Date());
		result = iadminServ.addAdmin(admin);
		if (result > 0)
			return "update_success";
		return "failed";
	}

	// 跳转到管理员浏览界面
	public String toListAdmins() {
		page.setPageSize(10);
		admin = null;
		admins = iadminServ.listAdmins(null, page, null, null);
		log.info("admins.size() " + admins.size());
		return "list_admins";
	}

	// 跳转到修改管理员界面
	public String toUpdateAdmins() {

		page.setPageSize(10);
		admin = null;
		admins = iadminServ.listAdmins(null, page, null, null);
		log.info("admins.size() " + admins.size());
		return "to_update_admins";

	}

	// 删除管理员界面
	public String toDeleteAdmins() {
		page.setPageSize(10);
		admin = null;
		admins = iadminServ.listAdmins(null, page, null, null);
		log.info("admins.size() " + admins.size());
		return "to_delete_admins";
	}

	// 查询管理员
	public String qureryAdmins() {
		Date beginDate = null;
		Date endDate = null;
		// 将输入的开始日期或结束日期字符串转化成日期格式
		if (beginDateString != null || endDateString != null) {
			try {
				log.info("beginDateString " + beginDateString);
				if (beginDateString != null)
					beginDate = stringToDate("yyyy-MM-dd", beginDateString);
				log.info("endDateString " + endDateString);
				if (endDateString != null)
					endDate = stringToDate("yyyy-MM-dd", endDateString);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		log.info("admin :" + admin);
		page.setPageSize(5);
		admins = iadminServ.listAdmins(admin, page, beginDate, endDate);
		return "list_admins";
	}

	// 删除admin
	public String deleteAdmin() {
		int result = 0;
		log.info("deleteAdmin: " + admin);
		result = iadminServ.deleteAdminById(admin);
		if (result > 0) {
			return this.toListAdmins();
		}
		return "failed";
	}

	// 去往更改Admin页面
	public String toChangeAdmin() {
		roles = iroleServ.listRoles(null, null);
		admin = iadminServ.findAdminById(admin);

		return "update_admin_info";
	}

	// 处理修改admin
	public String updateAdmin() {
		int result = 0;
		log.info("updateAdmin: " + admin);
		// 如果管理员名字存在,就不要执行修改操作
		Admin foundAdmin = iadminServ.findAdminByName(admin);

		if (foundAdmin != null) {
			admin.setAccountName("用户名已经存在");
			return this.toChangeAdmin();
		}

		result = iadminServ.updateAdminInfo(admin);
		log.info("result: " + result);
		if (result > 0)
			return this.toListAdmins();

		return "failed";

	}

}
