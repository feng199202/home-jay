package com.tarena.netctoss.biz.impl;


import java.util.List;

import com.tarena.netctoss.biz.IPricingServ;
import com.tarena.netctoss.dao.IPricingDao;
import com.tarena.netctoss.entity.Pricing;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.PricingBean;

public class PricingServImpl implements IPricingServ{
	

	
	private IPricingDao ipricingDao;

	public IPricingDao getIpricingDao() {
		return ipricingDao;
	}

	public void setIpricingDao(IPricingDao ipricingDao) {
		this.ipricingDao = ipricingDao;
	}

	@Override
	public int addPricing(Pricing pricing) {
		// TODO Auto-generated method stub
		return ipricingDao.addPricing(pricing);
	}

	@Override
	public List<Pricing> listPricings(PricingBean pricingBean, Page page) {
		// TODO Auto-generated method stub
		page.setCountRow((int) ipricingDao.countRows(pricingBean));
		return ipricingDao.listPricings(pricingBean, page);
	}

	@Override
	public int updatePricingById(Pricing pricing) {
		// TODO Auto-generated method stub
		return ipricingDao.updatePricingById(pricing);
	}

	@Override
	public int deletePricingById(Pricing pricing) {
		// TODO Auto-generated method stub
		return ipricingDao.deletePricingById(pricing);
	}
	@Override
	
	public Pricing findPricingById(final int pricingId){
		return ipricingDao.findPricingById(pricingId);
	}
	 public Pricing findPricingByName(final Pricing pricing){
		 return ipricingDao.findPricingByName(pricing);
	 }

}
