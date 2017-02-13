package com.tarena.netctoss.biz;

import java.util.Date;
import java.util.List;

import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.util.Page;

public interface IAdminServ {
	/**
	 * 根据传入的admin 的accountName,查找数据库中对应的Admin
	 * 
	 * @param admin
	 * @return
	 */
	Admin findAdminByName(Admin admin);

	/**
	 * 
	 * @param admin
	 * @return
	 */
	int updateAdminInfo(Admin admin);

	int updateSelfPassword(Admin admin);

	int addAdmin(Admin admin);

	List<Admin> listAdmins(Admin admin, Page page, Date beginDate, Date endDate);

	int deleteAdminById(Admin admin);
	/**
	 * 根据Id查找管理员
	 */
	Admin findAdminById(Admin admin);
	
}
