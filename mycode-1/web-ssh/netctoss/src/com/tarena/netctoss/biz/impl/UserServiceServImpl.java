package com.tarena.netctoss.biz.impl;

import java.util.List;

import com.tarena.netctoss.biz.IUserServiceServ;
import com.tarena.netctoss.dao.IUserServiceDao;
import com.tarena.netctoss.entity.UserService;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.UserServiceBean;

public class UserServiceServImpl implements IUserServiceServ{
	
	private IUserServiceDao iuserServiceDao;

	public IUserServiceDao getIuserServiceDao() {
		return iuserServiceDao;
	}

	@Override
	public int addUserService(UserService userService) {
		// TODO Auto-generated method stub
		return iuserServiceDao.addUserService(userService);
	}

	@Override
	public UserService findUserServiceById(int userServiceId) {
		// TODO Auto-generated method stub
		return iuserServiceDao.findUserServiceById(userServiceId);
	}

	@Override
	public List<UserService> findUserService(UserServiceBean userserviceBean, Page page) {
		// TODO Auto-generated method stub
		return iuserServiceDao.listUserService(userserviceBean, page);
	}

	@Override
	public int updateUserServiceById(UserService userService) {
		// TODO Auto-generated method stub
		return iuserServiceDao.updateUserServiceById(userService);
	}

	@Override
	public int deleteUserServidebyId(UserService userService) {
		// TODO Auto-generated method stub
		return iuserServiceDao.deleteUserServidebyId(userService);
	}

	public void setIuserServiceDao(IUserServiceDao iuserServiceDao) {
		this.iuserServiceDao = iuserServiceDao;
	}

}
