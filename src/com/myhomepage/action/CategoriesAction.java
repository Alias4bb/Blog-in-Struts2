package com.myhomepage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class CategoriesAction extends ActionSupport implements 
ServletRequestAware {

	/**
	 * 
	 */

	HttpServletRequest request;
	private static final long serialVersionUID = 1L;
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String execute() throws Exception{
		HttpSession session=request.getSession();
		System.out.println(type);
    type = ((type==null) ? "" : new String(type.trim().getBytes("ISO8859_1"),"UTF-8"));
		session.setAttribute("type", type);
		System.out.println(type);
		return SUCCESS;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
}
