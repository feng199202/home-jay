package com.tarena.netctoss.web.action;

import java.io.ByteArrayInputStream;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tarena.netctoss.util.ValidateCode;

public class ValidateCodeAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ByteArrayInputStream inputStream;

	public String execute() throws Exception {
		ValidateCode rdnu = ValidateCode.Instance();
		this.setInputStream(rdnu.getImage());// 取得带有随机字符串的图片
		ActionContext.getContext().getSession().put("random", rdnu.getString());// 取得随机字符串放入HttpSession
		
		return "login";
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

}
