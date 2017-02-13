package com.tarena.netctoss.biz;

import java.util.List;

import com.tarena.netctoss.entity.Pricing;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.PricingBean;

public interface IPricingServ {

	int addPricing(Pricing pricing);

	List<Pricing> listPricings(final PricingBean pricingBean, final Page page);

	int updatePricingById(final Pricing pricing);

	int deletePricingById(final Pricing pricing);

	Pricing findPricingById(final int pricingId);

	Pricing findPricingByName(final Pricing pricing);
}
