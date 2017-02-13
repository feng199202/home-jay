package com.tarena.netctoss.web.action;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IDetailServ;
import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.util.Page;

/**
 * 帐务管理
 * 
 * @author debian
 * 
 */
public class AdminManageAccountAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(AdminManageAccountAction.class);

	private IDetailServ idetailServ;

	private List<Object[]> accountsYearly;

	private List<Object[]> accountMonthly;

	private Detail detail;

	private List<Detail> details;

	private Page page = new Page();

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Object[]> getAccountsYearly() {
		return accountsYearly;
	}

	public void setAccountsYearly(List<Object[]> accountsYearly) {
		this.accountsYearly = accountsYearly;
	}

	public Detail getDetail() {
		return detail;
	}

	public void setDetail(Detail detail) {
		this.detail = detail;
	}

	public IDetailServ getIdetailServ() {
		return idetailServ;
	}

	public void setIdetailServ(IDetailServ idetailServ) {
		this.idetailServ = idetailServ;
	}

	public List<Object[]> getAccountMonthly() {
		return accountMonthly;
	}

	public void setAccountMonthly(List<Object[]> accountMonthly) {
		this.accountMonthly = accountMonthly;
	}

	public List<Detail> getDetails() {
		return details;
	}

	public void setDetails(List<Detail> details) {
		this.details = details;
	}

	// 以年为单位显示帐务
	public String listAccountYearly() {

		page.setPageSize(10);
		detail = null;
		accountsYearly = idetailServ.listDetailByLabIpYearly(page, detail);

		this.request.put("accountsYearly", accountsYearly);
		log.info("accountYearLy.size()" + accountsYearly.size());
		return "list_account_yearly";
	}

	// 查询以年为单位的帐务

	public String queryAccountYearly() {

		page.setPageSize(10);

		accountsYearly = idetailServ.listDetailByLabIpYearly(page, detail);

		this.request.put("accountsYearly", accountsYearly);
		log.info("accountYearLy.size()" + accountsYearly.size());
		return "list_account_yearly";

	}

	// 列出以年为单位的每个月的信息

	public String listAccountYearlyMonth() {
		page.setPageSize(10);
		detail.setMonth(0);
		accountMonthly = idetailServ.listDetailByLabIpMonthly(page, detail);
		this.request.put("accountMonthly", accountMonthly);
		log.info("accountMonthly.size()" + accountMonthly.size());
		return "list_account_monthly";
	}

	// 列出以月为单位的帐号信息

	public String listAccountMonthly() {

		page.setPageSize(10);
		detail = null;
		accountMonthly = idetailServ.listDetailByLabIpMonthly(page, detail);
		this.request.put("accountMonthly", accountMonthly);
		log.info("accountMonthly.size()" + accountMonthly.size());
		return "account_month";

	}

	// 查询以月为单位的帐号信息
	public String queryMonthAccount() {

		page.setPageSize(10);
		accountMonthly = idetailServ.listDetailByLabIpMonthly(page, detail);
		this.request.put("accountMonthly", accountMonthly);
		log.info("accountMonthly.size()" + accountMonthly.size());
		return "account_month";

	}

	public String queryDaylyAccount() {
		page.setPageSize(10);
		this.request.put("detail", detail);
		details = idetailServ.listDetailByLabIpDayly(page, detail);
		log.info("details.size()" + details.size());
		return "account_dayly";
	}
}
