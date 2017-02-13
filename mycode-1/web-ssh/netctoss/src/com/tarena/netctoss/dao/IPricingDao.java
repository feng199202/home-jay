package com.tarena.netctoss.dao;

import java.util.List;

import com.tarena.netctoss.entity.Pricing;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.PricingBean;

/**
 * 
 * @author debian
 * 
 */
public interface IPricingDao {

	/**
	 * 将传入的pricing添加进数据库,
	 * 
	 * @param pricing
	 * @return 成功添加pricing 产生生的Id
	 */

	int addPricing(Pricing pricing);

	/**
	 * 根据输入pricing 的特定条件,查找符合条件的Pricing,使用分页
	 * 
	 * @param pricing
	 * @return
	 */

	List<Pricing> listPricings(PricingBean pricingBean ,Page page);

	/**
	 * 将princing中的数据更新到与pringcing id 对应的数据库的资费行中
	 * 
	 * @param pricing
	 * @return 成功更新的数据库行数
	 */

	int updatePricingById(Pricing pricing);

	/**
	 * 根据传入pricing 的id,删除t_pricing 中id 与之相同的行
	 * 
	 * @param pricing
	 * @return 成功删除的数据库行数
	 */
	int deletePricingById(Pricing pricing);
	/**
	 *根據輸入的Id查找pricing
	 * @param pricing
	 * @returnid相符的pricing
	 */
	 Pricing findPricingById(final int pricingId);

	long countRows(PricingBean pricingBean);
	
	Pricing findPricingByName(final Pricing pricing);

}
