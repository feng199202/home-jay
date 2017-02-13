package com.tarena.netctoss.biz.impl;

import java.util.List;

import com.tarena.netctoss.biz.IRoleServ;
import com.tarena.netctoss.dao.IRoleDao;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

public class RoleServImpl implements IRoleServ {
	private IRoleDao iroleDao;

	public IRoleDao getIroleDao() {
		return iroleDao;
	}

	public void setIroleDao(IRoleDao iroleDao) {
		this.iroleDao = iroleDao;
	}

	@Override
	public List<Role> listRoles(Role role, Page page) {
		// TODO Auto-generated method stub
		if (page != null)
			page.setCountRow((int) iroleDao.countRows(role));

		return this.iroleDao.listRoles(role, page);
	}

	@Override
	public int addRole(Role role) {
		// TODO Auto-generated method stub
		return this.iroleDao.addRole(role);
	}

	@Override
	public int deleteRoleById(Role role) {
		// TODO Auto-generated method stub
		return this.iroleDao.deleteRoleById(role);
	}

	@Override
	public int updateRole(Role role) {
		// TODO Auto-generated method stub
		return this.iroleDao.updateRole(role);
	}

	@Override
	public Role findRoleById(Role role) {
		return this.iroleDao.findRoleById(role);
	}

	@Override
	public Role findRoleByName(Role role) {
		// TODO Auto-generated method stub
		return this.iroleDao.findRoleByName(role);
	}

}
