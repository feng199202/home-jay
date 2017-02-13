package com.tarena.netctoss.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

//退出登陆action
public class AdminLogoutAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			HttpSession session1 = request.getSession();
			session1.invalidate();
			super.execute();
			
		} catch (Exception e) {
			
			return "error";
		}
		return "logout_success";
	}

}
