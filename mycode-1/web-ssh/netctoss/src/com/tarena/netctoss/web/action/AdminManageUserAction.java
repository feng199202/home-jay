package com.tarena.netctoss.web.action;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.tarena.netctoss.biz.IPricingServ;
import com.tarena.netctoss.biz.IUserServ;
import com.tarena.netctoss.biz.IUserServiceServ;
import com.tarena.netctoss.entity.Pricing;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.entity.UserService;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.PricingBean;
import com.tarena.netctoss.util.searchBean.UserServiceBean;

/**
 * 管理员管理用户
 * 
 * @author debian
 * 
 */
public class AdminManageUserAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static Log log = LogFactory.getLog(AdminManageUserAction.class);

	private String validateCode;
	private List<User> users;
	Page page = new Page();
	
	private User user1 = new User();
	
	private UserService userService;
	private List<UserService> userServices;
	private UserServiceBean userserviceBean;
	private List<Pricing> pricings;
	private int serviceIdBean;
	private String accountNameBean;

	public String getAccountNameBean() {
		return accountNameBean;
	}

	public void setAccountNameBean(String accountNameBean) {
		this.accountNameBean = accountNameBean;
	}

	public int getServiceIdBean() {
		return serviceIdBean;
	}

	public void setServiceIdBean(int serviceIdBean) {
		this.serviceIdBean = serviceIdBean;
	}

	private IUserServiceServ iuserServiceServ;
	private IUserServ iuserServ;
	private IPricingServ ipricingServ;

	public UserServiceBean getUserserviceBean() {
		return userserviceBean;
	}

	public void setUserserviceBean(UserServiceBean userserviceBean) {
		this.userserviceBean = userserviceBean;
	}

	public User getUser1() {
		return user1;
	}

	public void setUser1(User user1) {
		this.user1 = user1;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
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

	public List<Pricing> getPricings() {
		return pricings;
	}

	public void setPricings(List<Pricing> pricings) {
		this.pricings = pricings;
	}

	public IPricingServ getIpricingServ() {
		return ipricingServ;
	}

	public void setIpricingServ(IPricingServ ipricingServ) {
		this.ipricingServ = ipricingServ;
	}

	public String execute() {
		return "success";
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public List<UserService> getUserServices() {
		return userServices;
	}

	public IUserServiceServ getIuserServiceServ() {
		return iuserServiceServ;
	}

	public void setIuserServiceServ(IUserServiceServ iuserServiceServ) {
		this.iuserServiceServ = iuserServiceServ;
	}

	public void setUserServices(List<UserService> userServices) {
		this.userServices = userServices;
	}

	/**
	 * 添加账务账号
	 * 
	 * @return
	 */

	public String addUser() {
		if(iuserServ.findUserByName(user)==null){
		iuserServ.addUser(user);
			users = iuserServ.listUsers(user1, page);
			return "acct_browse";}else{
				return "acct_add";
			}
	}

	public String toAddUser() {
		return "acct_add";
	}

	/**
	 * 查询账务
	 * sf
	 * @return
	 */
	public String qureryUsers() {
		user1=null;
		users = iuserServ.listUsers(user1, page);
		log.info("users.size() :" + users.size());
		return "acct_browse";

	}
	public String qureryUsers0() {
		
		users = iuserServ.listUsers(user1, page);
		log.info("users.size() :" + users.size());
		return "acct_browse";

	}

	/**
	 * 更新账务
	 * 
	 * @return
	 */
	public String acctbrForUpd() {
		user1=null;
		users = iuserServ.listUsers(user1, page);
		return "acctbr_for_upd";
	}
	public String acctbrForUpd0() {
		users = iuserServ.listUsers(user1, page);
		return "acctbr_for_upd";
	}

	public String toUpdateAcct() {
		log.info("user" + user);
		user1 = iuserServ.findUserById(user);
		return "update_acct";
	}

	public String doUpdateAcct() {
		if (iuserServ.updateUserInfo(user1) == 1) {
			user1 = null;
			users = iuserServ.listUsers(user1, page);
			return "acctbr_for_upd";
		} else {
			return "update_failed";
		}
	}

	/**
	 * 删除账务
	 * 
	 * @return
	 */
	public String acctbrForDel() {
		user1=null;
		users = iuserServ.listUsers(user1, page);
		return "acctbr_for_del";
	}
	public String acctbrForDel0() {
		users = iuserServ.listUsers(user1, page);
		return "acctbr_for_del";
	}
	public String acctbrDoDel() {
		user.setAccountStatus(0);
		if (iuserServ.updateUserStatus(user) == 1) {
			user1 = null;
			users = iuserServ.listUsers(user1, page);
			return "acctbr_for_del";
		} else {
			return "update_failed";
		}
	}

	/**
	 * 查询业务
	 * 
	 * @return
	 */
	public String listBuss() {
		userserviceBean = null;
		userServices = iuserServiceServ.findUserService(userserviceBean, page);

		return "qurery_buss";
	}
	public String listBuss0() {
		userServices = iuserServiceServ.findUserService(userserviceBean, page);

		return "qurery_buss";
	}

	public String queryBuss() {
		userServices = iuserServiceServ.findUserService(userserviceBean, page);

		return "qurery_buss";
	}

	/**
	 * 增加业务
	 * 
	 * @return
	 */
	public String bussAdd() {
		PricingBean pb = null;
		pricings = ipricingServ.listPricings(pb, page);
		user=null;
		return "buss_add";
	}

	public String bussDoAdd() {
		
		User foundUser = iuserServ.findUserByName(user);
		//如果该用户名的user 存在，则执行添加业务操作，否则提示
		if(foundUser !=null){
		userService.setUser(foundUser);
		log.info("userService:"+userService);
		iuserServiceServ.addUserService(userService);
		userserviceBean = null;
		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		log.info("*************userServices:"+userServices.size());
		return "qurery_buss";
		}else{
		PricingBean pb = null;
		pricings = ipricingServ.listPricings(pb, page);
		user.setAccountName("该用户不存在");
		return "buss_add";}
	}
	
	/**
	 * 业务删除
	 * 
	 * @return
	 */
	public String bussForDel() {
		userserviceBean = null;
		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		return "buss_for_del";

	}

	public String bussForDel1() {

		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		return "buss_for_del";

	}

	public String bussDoDel() {
		log.info("**********************************************");
		log.info(userService.getServiceId());
		log.info("**********************************************");
		iuserServiceServ.deleteUserServidebyId(userService);
		userserviceBean = null;
		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		return "buss_for_del";
	}

	/**
	 * 更新业务
	 * 
	 * @return
	 */
	public String bussForUp() {
		userserviceBean=null;
		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		return "buss_for_up";

	}
	public String bussForUp0() {
		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		return "buss_for_up";

	}

	public String bussToUp() {
		PricingBean pb = null;
		pricings = ipricingServ.listPricings(pb, page);
		// log.info("***********serviceIdBean: "+serviceIdBean);
		userService = iuserServiceServ.findUserServiceById(serviceIdBean);
		// log.info("******userService:"+userService);
		return "buss_to_up";
	}

	public String bussDoUp() {
		iuserServiceServ.updateUserServiceById(userService);
		userserviceBean = null;
		userServices = iuserServiceServ.findUserService(userserviceBean, page);
		return "buss_for_up";
	}

}