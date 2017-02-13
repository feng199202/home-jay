package com.tarena.netctoss.web.action;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IDetailServ;
import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

/**
 * 管理员管理帐务
 * 
 * @author debian
 * 
 */
public class AdminManageReckonAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(AdminManageReckonAction.class);

	private IDetailServ idetailServ;

	private List<Object[]> userMonthDetails;
	private List<Detail> userDaylyDetails;
	private Double totalFee;
	private User user;

	private Page page = new Page();
	private Detail detail;

	public IDetailServ getIdetailServ() {
		return idetailServ;
	}

	public void setIdetailServ(IDetailServ idetailServ) {
		this.idetailServ = idetailServ;
	}

	// 跳转到账单查询界面

	public List<Detail> getUserDaylyDetails() {
		return userDaylyDetails;
	}

	public void setUserDaylyDetails(List<Detail> userDaylyDetails) {
		this.userDaylyDetails = userDaylyDetails;
	}

	public List<Object[]> getUserMonthDetails() {
		return userMonthDetails;
	}

	public void setUserMonthDetails(List<Object[]> userMonthDetails) {
		this.userMonthDetails = userMonthDetails;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Detail getDetail() {
		return detail;
	}

	public void setDetail(Detail detail) {
		this.detail = detail;
	}
	
	public Double getTotalFee() {
		return totalFee;
	}

	public void setTotalFee(Double totalFee) {
		this.totalFee = totalFee;
	}

	public String toListReckon() {
		user = null;
		page.setPageSize(5);
		detail = null;
		userMonthDetails = idetailServ
				.listDetailsByUesrNameAndLoginNameMonthly(user, page, detail);
		this.request.put("userMonthDetails", userMonthDetails);
		log.info("userMonthDetails" + userMonthDetails.size());
		return "show_reckon";
	}

	public String queryMonthDetails() {
		page.setPageSize(5);
		userMonthDetails = idetailServ
				.listDetailsByUesrNameAndLoginNameMonthly(user, page, detail);
		this.request.put("userMonthDetails", userMonthDetails);
		return "show_reckon";
	}

	public String queryDayDetails() {
		page.setPageSize(5);
		this.request.put("userName", detail.getUserName());
		this.request.put("totalFee", totalFee);
		userDaylyDetails = idetailServ.listDetailsByUserNameAndLoginNameDayly(
				detail, page);
		log.info("userDaylyDetails.size()" + userDaylyDetails.size());
		return "show _day_reckon";
	}
	
}
