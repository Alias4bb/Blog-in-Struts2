package com.myhomepage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class TagsAction extends ActionSupport implements 
ServletRequestAware  {

	/**
	 * 
	 */

	HttpServletRequest request;
	private static final long serialVersionUID = 1L;
	private String name;
	public String execute(){
		
		return SUCCESS;
	}
	public String tags() throws Exception{
		
		HttpSession session=request.getSession();
		name = ((name==null) ? "" : new String(name.trim().getBytes("ISO8859_1"),"UTF-8"));
		session.setAttribute("name", name);
		return SUCCESS;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
}
