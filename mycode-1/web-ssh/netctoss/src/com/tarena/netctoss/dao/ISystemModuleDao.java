package com.tarena.netctoss.dao;

import java.util.List;

import com.tarena.netctoss.entity.SystemModule;

public interface ISystemModuleDao {
	/**
	 * 增加module
	 * @param systemModule
	 * @return
	 */
	int addSystemModule(SystemModule systemModule);
	/**
	 * 删除模块
	 * @param systemModule
	 * @return
	 */
	int deleteSystemModule(SystemModule systemModule);
	/**
	 * 更新模块
	 * @param systemModule
	 * @return
	 */
	int updateSystemModule(SystemModule systemModule);
	
	
	List<SystemModule> listSystemModule();
	
	SystemModule findSystemModuleById(int id);
}
