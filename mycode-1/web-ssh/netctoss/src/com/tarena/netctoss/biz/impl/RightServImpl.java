package com.tarena.netctoss.biz.impl;

import java.util.List;

import com.tarena.netctoss.biz.IRightServ;
import com.tarena.netctoss.dao.IRightDao;
import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.util.Page;

public class RightServImpl implements IRightServ {
	private IRightDao irightDao;

	public IRightDao getIrightDao() {
		return irightDao;
	}

	public void setIrightDao(IRightDao irightDao) {
		this.irightDao = irightDao;
	}

	@Override
	public int addRight(Right right) {
		// TODO Auto-generated method stub
		return irightDao.addRight(right);
	}

	@Override
	public int deleteRightById(Right right) {
		// TODO Auto-generated method stub
		return irightDao.deleteRightById(right);
	}

	@Override
	public int updateRightById(Right right) {
		// TODO Auto-generated method stub
		return irightDao.updateRightById(right);
	}

	@Override
	public List<Right> listRights(Right right, Page page) {
		// TODO Auto-generated method stub
		if(page !=null)
		page.setCountRow((int) irightDao.countRows(right));

		return irightDao.listRights(right, page);
	}

	@Override
	public Right findRightById(Right right) {
		// TODO Auto-generated method stub
		return irightDao.findRightById(right);
	}

	@Override
	public Right findRightByName(Right right) {
		// TODO Auto-generated method stub
		return this.irightDao.findRightByName(right);
	}

	

}
