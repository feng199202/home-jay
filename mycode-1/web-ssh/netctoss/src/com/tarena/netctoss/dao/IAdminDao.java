package com.tarena.netctoss.dao;

import java.util.Date;
import java.util.List;

import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.util.Page;

public interface IAdminDao {

	/**
	 * 根据传入的admin 的用户名及密码,查找数据库中对应名字的数据对象
	 * 
	 * @param admin
	 * @return 匹配传入admin 的用户名及密码的Admin 对象
	 */
	Admin findAdminByName(Admin admin);

	/**
	 * 将传入的admin 对象写入数据库
	 * 
	 * @param admin
	 * @return 成功写入数据库时,产生的admin Id号
	 */
	int addAdmin(Admin admin);

	/**
	 * 根据传入admin 的特定字段,查询数据库中对应的数据
	 */
	List<Admin> listAdmins(Admin admin, Page page, Date beginDate, Date endDate);

	/**
	 * 将传入的admin 的信息更新到与该admin Id匹配的数据库行中
	 * 
	 * @param admin
	 * @return 成功更新的行数
	 */
	int updateAdminInfo(Admin admin);

	/**
	 * 根据传入amdin 的id,删除数据库中admin id号对应的行
	 * 
	 * @param admin
	 * @return
	 */
	int deleteAdmin(Admin admin);

	/**
	 * 计算符合条件的admin 的行数
	 * 
	 * @param admin
	 * @return
	 */
	long countRows(Admin admin, Date beginDate, Date endDate);

	/**
	 * 更新密码
	 * 
	 * @param admin
	 * @return
	 */
	int updateSelfPassword(Admin admin);
	/**
	 * 根据Id 查找admin
	 * @param admin
	 * @return
	 */
	Admin findAdminById(Admin admin);

}
