package com.tarena.netctoss.biz.impl;

import java.util.List;

import com.tarena.netctoss.biz.IDetailServ;
import com.tarena.netctoss.dao.IDetailDao;
import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public class DetailServImpl implements IDetailServ {

	private IDetailDao idetailDao;

	public IDetailDao getIdetailDao() {
		return idetailDao;
	}

	public void setIdetailDao(IDetailDao idetailDao) {
		this.idetailDao = idetailDao;
	}

	@Override
	public List<Object[]> listDetailsByUesrNameAndLoginNameMonthly(User user,
			Page page, Detail detail) {
		page.setCountRow(this.idetailDao
				.countDetailsByUesrNameAndLoginNameMonthly(detail, user));
		return this.idetailDao.listDetailsByUesrNameAndLoginNameMonthly(user,
				page, detail);
	}

	@Override
	public List<Detail> listDetailsByUserNameAndLoginNameDayly(Detail detail,
			Page page) {
		page.setCountRow(this.idetailDao
				.countDetailsByUserNameAndLoginNameDayly(detail));

		return idetailDao.listDetailsByUserNameAndLoginNameDayly(detail, page);
	}

	@Override
	public List<Object[]> listDetailByLabIpYearly(Page page, Detail detail) {
		// TODO Auto-generated method stub
		page.setCountRow(this.idetailDao.countDetailByLabIpYearly(detail));

		return this.idetailDao.listDetailByLabIpYearly(page, detail);
	}

	@Override
	public List<Object[]> listDetailByLabIpMonthly(Page page, Detail detail) {
		// TODO Auto-generated method stub
		page.setCountRow(this.idetailDao.countDetailByLabIpMonthly(detail));
		return this.idetailDao.listDetailByLabIpMonthly(page, detail);
	}

	@Override
	public List<Detail> listDetailByLabIpDayly(Page page, Detail detail) {
		// TODO Auto-generated method stub
		page.setCountRow(this.idetailDao.countDetailByLabIpDayly(detail));
		return this.idetailDao.listDetailByLabIpDayly(page, detail);
	}

	@Override
	public List<Object[]> listReckonsMonthByUserName(User user, Page page) {
		// TODO Auto-generated method stub
		page.setCountRow(this.idetailDao.countReckonsMonthByUserName(user));
		return this.idetailDao.listReckonsMonthByUserName(user, page);
	}

	public List<Object[]> listReckonsMonthByUserName(User user, Page page,
			Detail detail) {
		page.setCountRow(this.idetailDao.countReckonsMonthDeailByUserName(user,
				detail));
		return this.idetailDao.listReckonsMonthDeailByUserName(user, page,
				detail);
	}

	@Override
	public List<Detail> listDetails(User user, Page page, Detail detail) {
		// TODO Auto-generated method stub
		page.setCountRow(this.idetailDao.countDetails(user, detail));
		return this.idetailDao.listDetails(user, page, detail);
	}

}
