package com.tarena.netctoss.biz;

import java.util.List;

import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public interface IDetailServ {

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

	/**
	 * 查询某帐务一个月的信息
	 * 
	 * @param page
	 * @param detail
	 * @return
	 */
	List<Object[]> listDetailByLabIpMonthly(Page page, Detail detail);

	List<Detail> listDetailByLabIpDayly(Page page, Detail detail);
	

	List<Object[]>  listReckonsMonthByUserName( User user,
			 Page page);
	List<Detail> listDetails(User user, Page page, Detail detail);
	List<Object[]>  listReckonsMonthByUserName( User user,Page page,Detail detail);

}
