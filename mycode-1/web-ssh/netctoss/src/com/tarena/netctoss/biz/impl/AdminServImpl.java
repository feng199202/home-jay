package com.tarena.netctoss.biz.impl;

import java.util.Date;
import java.util.List;

import com.tarena.netctoss.biz.IAdminServ;
import com.tarena.netctoss.dao.IAdminDao;
import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.util.Page;

public class AdminServImpl implements IAdminServ {
	private IAdminDao iadminDao;

	public IAdminDao getIadminDao() {
		return iadminDao;
	}

	public void setIadminDao(IAdminDao iadminDao) {
		this.iadminDao = iadminDao;
	}

	@Override
	public Admin findAdminByName(Admin admin) {
		return iadminDao.findAdminByName(admin);
	}

	@Override
	public int updateAdminInfo(Admin admin) {
		// TODO Auto-generated method stub
		return iadminDao.updateAdminInfo(admin);
	}

	@Override
	public int updateSelfPassword(Admin admin) {
		return iadminDao.updateSelfPassword(admin);
	}

	@Override
	public int addAdmin(Admin admin) {
		return iadminDao.addAdmin(admin);
	}

	@Override
	public List<Admin> listAdmins(Admin admin, Page page, Date beginDate,
			Date endDate) {

		page.setCountRow((int) iadminDao.countRows(admin, beginDate, endDate));

		List<Admin> admins = iadminDao.listAdmins(admin, page, beginDate,
				endDate);
		return admins;
	}

	@Override
	public int deleteAdminById(Admin admin) {
		// TODO Auto-generated method stub
		return iadminDao.deleteAdmin(admin);
	}

	@Override
	public Admin findAdminById(Admin admin) {
		// TODO Auto-generated method stub
		return iadminDao.findAdminById(admin);
	}

}
