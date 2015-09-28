package com.myhomepage.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class TagAddAction extends ActionSupport implements ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
    this.request=request;
	}
   public String add() throws Exception{
	   String tag=request.getParameter("tags");
	   Db db=new Db();
	   String sql="insert into blog_tags (t_name) values('"+tag+"')";
	   db.doSelect(sql);
	   if(db.doInsert1(sql)!=0){
	        return SUCCESS;
	    }else{
	    	return ERROR;
	    }}}
