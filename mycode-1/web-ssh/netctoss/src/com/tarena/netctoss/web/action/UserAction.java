package com.tarena.netctoss.web.action;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IDetailServ;
import com.tarena.netctoss.biz.IUserServ;
import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public class UserAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(UserAction.class);
	private IUserServ iuserServ;
	private String validateCode;
	private int paymentTypeId;
	private int sexId;
	private Detail detail;
	private List<Detail> details;
	private IDetailServ idetailServ;
	private int month;
	private int year;
	private String loginName;
	private String labIp;
	private User updateUser;

	public User getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(User updateUser) {
		this.updateUser = updateUser;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLabIp() {
		return labIp;
	}

	public void setLabIp(String labIp) {
		this.labIp = labIp;
	}

	private Page page = new Page();

	private List<Object[]> detailMonths;
	private List<Detail> monthDetails;

	public List<Detail> getMonthDetails() {
		return monthDetails;
	}

	public void setMonthDetails(List<Detail> monthDetails) {
		this.monthDetails = monthDetails;
	}

	public IDetailServ getIdetailServ() {
		return idetailServ;
	}

	public void setIdetailServ(IDetailServ idetailServ) {
		this.idetailServ = idetailServ;
	}

	public Detail getDetail() {
		return detail;
	}

	public void setDetail(Detail detail) {
		this.detail = detail;
	}

	public int getSexId() {
		return sexId;
	}

	public void setSexId(int sexId) {
		this.sexId = sexId;
	}

	public int getPaymentTypeId() {
		return paymentTypeId;
	}

	public void setPaymentTypeId(int paymentTypeId) {
		this.paymentTypeId = paymentTypeId;
	}

	public List<Detail> getDetails() {
		return details;
	}

	public void setDetails(List<Detail> details) {
		this.details = details;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	@Override
	public void validate() {
		super.validate();
		this.clearFieldErrors();
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public IUserServ getIuserServ() {
		return iuserServ;
	}

	public void setIuserServ(IUserServ iuserServ) {
		this.iuserServ = iuserServ;
	}

	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Object[]> getDetailMonths() {
		return detailMonths;
	}

	public void setDetailMonths(List<Object[]> detailMonths) {
		this.detailMonths = detailMonths;
	}


	// 跳转到个人首页
	public String toIndex() {

		return "success";
	}

	public String toUpdatePassword() {

		return "update_password";
	}

	public String doUpdatePassword() {
		log.info("user:" + user.getUserId() + "password" + user.getPassword());
		int result = iuserServ.updateUserPassword(user);
		if (result > 0)
			return "update_password_success";
		return "failed";
	}

	public String login() {
		String number = (String) session.get("random");
		log.info("在UserAction中获取的验证码是" + number);
		User user1 = iuserServ.findUserByName(user);
		log.info("传送后的验证码是:" + validateCode);
		if (validateCode.equalsIgnoreCase((String) session.get("random"))) {
			if (user1 != null && user1.getAccountName() != null
					&& user1.getPassword().equals(user.getPassword())) {
				this.session.put("loginedUser", user1);
				return "success";
			} else {
				this.addFieldError("message", "用户名或密码错误,请重新输入");
				return "loginWrong";
			}
		} else {
			this.addFieldError("message", "验证码错误，请重新输入");
			return "loginWrong";
		}
	}

	// 跳转到查看个人信息界面
	public String listSelfInfo() {
		updateUser = iuserServ.findUserById(user);
		return "list_selfInfo";
	}

	// 跳转到更新个人信息界面

	public String toUpdateSelefInfo() {

		updateUser = iuserServ.findUserById(user);
		if (updateUser != null)
			return "to_update_self_info";
		return "error";
	}

	public String doUpdate() {
		if (paymentTypeId == 1) {
			updateUser.setPaymentType("现金");
		} else {
			updateUser.setPaymentType("银行卡");
		}
		log.info("updateUser.userId" + updateUser.getUserId());
		int result = iuserServ.updateSelfInfo(updateUser);
		if (result > 0) {
			return "update_password_success";
		} else {
			return "error";
		}

	}

	public String doSearch() {
		log.info("得到的year数据是" + detail.getYear());
		log.info("得到的month数据是" + detail.getMonth());
		log.info("得到的loginName数据时" + detail.getLoginName());
		Page page = new Page();
		page.setPageSize(5);
		user = (User) session.get("loginedUser");
		log.info("userName:" + user.getAccountName());

		detailMonths = idetailServ.listReckonsMonthByUserName(user, page,
				detail);
		log.info("detailMonth" + detailMonths);
		return "toSearch";

	}

	public String listReckons() {
		user = (User) session.get("loginedUser");

		if (user != null) {
			detail = null;
			page.setPageSize(5);
			detailMonths = idetailServ.listReckonsMonthByUserName(user, page);
			this.request.put("detailMonths", detailMonths);
			log.info("detailMonth" + detailMonths);
			return "toList";
		} else {
			return "login";
		}

	}

	public String listDetails() {

		log.info("detail" + detail);
		user = (User) session.get("loginedUser");
		log.info("获得的明细month为" + detail.getMonth());
		log.info("获得的明细year为" + detail.getYear());
		log.info("当前获得的登录名是" + detail.getLoginName());
		log.info("当前获得服务器ip是" + detail.getLabIp());
		// log.info("loginedUser:"+user);
		monthDetails = idetailServ.listDetails(user, page, detail);
		System.out.println(monthDetails);
		return "toShowDetail";
	}

	public String toIndexMenu() {

		return "index_menu";
	}

	public String toIndexMap() {

		return "index_map";
	}

	public String toIndexTop() {
		return "index_top";
	}

	public String toIndexBottom() {
		return "index_bottom";
	}
}