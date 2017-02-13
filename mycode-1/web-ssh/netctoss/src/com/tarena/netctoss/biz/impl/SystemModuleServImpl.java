package com.tarena.netctoss.biz.impl;

import java.util.List;

import com.tarena.netctoss.biz.ISystemModuleServ;
import com.tarena.netctoss.dao.ISystemModuleDao;
import com.tarena.netctoss.entity.SystemModule;

public class SystemModuleServImpl implements ISystemModuleServ {
	private ISystemModuleDao isystemModuleDao;

	public ISystemModuleDao getIsystemModuleDao() {
		return isystemModuleDao;
	}

	public void setIsystemModuleDao(ISystemModuleDao isystemModuleDao) {
		this.isystemModuleDao = isystemModuleDao;
	}

	@Override
	public int addSystemModule(SystemModule systemModule) {
		// TODO Auto-generated method stub
		return isystemModuleDao.addSystemModule(systemModule);
	}

	@Override
	public int deleteSystemModule(SystemModule systemModule) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSystemModule(SystemModule systemModule) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<SystemModule> listSystemModule() {
		// TODO Auto-generated method stub
		return isystemModuleDao.listSystemModule();
	}

	@Override
	public SystemModule findSystemModuleById(int id) {
		// TODO Auto-generated method stub
		return isystemModuleDao.findSystemModuleById(id);
	}

}
