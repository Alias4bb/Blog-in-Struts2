package com.myhomepage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogOutAction  extends ActionSupport implements 
ServletRequestAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
   public String execute(){//Çå³þsessionÍË³öµÇÂ¼
	   HttpSession session=request.getSession();
	    session.invalidate();
	
	   return SUCCESS;
   }

@Override
public void setServletRequest(HttpServletRequest request) {
	// TODO Auto-generated method stub
	this.request=request;
}
}
