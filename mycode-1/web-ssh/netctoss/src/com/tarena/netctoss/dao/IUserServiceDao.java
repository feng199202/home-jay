package com.tarena.netctoss.dao;

import java.util.List;

import com.tarena.netctoss.entity.UserService;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.UserServiceBean;

public interface IUserServiceDao {
	
	/**
	 * 根据传入userService 的特定字段,查找数据库中符合条件的业务信息
	 * @param userService
	 * @param page 
	 * @return 符合条件的UserService 集合
	 */
	List<UserService> listUserService(UserServiceBean userserviceBean, Page page);
	
	/**
	 * 将传入的 userService 写入数据库
	 * @param userService
	 * @return 写入数据库后产生的id号
	 */
	int addUserService(UserService userService);
	
	
	/**
	 * 将传入的userService 的信息更新到与该userService 的id相同的数据库行中
	 * @param userService
	 * @return 成功更新的数据库行数
	 */
	int updateUserServiceById(UserService userService);
	
	
	/**
	 * 根据传入uesrService 的Id号,删除数据库中与之相同的行
	 * @param uesrService
	 * @return 成功删除的数据库行数
	 */
	int deleteUserServidebyId(UserService uesrService);
/**
 * 根据Id查找UserService
 * @param userServiceId
 * @return
 */
	UserService findUserServiceById(final int userServiceId);
	
	

}
