package com.tarena.netctoss.biz;
import java.util.List;

import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public interface IUserServ {
	/**
	 * 根据传入的user 对象的用户名,查找数据库中对应信息
	 * 
	 * @param user
	 * @return 匹配传入user的用户的的数据中的User 对象
	 */
	User findUserByName(User user);
/**
 * 根据输入user的Id查找相应的user
 * @param user
 * @return
 */
	User findUserById(User user);
	/**
	 * 根据传入user 的userId,更新数据库中与之对应的User对象的数据 更新的數據由傳入的user 的對象決絕定
	 * 
	 * @param user
	 * @return 成功影响的行数
	 */

	int updateUserInfo(User user);

	/**
	 * 获得模糊匹配傳入user 對象特定条件的所有User的一个集合
	 * 
	 * 如果传入的user 为null,查询所有的user.否则,查询特定的user 字段内容 传入的user 字段可能有三个,一个是user 的真实姓名
	 * (trueName),一个是 user 的登陆名 (accountName) 采用hql 语句拼接方式 page是分页用到的
	 * 
	 * @param user
	 * @return 
	 */
	List<User> listUsers(User user, Page page);

	/**
	 * 将user 添加到数据库中
	 * 
	 * @param user
	 * @return 成功添加user 之后数据库产生的Id号
	 */

	int addUser(User user);

	/**
	 * 根据传入的usr 的id ,更改用户的帐号状态,1 是正常使用,2 是停用,停用相當于删除该帐号
	 * 
	 * @param user
	 * @return 成功的数据库行数
	 */
	int updateUserStatus(User user);

	/**
	 *  更新用户密码
	 */
	int updateUserPassword(User user);
	
	int updateSelfInfo(User user);

}
