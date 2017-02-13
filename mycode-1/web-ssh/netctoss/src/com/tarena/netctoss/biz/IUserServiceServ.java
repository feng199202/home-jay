package com.tarena.netctoss.biz;

import java.util.List;

import com.tarena.netctoss.entity.UserService;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.UserServiceBean;

public interface IUserServiceServ {
/**
 * 给用户添加新的用户业务
 * @param userService
 * @return
 */
	int addUserService(UserService userService);
	/**
	 * 根据输入的userSevice对象进行匹配查找并根据分页显示
	 * @param userService
	 * @param page
	 * @return 满足条件的搜索结果
	 */
	List<UserService> findUserService(final UserServiceBean userserviceBean,final Page page);
	/**
	 * 对用户的业务进行修改
	 * @param userService
	 * @return
	 */
	int updateUserServiceById(UserService userService);
	/**
	 * 删除用户的某一业务
	 * @param userService
	 * @return
	 */
	 int deleteUserServidebyId(UserService userService);
	 /**
	  * 根据Id查找UserService
	  * @param userServiceId
	  * @return
	  */
	 	UserService findUserServiceById(final int userServiceId);
	
	

}
