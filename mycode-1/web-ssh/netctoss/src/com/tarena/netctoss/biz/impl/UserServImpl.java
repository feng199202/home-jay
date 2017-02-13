package com.tarena.netctoss.biz.impl;

import java.util.List;

import com.tarena.netctoss.biz.IUserServ;
import com.tarena.netctoss.dao.IUserDao;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public class UserServImpl implements IUserServ {

	private IUserDao iuserDao;

	public IUserDao getIuserDao() {
		return iuserDao;
	}

	public void setIuserDao(IUserDao iuserDao) {
		this.iuserDao = iuserDao;
	}

	public User findUserById(User user) {
		// TODO Auto-generated method stub
		return iuserDao.findUserById(user);
	}

	public int addUser(User user) {
		return iuserDao.addUser(user);
	}

	public User findUserByName(User user) {
		return iuserDao.findUserByName(user);
	}

	public List<User> listUsers(User user, Page page) {
		page.setCountRow((int) iuserDao.countRow(user));
		return iuserDao.listUsers(user, page);
	}

	public int updateUserInfo(User user) {
		return iuserDao.updateUserInfo(user);
	}

	public int updateUserStatus(User user) {
		return iuserDao.updateUserStatus(user);
	}

	@Override
	public int updateUserPassword(User user) {
		// TODO Auto-generated method stub
		return this.iuserDao.updateUserPassword(user);
	}

	@Override
	public int updateSelfInfo(User user) {
		// TODO Auto-generated method stub
		return this.iuserDao.updateSelfInfo(user);
	}

}
