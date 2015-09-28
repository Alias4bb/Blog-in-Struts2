package com.myhomepage.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport implements ServletRequestAware {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private HttpServletRequest request;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String name=request.getParameter("username");
		String email=request.getParameter("email");
		String website=request.getParameter("website");

		int id=Integer.parseInt((String) session.getAttribute("u_id"));
		String sql="update blog_users set u_name='"+name+"',u_email='"+email+"',u_website='"+website+"' where u_id='"+id+"'";
		System.out.print(id);
		Db db=new Db();	
		db.doSelect(sql);
		int i=db.doUpdate1(sql);
		if(i!=0){//更新用户信息
	
		return SUCCESS;}else{
			return ERROR;
		}
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
       this.request=request;
	}
  
}
