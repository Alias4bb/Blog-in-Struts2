package com.myhomepage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class PostsAction extends ActionSupport  implements 
ServletRequestAware {

	/**
	 * 
	 */
	HttpServletRequest request;
	private static final long serialVersionUID = 1L;
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
		HttpSession session=request.getSession();
		session.setAttribute("title_id", id);
		return SUCCESS;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request=request;
	}

}
