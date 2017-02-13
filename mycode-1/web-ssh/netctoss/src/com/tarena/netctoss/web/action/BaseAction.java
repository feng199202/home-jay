package com.tarena.netctoss.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware, RequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 用于保存session
	 */
	protected Map<String, Object> session;
	/**
	 * 用于保留request
	 */
	protected Map<String, Object> request;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

}
