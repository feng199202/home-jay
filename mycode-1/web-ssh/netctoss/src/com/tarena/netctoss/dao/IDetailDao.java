package com.tarena.netctoss.dao;

import java.util.List;

import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public interface IDetailDao {
	/**
	 * 
	 * @param user
	 * @param page
	 * @return
	 */
	List<Detail> listDetailByUserId(User user, Page page);

	/**
	 * 按月分给出每个帐号的帐务信息
	 * 
	 * @param user
	 * @param page
	 * @return
	 */
	List<Object[]> listDetailsByUesrNameAndLoginNameMonthly(User user,
			Page page, Detail detail);

	List<Detail> listDetailsByUserNameAndLoginNameDayly(Detail detail, Page page);

	/**
	 * 查询某帐务一年的信息
	 * 
	 * @param page
	 * @param detail
	 * @return
	 */
	List<Object[]> listDetailByLabIpYearly(Page page, Detail detail);

	List<Detail> listDetailByLabIpDayly(Page page, Detail detail);

	/**
	 * 查询某帐务一个月的信息
	 * 
	 * @param page
	 * @param detail
	 * @return
	 */
	List<Object[]> listDetailByLabIpMonthly(Page page, Detail detail);

	int countDetailsByUesrNameAndLoginNameMonthly(Detail detail, User user);

	int countDetailsByUserNameAndLoginNameDayly(Detail detail);

	int countDetailByLabIpYearly(Detail detail);

	int countDetailByLabIpMonthly(Detail detail);

	int countDetailByLabIpDayly(Detail detail);
	
	// //该类请先留着,写其他的方法先
	
		/*
		 * 根据用户名查找账号详单
		 */
		List<Object[]> listReckonsMonthByUserName(User user, Page page);

		/*
		 * 重写 listReckonsMonthByUserName方法
		 */

		List<Object[]> listReckonsMonthDeailByUserName(User user, Page page,
				Detail detail);

		/*
		 * 根据业务账单号查询
		 */
		List<Detail> listDetails(User user, Page page, Detail detail);

		// 计算每月的业务的行数
		

		int countReckonsMonthDeailByUserName(User user, Detail detail);

		int countReckonsMonthByUserName(User user);

		int countDetails(User user, Detail detail);

}
