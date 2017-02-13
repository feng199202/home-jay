package com.tarena.netctoss.web.action;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IPricingServ;
import com.tarena.netctoss.entity.Pricing;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.PricingBean;

public class AdminMagePricingAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(ManageAdminAction.class);
	private PricingBean pricingBean;
	private List<Pricing> pricings;
	private Pricing pricing;
	private int pricingId1;

	public int getPricingId1() {
		return pricingId1;
	}

	public void setPricingId1(int pricingId1) {
		this.pricingId1 = pricingId1;
	}

	public PricingBean getPricingBean() {
		return pricingBean;
	}

	public void setPricingBean(PricingBean pricingBean) {
		this.pricingBean = pricingBean;
	}

	public List<Pricing> getPricings() {
		return pricings;
	}

	public void setPricings(List<Pricing> pricings) {
		this.pricings = pricings;
	}

	public Pricing getPricing() {
		return pricing;
	}

	public void setPricing(Pricing pricing) {
		this.pricing = pricing;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	private Page page = new Page();
	private IPricingServ ipricingServ;

	public IPricingServ getIpricingServ() {
		return ipricingServ;
	}

	public void setIpricingServ(IPricingServ ipricingServ) {
		this.ipricingServ = ipricingServ;
	}

	public String feeAdd() {
		return "fee_add";
	}

	public String feeToAdd() {
		// 如果pricing 都没有输入,返回添加界面
		if (pricing == null || pricing.getPricingName() == null) {
			return this.feeAdd();
		}
		if (ipricingServ.findPricingByName(pricing) == null) {
			ipricingServ.addPricing(pricing);
			pricings = ipricingServ.listPricings(pricingBean, page);
			return "fee_browse";
		} else {
			return "fee_add";
		}
	}

	public String feeBrowse() {
		pricingBean = null;
		pricings = ipricingServ.listPricings(pricingBean, page);
		return "fee_browse";
	}

	public String feeBrowse0() {
		pricings = ipricingServ.listPricings(pricingBean, page);
		return "fee_browse";
	}

	public String feeForUp() {
		pricingBean = null;
		pricings = ipricingServ.listPricings(pricingBean, page);
		return "fee_for_up";
	}

	public String feeForUp0() {
		pricings = ipricingServ.listPricings(pricingBean, page);
		return "fee_for_up";
	}

	public String feeToUp() {
		log.info("*****************");
		log.info(pricingId1);
		log.info("*****************");

		pricing = ipricingServ.findPricingById(pricingId1);
		log.info(pricing.getPricingId());
		return "fee_to_up";
	}

	public String feeDoUp() {
		// 首先判断该名字是否已经存在
		if (pricing != null && pricing.getPricingName() != null) {

			Pricing existPricing = ipricingServ.findPricingByName(pricing);
			// 若该名字的资费已经存在,不执行添加操作,返回添加界面,并提示
			if (existPricing != null) {

				this.request.put("pricing_exist", "该资费名已经存在,请重新输入");
				return this.feeToUp();
			}
		}
		ipricingServ.updatePricingById(pricing);
		pricings = ipricingServ.listPricings(pricingBean, page);
		pricingBean = null;
		return "fee_for_up";
	}

	public String feeDel() {
		pricings = ipricingServ.listPricings(pricingBean, page);
		return "fee_del";
	}

	public String feeDel0() {
		pricingBean = null;
		pricings = ipricingServ.listPricings(pricingBean, page);
		return "fee_del";
	}

	public String feeToDel() {
		pricing = ipricingServ.findPricingById(pricingId1);
		log.info("***********pricing detail: " + pricing);
		if (pricing.getServices().size() == 0) {
			log.info("will delete***********");
			ipricingServ.deletePricingById(pricing);
			pricingBean = null;
			pricings = ipricingServ.listPricings(pricingBean, page);
			this.request.put("canNot", "");
			return "fee_del";
		} else {
			log.info("service in use ****************");
			this.request.put("canNot", "对不起，该项资费正被使用中，您不能删除！");
			return "fee_del";
		}

	}

}
